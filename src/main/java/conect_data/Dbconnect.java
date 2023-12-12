package conect_data;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import controller.Chucnang;
import dao.Get_data;
import model.Baiviet;
import model.Hangxe;
import model.Lopxe;
import model.TenFileAnh;

public class Dbconnect {
	private static String DB_URL = "jdbc:mysql://b8e74dabf6f9df:71bb9ef7@us-cdbr-east-06.cleardb.net/heroku_024f8ecb5c15b8a?reconnect=true";
	private static String USER_NAME = "b8e74dabf6f9df";
	private static String PASSWORD = "71bb9ef7";

	// private static String DB_URL = "jdbc:mysql://localhost:3306/?user=root";
	// private static String USER_NAME = "root";
	// private static String PASSWORD = "4c5v5z7l";

	public static Connection getConnect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

	public ArrayList<Lopxe> Data_Lop_All() throws IOException {

		ArrayList<Lopxe> list = new ArrayList<>();

		String urlString = "https://raw.githubusercontent.com/haitran116/data_lop/main/data_lop_all.csv";
		URL url = new URL(urlString);
		URLConnection connection = url.openConnection();

		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			if (inputLine != "") {
				String ch = inputLine.split(",")[0].split("\"")[1];
				if (!ch.equals("mã sp")) {
					Lopxe la = new Lopxe();
					la.setMasp(getMasp(inputLine));
					la.setSize(getSize(inputLine));
					la.setTensanpham(getTensp(inputLine));
					la.setMagai(getMagai(inputLine));
					la.setVanh(getVanh(inputLine));
					la.setThuonghieu(getThuonghieu(inputLine));
					la.setDonvi(getDonvi(inputLine));
					la.setGiaban(Integer.parseInt(getGiaban(inputLine)));
					la.setSoluong(Integer.parseInt(getSoluong(inputLine)));
					la.setTinhtrang(getTinhTrang(inputLine));
					la.setRate(Integer.parseInt(getRate(inputLine)));
					la.setXuatxu(getXuatxu(inputLine));
					la.setNamefolder(getNamefolder(inputLine));

					list.add(la);
				}
			}
		}

		in.close();

