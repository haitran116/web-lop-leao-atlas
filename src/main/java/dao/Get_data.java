package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conect_data.Dbconnect;
import controller.Chucnang;
import model.Lopxe;

public class Get_data {

	public ArrayList<String> Get_Vanh() throws IOException {
		ArrayList<String> list = new ArrayList<>();

		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();
		ArrayList<Lopxe> dtlop = db.Data_Lop_All();

		ArrayList<String> vanh_raw = new ArrayList<>();
		for (Lopxe vr : dtlop) {
			vanh_raw.add(vr.getVanh());
		}

		list = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(vanh_raw));

		return list;
	}

	public ArrayList<String> Get_Size() throws IOException {
		ArrayList<String> list = new ArrayList<>();

		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();
		ArrayList<Lopxe> dtlop = db.Data_Lop_All();

		ArrayList<String> size_raw = new ArrayList<>();
		for (Lopxe lop : dtlop) {
			size_raw.add(lop.getSize());
		}

		list = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(size_raw));

		return list;
	}

	public ArrayList<Lopxe> Size_Search(String size_input) throws IOException {
		ArrayList<Lopxe> list = new ArrayList<>();

		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();
		ArrayList<Lopxe> dtlop = db.Data_Lop_All();

		String size_khach_chuan = cn.Chuan_Hoa_Size(size_input);

		boolean check = false;
		for (Lopxe lop : dtlop) {
			String Size_Goc = cn.Chuan_Hoa_Size(lop.getSize());
			if (size_khach_chuan.split(Size_Goc).length > 1 || size_khach_chuan.equals(Size_Goc)) {
				Lopxe l = new Lopxe();
				l.setMasp(lop.getMasp());
				l.setSize(lop.getSize());
				l.setTensanpham(lop.getTensanpham());
				l.setMagai(lop.getMagai());
				l.setVanh(lop.getVanh());
				l.setThuonghieu(lop.getThuonghieu());
				l.setDonvi(lop.getDonvi());
				l.setGiaban(lop.getGiaban());
				l.setSoluong(lop.getSoluong());
				l.setTinhtrang(lop.getTinhtrang());
				l.setRate(lop.getRate());
				l.setXuatxu(lop.getXuatxu());
				l.setNamefolder(lop.getNamefolder());
				list.add(l);
				check = true;
			}
		}

		if (!check) {
			return null;
		}

		return list;
	}

	public Lopxe Masp_Search(String Masp_input) throws IOException {
		Dbconnect db = new Dbconnect();

		ArrayList<Lopxe> dtlop = db.Data_Lop_All();

		for (Lopxe lop : dtlop) {
			if (lop.getMasp().equals(Masp_input)) {
				return lop;
			}
		}
		return null;
	}
	
	public Lopxe url_Search(String url_input) throws IOException {
		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();
		
		ArrayList<Lopxe> dtlop = db.Data_Lop_All();

		for (Lopxe lop : dtlop) {
			String hang = lop.getThuonghieu();
			String size = cn.url_size_chuan(lop.getSize());
			String tensp = cn.url_tensp_chuan(lop.getTensanpham());
			
			String tensp_url_data = cn.url_san_pham(hang, size, tensp).replace("+", " ");
			//System.out.println(tensp_url_data+"|"+url_input);
			if (tensp_url_data.equals(url_input)) {
				return lop;
			}
		}
		return null;
	}

	// ------------------SQL----------------------------------------------
	public ArrayList<Lopxe> Get_Data_All() throws SQLException, IOException {

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement("SELECT * FROM heroku_024f8ecb5c15b8a.lopxe;");
		ResultSet rs = stm.executeQuery();

		ArrayList<Lopxe> list = new ArrayList<>();
		while (rs.next()) {
			Lopxe lop = new Lopxe();
			lop.setMasp(rs.getString(1));
			lop.setSize(rs.getString(2));
			lop.setTensanpham(rs.getString(3));
			lop.setMagai(rs.getString(4));
			lop.setVanh(rs.getString(5));
			lop.setThuonghieu(rs.getString(6));
			lop.setDonvi(rs.getString(7));
			lop.setGiaban(rs.getInt(8));
			lop.setNamefolder(rs.getString(9));
			list.add(lop);
		}

		// conn.close();

		return list;

	}

	public ArrayList<Lopxe> Get_Data_Leao() throws SQLException, IOException {
		/*
		 * Connection conn = Dbconnect.getConnect(); PreparedStatement stm =
		 * conn.prepareStatement("SELECT * FROM heroku_024f8ecb5c15b8a.leao;");
		 * ResultSet rs = stm.executeQuery();
		 *
		 * ArrayList<Lopxe> list = new ArrayList<>(); while(rs.next()) { Lopxe lop = new
		 * Lopxe(); lop.setMasp(rs.getString(1)); lop.setSize(rs.getString(2));
		 * lop.setTensanpham(rs.getString(3)); lop.setMagai(rs.getString(4));
		 * lop.setVanh(rs.getString(5)); lop.setThuonghieu(rs.getString(6));
		 * lop.setDonvi(rs.getString(7)); lop.setGiaban(rs.getInt(8));
		 * lop.setNamefolder(rs.getString(9)); list.add(lop); }
		 *
		 * //conn.close();
		 */

		Dbconnect db = new Dbconnect();

		ArrayList<Lopxe> list = db.Data_leao();

		return list;

	}

	public ArrayList<Lopxe> Get_Data_Atlas() throws SQLException, IOException {
		/*
		 * Connection conn = Dbconnect.getConnect(); PreparedStatement stm =
		 * conn.prepareStatement("SELECT * FROM heroku_024f8ecb5c15b8a.atlas;");
		 * ResultSet rs = stm.executeQuery();
		 *
		 * ArrayList<Lopxe> list = new ArrayList<>(); while(rs.next()) { Lopxe lop = new
		 * Lopxe(); lop.setMasp(rs.getString(1)); lop.setSize(rs.getString(2));
		 * lop.setTensanpham(rs.getString(3)); lop.setMagai(rs.getString(4));
		 * lop.setVanh(rs.getString(5)); lop.setThuonghieu(rs.getString(6));
		 * lop.setDonvi(rs.getString(7)); lop.setGiaban(rs.getInt(8));
		 * lop.setNamefolder(rs.getString(9)); list.add(lop); }
		 *
		 * //conn.close();
		 */
		Dbconnect db = new Dbconnect();

		ArrayList<Lopxe> list = db.Data_Atlas();

		return list;

	}

	public ArrayList<Lopxe> Query_sql_data(String sql) throws SQLException {
		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		ArrayList<Lopxe> list = new ArrayList<>();
		while (rs.next()) {
			Lopxe lop = new Lopxe();
			lop.setMasp(rs.getString(1));
			lop.setSize(rs.getString(2));
			lop.setTensanpham(rs.getString(3));
			lop.setMagai(rs.getString(4));
			lop.setVanh(rs.getString(5));
			lop.setThuonghieu(rs.getString(6));
			lop.setDonvi(rs.getString(7));
			lop.setGiaban(rs.getInt(8));
			lop.setNamefolder(rs.getString(9));
			list.add(lop);
		}

		// conn.close();
		return list;
	}

	public ArrayList<String> Query_sql_getVanh() throws SQLException {

		// String sql = "SELECT DISTINCT vanh FROM heroku_024f8ecb5c15b8a.lopxe ORDER BY
		// vanh ASC";
		String sql = "SELECT vanh FROM heroku_024f8ecb5c15b8a.lopxe";

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		ArrayList<String> list = new ArrayList<>();
		while (rs.next()) {
			list.add(rs.getString(1));
		}

		// conn.close();
		return list;
	}

	public ArrayList<String> Query_sql_getSize() throws SQLException {

		// String sql = "SELECT DISTINCT size FROM heroku_024f8ecb5c15b8a.lopxe ORDER BY
		// size ASC";
		String sql = "SELECT size FROM heroku_024f8ecb5c15b8a.lopxe";

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		ArrayList<String> list = new ArrayList<>();
		while (rs.next()) {
			list.add(rs.getString(1));
		}

		// conn.close();
		return list;
	}

	public ArrayList<Lopxe> Query_sql_Size_Search(String size) throws SQLException {

		String sql = "SELECT * FROM heroku_024f8ecb5c15b8a.lopxe where size like '%" + size + "%'";

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		ArrayList<Lopxe> list = new ArrayList<>();
		while (rs.next()) {
			Lopxe lop = new Lopxe();
			lop.setMasp(rs.getString(1));
			lop.setSize(rs.getString(2));
			lop.setTensanpham(rs.getString(3));
			lop.setMagai(rs.getString(4));
			lop.setVanh(rs.getString(5));
			lop.setThuonghieu(rs.getString(6));
			lop.setDonvi(rs.getString(7));
			lop.setGiaban(rs.getInt(8));
			lop.setNamefolder(rs.getString(9));
			list.add(lop);
		}

		// conn.close();
		return list;
	}

	public Lopxe Query_sql_Masp_Search(String masp) throws SQLException {

		String sql = "SELECT * FROM heroku_024f8ecb5c15b8a.lopxe where masp = '" + masp + "'";

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		Lopxe lop = new Lopxe();
		while (rs.next()) {
			lop.setMasp(rs.getString(1));
			lop.setSize(rs.getString(2));
			lop.setTensanpham(rs.getString(3));
			lop.setMagai(rs.getString(4));
			lop.setVanh(rs.getString(5));
			lop.setThuonghieu(rs.getString(6));
			lop.setDonvi(rs.getString(7));
			lop.setGiaban(rs.getInt(8));
			lop.setNamefolder(rs.getString(9));
		}

		// conn.close();
		return lop;
	}

	public int Query_sql_Max_MaKhachHang() throws SQLException {

		// String sql = "SELECT DISTINCT vanh FROM heroku_024f8ecb5c15b8a.lopxe ORDER BY
		// vanh ASC";
		String sql = "SELECT max(makh) FROM heroku_024f8ecb5c15b8a.dat_hang";

		Connection conn = Dbconnect.getConnect();
		PreparedStatement stm = conn.prepareStatement(sql);
		ResultSet rs = stm.executeQuery();

		while (rs.next()) {
			return Integer.parseInt(rs.getString(1));
		}

		// conn.close();
		return 0;
	}

	// --------------------------------------------------------------------------

	public int soluong_lop(ArrayList<Lopxe> l) {
		return l.size();
	}

	public String Lay_ten_sp_chuan(String size, String ip) {
		return ip.split(size)[1].trim();
	}

	public String Lay_size_lop(String ip) {
		return ip.split(" ")[0];
	}

	public static void main(String[] args) throws IOException, SQLException {
		// TODO Auto-generated method stub
		Get_data g = new Get_data();
		//int dem = 0;
		 //for (Lopxe nv : g.Get_Data_All()) {
			 //System.out.println(nv.getNamefolder());
		 //}
		// ArrayList<Lopxe> a = g.Get_Data_Leao();
		// System.out.println(dem);

		// String sql_size = "SELECT DISTINCT size FROM heroku_024f8ecb5c15b8a.lopxe
		// ORDER BY size ASC";
		/*
		 * ArrayList<Lopxe> lop = g.
		 * Query_sql_data("SELECT * FROM heroku_024f8ecb5c15b8a.leao where size = \"255/60R18\";"
		 * );
		 *
		 * for(Lopxe lo: lop) { System.out.println(lo.getTensanpham()); }
		 */

		// ArrayList<Lopxe> size = g.Query_sql_Size_Search("175/65R14");
		ArrayList<String> vanh = g.Get_Vanh();
		for (String s : vanh) {
			//System.out.println(s);
		}

		// System.out.println(g.Query_sql_Max_MaKhachHang());
	}

}
