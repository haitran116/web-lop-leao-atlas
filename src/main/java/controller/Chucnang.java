package controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

import conect_data.Dbconnect;
import dao.Get_data;
import model.Lopxe;

public class Chucnang {

	public String chuan_hoa_gia(int ip) {
		NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.US);
		String formattedNumber = numberFormat.format(ip);
		return formattedNumber;
	}

	public int phannguyen(int sochia, int sobichia) {
		return sochia / sobichia;
	}

	public int phandu(int sochia, int sobichia) {
		return sochia % sobichia;
	}

	public int check_size_trung(String ip, ArrayList<Lopxe> lop) throws SQLException, IOException {

		String value = ip;
		ArrayList<Integer> foundIndexes = new ArrayList<>();

		for (int i = 0; i < lop.size(); i++) {
			String ss = lop.get(i).getSize();
			if (ss == value) {
				foundIndexes.add(i);
			}
		}

		if (foundIndexes.isEmpty()) {
			System.out.println("Không tìm thấy giá trị trùng nhau trong ArrayList.");
		} else {
			System.out.println("Các vị trí có giá trị trùng nhau là: " + foundIndexes);
			return 1;
		}

		return 0;
	}

	public ArrayList<String> loaiBoPhanTuTrungNhau(ArrayList<String> danhSach) {
		ArrayList<String> ketQua = new ArrayList<>();
		LinkedHashSet<String> phanTuKhongTrung = new LinkedHashSet<>(danhSach);

		ketQua.addAll(phanTuKhongTrung);

		return ketQua;
	}

	public ArrayList<String> sapXepTangDan(ArrayList<String> danhSach) {
		Collections.sort(danhSach, new Comparator<String>() {
			@Override
			public int compare(String s1, String s2) {
				return s1.compareTo(s2);
			}
		});
		return danhSach;
	}

	public ArrayList<Lopxe> SapXepAZ_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o1.getTensanpham().compareTo(o2.getTensanpham());
		    }
		});

		return lop;
	}

	public ArrayList<Lopxe> SapXepZA_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o2.getTensanpham().compareTo(o1.getTensanpham());
		    }
		});

		return lop;
	}

	public ArrayList<Lopxe> SapXepGiaTangDan_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o1.getGiaban() - o2.getGiaban();
		    }
		});

		return lop;
	}

	public ArrayList<Lopxe> SapXepGiaGiamDan_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o2.getGiaban() - o1.getGiaban();
		    }
		});

		return lop;
	}

	public ArrayList<Lopxe> SapXepTheoHangAZ_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o1.getThuonghieu().compareTo(o2.getThuonghieu());
		    }
		});

		return lop;
	}

	public ArrayList<Lopxe> SapXepTheoHangZA_Lopxe(ArrayList<Lopxe> lop){
		Collections.sort(lop, new Comparator<Lopxe>() {
		    @Override
		    public int compare(Lopxe o1, Lopxe o2) {
		        return o2.getThuonghieu().compareTo(o1.getThuonghieu());
		    }
		});

		return lop;
	}

	public List<String> getImageFiles(String folderPath) {
		List<String> imageFiles = new ArrayList<>();

		// Tạo đối tượng File đại diện cho thư mục
		File folder = new File(folderPath);

		// Lấy danh sách tất cả các file trong thư mục
		File[] files = folder.listFiles();

		// Lặp qua từng file để kiểm tra và lấy tên file ảnh
		for (File file : files) {
			// Kiểm tra xem file có phải là ảnh hay không
			if (isImageFile(file)) {
				// Lấy tên file và định dạng ảnh
				String fileName = file.getName();
				imageFiles.add(fileName);
			}
		}

		return imageFiles;
	}

	public static boolean isImageFile(File file) {
		String fileName = file.getName();

		// Kiểm tra đuôi file để xác định là file ảnh
		if (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")
				|| fileName.endsWith(".gif") || fileName.endsWith(".bmp") || fileName.endsWith(".webp")) {
			return true;
		}

		return false;
	}

	public String Rut_Gon_Ten_Lop(String tenlop) {
		int dodai = tenlop.length();

		if (dodai > 29) {
			return tenlop.substring(0, 27) + "...";
		} else {
			return tenlop;
		}
	}

	public String Chuan_Hoa_Size(String ip) {
		/// thực hiện bỏ dấu cách, chỉ lấy kí tự là số. vd: 123ab456 -> 123456
		return ip.toLowerCase().trim().replaceAll("\\s+", "").replaceAll("[^0-9]", "");
	}
	
	public String url_hang_chuan(String hang_input) {
		return hang_input.replace(" ", "-");
	}
	
	public String url_size_chuan(String size_goc) {
		if(size_goc.split("/").length > 1) {
			return size_goc.replace("/", "-");
		}
		else {
			return size_goc;
		}
	}
	
	public String url_tensp_chuan(String tensp_goc) {
		return tensp_goc.replace(" ", "-").replace("/", "-");
	}
	
	public String url_san_pham(String hang, String size, String tensp) {
		Chucnang cn = new Chucnang();
		String url = "lop-" + hang + "-" + cn.url_size_chuan(size) + "-" + cn.url_tensp_chuan(tensp);
		return url.toLowerCase();
	}

	public static void main(String[] args) throws SQLException, IOException {
		// TODO Auto-generated method stub
		Chucnang cn = new Chucnang();
		Get_data gdt = new Get_data();
		Dbconnect db = new Dbconnect();

		ArrayList<Lopxe> data = db.Data_Lop_All();
		for(Lopxe l: cn.SapXepGiaGiamDan_Lopxe(data)) {
			//System.err.println(l.getGiaban());
		}

		String a = "lop-leao-135-r14c-LION-SPORT-HP-95H-LA-ddd-bbb";
		String b = "";
		//System.out.println(a.split("-").length);
		int i=0;
		for(String n: a.split("-")) {
			if(i > 2) {
				b += n;
			}
			if(i > 2 && i < a.split("-").length-1) {
				b += "-";
			}
			i++;
		}

		System.out.println(b);

		// String c = "ag-gg";
		// System.out.println(c.split("-").length);

		// System.out.println(cn.Rut_Gon_Ten_Lop("AS380 82H ATLAS (HB) ECE -S PT OE
		// ưerwerewrer"));

		// ArrayList<Lopxe> size = gdt.Get_Data_Leao();

		ArrayList<String> danhSach = new ArrayList<>();

		// ArrayList<String> list_size = gdt.Query_sql_getSize();
		// ArrayList<String> list_vanh = gdt.Query_sql_getVanh();

		// ArrayList<String> ketQua =
		// cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_size));
		int dem = 0;
		// for (String phanTu : ketQua) {
		// System.out.println(phanTu);
		// dem++;
		// }
		// System.out.println(dem);

		/*
		 * ArrayList<Lopxe> data = db.Data_Lop_All(); ArrayList<String> listnamefd = new
		 * ArrayList<>(); for(Lopxe nfd: data) { listnamefd.add(nfd.getNamefolder()); }
		 *
		 *
		 *
		 * ArrayList<String> nameFolder =
		 * cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(listnamefd));
		 */
/*
		// Đường dẫn tới thư mục cha
		String parentDirectoryPath = "C:\\Users\\________________Hai_\\eclipse-workspace\\websitelopauto\\src\\main\\webapp\\assets\\img\\products\\anhlop";

		// Tạo đối tượng File từ đường dẫn thư mục cha
		File parentDirectory = new File(parentDirectoryPath);

		// Kiểm tra xem đường dẫn là thư mục và tồn tại
		if (parentDirectory.isDirectory() && parentDirectory.exists()) {
			// Lấy danh sách tên thư mục con
			String[] folders = parentDirectory.list();

			// In danh sách tên thư mục
			for (String folder : folders) {

				String folderPath = "C:\\Users\\________________Hai_\\eclipse-workspace\\websitelopauto\\src\\main\\webapp\\assets\\img\\products\\anhlop\\"
						+ folder + "\\";

				List<String> imageFiles;
				try {
					imageFiles = cn.getImageFiles(folderPath);

					// In ra danh sách tên file ảnh
					for (String fileName : imageFiles) {
						// System.out.println(fileName + "|" + folder);
						System.out.println(folder);
						//System.out.println(fileName);
					}

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else {
			System.out.println("Đường dẫn không phải là thư mục hoặc không tồn tại.");
		}*/

	}

}