		return list;
	}

	public Baiviet Lay_Bai_Viet(String thuonghieu, String magai) throws IOException {
		Baiviet bv = new Baiviet();
		String th = thuonghieu.toLowerCase().trim();
		magai = magai.trim();

		try {
			URL url = new URL("https://raw.githubusercontent.com/haitran116/data_lop/main/baiviet_json.json");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");

			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder response = new StringBuilder();
			String line;

			while ((line = reader.readLine()) != null) {
				response.append(line);
			}

			reader.close();
			connection.disconnect();

			String jsonText = response.toString();

			JSONParser parser = new JSONParser();

			// Parse the JSON file
			Object obj = parser.parse(jsonText);

			// đọc json array
			if (obj instanceof JSONArray) {
				JSONArray jsonArray = (JSONArray) obj;
				// System.out.println(jsonArray.get(0));
				for (Object element : jsonArray) {
					JSONObject jsonObject = (JSONObject) element;
					if (jsonObject.get("thuonghieu").equals(th) && jsonObject.get("magai").equals(magai)) {
						//System.out.println(jsonObject.get("dacdiem"));
						Baiviet baiviet = new Baiviet();
						baiviet.setThuonghieu((String) jsonObject.get("thuonghieu"));
						baiviet.setMagai((String) jsonObject.get("magai"));
						baiviet.setTomtat((String) jsonObject.get("tomtat"));
						baiviet.setDacdiem((String) jsonObject.get("dacdiem"));
						baiviet.setTongquan((String) jsonObject.get("tongquan"));
						return baiviet;
					}
				}
			}
		} catch (Exception e) {
			System.out.println("loi");
		}

		return bv;
	}

	public ArrayList<Hangxe> Data_Hang_Xe_Size_Lop() throws IOException {
		ArrayList<Hangxe> list = new ArrayList<>();
		try {
			URL url = new URL("https://raw.githubusercontent.com/haitran116/data_lop/main/hang_xe_size.json");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");

			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder response = new StringBuilder();
			String line;

			while ((line = reader.readLine()) != null) {
				response.append(line);
			}

			reader.close();
			connection.disconnect();

			String jsonText = response.toString();

			JSONParser parser = new JSONParser();

			// Parse the JSON file
			Object obj = parser.parse(jsonText);

			// đọc json array
			if (obj instanceof JSONArray) {
				JSONArray jsonArray = (JSONArray) obj;
				// System.out.println(jsonArray.get(0));
				for (Object element : jsonArray) {
					JSONObject jsonObject = (JSONObject) element;
					//System.out.println((String) jsonObject.get("tenxe"));
					Hangxe hangxe = new Hangxe();
					hangxe.setMaxe(Integer.parseInt(jsonObject.get("maxe").toString()));
					hangxe.setTenxe((String) jsonObject.get("tenxe"));
					hangxe.setDong((String) jsonObject.get("dong"));
					hangxe.setHang((String) jsonObject.get("hang"));
					hangxe.setSize((String) jsonObject.get("size"));
					hangxe.setCuthe((String) jsonObject.get("cuthe"));

					list.add(hangxe);

					//System.out.println(jsonObject.get("cuthe"));

				}
			}
		} catch (Exception e) {
			System.out.println("loi");
		}

		return list;
	}

	public ArrayList<TenFileAnh> List_Name_File() throws IOException {
		ArrayList<TenFileAnh> list = new ArrayList<>();

		String urlString = "https://raw.githubusercontent.com/haitran116/data_lop/main/file_name_image.csv";
		URL url = new URL(urlString);
		URLConnection connection = url.openConnection();

		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			if (inputLine != "") {
				String ch = inputLine.split(",")[0].split("\"")[1];
				if (!ch.equals("name image")) {
					TenFileAnh la = new TenFileAnh();
					la.setTenfileanh(getTenFile_(inputLine));
					la.setTenFolder(getTenFolder_(inputLine));
					list.add(la);
				}
			}
		}

		in.close();

		return list;
	}

	public ArrayList<Lopxe> Data_leao() throws IOException {
		Get_data gdt = new Get_data();
		ArrayList<Lopxe> list = new ArrayList<>();

		String urlString = "https://raw.githubusercontent.com/haitran116/data_lop/main/data_leao.csv";
		URL url = new URL(urlString);
		URLConnection connection = url.openConnection();

		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			if (inputLine != "") {
				String ch = inputLine.split(",")[0].split("\"")[1];
				if (!ch.equals("masp")) {
					Lopxe la = new Lopxe();
					la.setMasp(getMasp(inputLine));
					la.setSize(getSize(inputLine));
					la.setTensanpham(gdt.Lay_ten_sp_chuan(getSize(inputLine), getTensp(inputLine)));
					la.setMagai(getMagai(inputLine));
					la.setVanh(getVanh(inputLine));
					la.setThuonghieu(getThuonghieu(inputLine));
					la.setDonvi(getDonvi(inputLine));
					la.setGiaban(Integer.parseInt(getGiaban(inputLine)));
					la.setNamefolder(getNamefolder(inputLine));

					list.add(la);
				}
			}
		}

		in.close();

		return list;
	}

	public ArrayList<Lopxe> Data_Atlas() throws IOException {
		Get_data gdt = new Get_data();
		ArrayList<Lopxe> list = new ArrayList<>();

		String urlString = "https://raw.githubusercontent.com/haitran116/data_lop/main/data_atlas.csv";
		URL url = new URL(urlString);
		URLConnection connection = url.openConnection();

		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			if (inputLine != "") {
				String ch = inputLine.split(",")[0].split("\"")[1];
				if (!ch.equals("masp")) {
					Lopxe la = new Lopxe();
					la.setMasp(getMasp(inputLine));
					la.setSize(getSize(inputLine));
					la.setTensanpham(gdt.Lay_ten_sp_chuan(getSize(inputLine), getTensp(inputLine)));
					la.setMagai(getMagai(inputLine));
					la.setVanh(getVanh(inputLine));
					la.setThuonghieu(getThuonghieu(inputLine));
					la.setDonvi(getDonvi(inputLine));
					la.setGiaban(Integer.parseInt(getGiaban(inputLine)));
					la.setNamefolder(getNamefolder(inputLine));

					list.add(la);
				}
			}
		}

		in.close();

		return list;
	}

	public String getMasp(String ip) {
		return ip.split(",")[0].split("\"")[1];
	}

	public String getSize(String ip) {
		return ip.split(",")[1].split("\"")[1];
	}

	public String getTensp(String ip) {
		return ip.split(",")[2].split("\"")[1].trim();
	}

	public String getMagai(String ip) {
		return ip.split(",")[3].split("\"")[1];
	}

	public String getVanh(String ip) {
		return ip.split(",")[4].split("\"")[1];
	}

	public String getThuonghieu(String ip) {
		return ip.split(",")[5].split("\"")[1];
	}

	public String getDonvi(String ip) {
		return ip.split(",")[6].split("\"")[1];
	}

	public String getGiaban(String ip) {
		return ip.split(",")[7].split("\"")[1];
	}

	public String getSoluong(String ip) {
		return ip.split(",")[8].split("\"")[1];
	}

	public String getTinhTrang(String ip) {
		return ip.split(",")[9].split("\"")[1];
	}

	public String getRate(String ip) {
		return ip.split(",")[10].split("\"")[1];
	}

	public String getXuatxu(String ip) {
		return ip.split(",")[11].split("\"")[1];
	}

	public String getNamefolder(String ip) {
		return ip.split(",")[12].split("\"")[1].trim();
	}

//--------------------------------------------------------------
	public String getThuonghieu_baiviet(String ip) {
		return ip.split(",")[0].split("\"")[1];
	}

	public String getMagai_baiviet(String ip) {
		return ip.split(",")[1].split("\"")[1];
	}

	public String getTomtat_baiviet(String ip) {
		return ip.split(",")[2].split("\"")[1];
	}

	public String getDacdiem_baiviet(String ip) {
		return ip.split(",")[3].split("\"")[1];
	}

	public String getTongquan_baiviet(String ip) {
		return ip.split(",")[4].split("\"")[1];
	}
//-----------------------------------------------------------

	public String getTenFile_(String ip) {
		return ip.split(",")[0].split("\"")[1];
	}

	public String getTenFolder_(String ip) {
		return ip.split(",")[1].split("\"")[1];
	}

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();

		ArrayList<String> list = new ArrayList<>();

		for(Hangxe h: db.Data_Hang_Xe_Size_Lop()) {
			//list.add(h.getHang());
		}

		for(Lopxe l: db.Data_Lop_All()) {
			System.out.println(l.getMasp() + "|" + l.getNamefolder());
		}

		/*for(String a: cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list))) {
			System.out.println(a);
		}*/

		// System.out.println(db.getSTT("\"22\",\"215/60R16 LION SPORT HP 95H LA\",\"
		// LION SPORT HP\",\"R16\",\"LEAO\",\"Chiếc\",\"1570000\",\"LION SPORT HP\""));
		int dem = 1;
		for (TenFileAnh s : db.List_Name_File()) {
			// System.out.println(s.getTenFolder()+"/"+s.getTenfileanh());
			// dem++;
		}



		// db.Lay_Bai_Viet();
		//Baiviet bc = db.Lay_Bai_Viet("LEAO", "LION SPORT AT-2");

		//System.out.println(bc.getThuonghieu() +"/" + bc.getMagai());

		// for(Baiviet b: db.Lay_Bai_Viet()) {
		// System.out.println(b.getTongquan());
		// }

		// System.out.println(dem);
		// Connection a = db.getConnect();
		// System.out.println(Dbconnect.getConnect());

		/*
		 * try { URL url = new URL(
		 * "https://raw.githubusercontent.com/haitran116/data_lop/main/baiviet_json.json"
		 * ); // Thay thế URL bằng đường dẫn tới tệp JSON trên trang web
		 * HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		 * connection.setRequestMethod("GET");
		 *
		 * BufferedReader reader = new BufferedReader(new
		 * InputStreamReader(connection.getInputStream())); StringBuilder response = new
		 * StringBuilder(); String line;
		 *
		 * while ((line = reader.readLine()) != null) { response.append(line); }
		 *
		 * reader.close(); connection.disconnect();
		 *
		 * String jsonText = response.toString();
		 *
		 * JSONParser parser = new JSONParser();
		 *
		 * // Parse the JSON file Object obj = parser.parse(jsonText);
		 *
		 * if (obj instanceof JSONArray) { JSONArray jsonArray = (JSONArray) obj;
		 * //System.out.println(jsonArray.get(0)); for (Object element : jsonArray) {
		 * JSONObject jsonObject = (JSONObject) element;
		 *
		 * if(jsonObject.get("thuonghieu").equals("leao")) {
		 * System.out.println(jsonObject.get("magai")); } } } }catch (Exception e) {
		 * System.out.println("loi"); }
		 */

		//System.out.println(db.Lay_Bai_Viet("MICHELIN", "Energy XM 2+").getTomtat());

		/*
		 * ArrayList<TenFileAnh> t = db.List_Name_File(); for(TenFileAnh f: t) {
		 * System.out.println(f.getTenFolder()); }
		 */
	}
}
