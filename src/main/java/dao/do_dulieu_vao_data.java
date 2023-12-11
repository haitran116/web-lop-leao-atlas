package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.ZonedDateTime;

import conect_data.Dbconnect;

public class do_dulieu_vao_data {

	public void dodulieuvaodatabase_leao(String masp, String size, String tensp, String magai, String vanh,
			String thuonghieu, String donvi, int giaban, String imagenamefolder) throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`leao` (`masp`, `size`, `tensanpham`, `magai`, `vanh`, `thuonghieu`, `donvi`, `giaban`, `imagenamefolder`) "
				+ "VALUES ('" + masp + "', '" + size + "', '" + tensp + "', '" + magai + "', '" + vanh + "', '"
				+ thuonghieu + "', '" + donvi + "', '" + giaban + "', '" + imagenamefolder + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public void dodulieuvaodatabase_atlas(String masp, String size, String tensp, String magai, String vanh,
			String thuonghieu, String donvi, int giaban, String imagenamefolder) throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`atlas` (`masp`, `size`, `tensanpham`, `magai`, `vanh`, `thuonghieu`, `donvi`, `giaban`, `imagenamefolder`) "
				+ "VALUES ('" + masp + "', '" + size + "', '" + tensp + "', '" + magai + "', '" + vanh + "', '"
				+ thuonghieu + "', '" + donvi + "', '" + giaban + "', '" + imagenamefolder + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public void dodulieuvaodatabase(String masp, String size, String tensp, String magai, String vanh,
			String thuonghieu, String donvi, int giaban, String imagenamefolder) throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`lopxe` (`masp`, `size`, `tensanpham`, `magai`, `vanh`, `thuonghieu`, `donvi`, `giaban`, `imagenamefolder`) "
				+ "VALUES ('" + masp + "', '" + size + "', '" + tensp + "', '" + magai + "', '" + vanh + "', '"
				+ thuonghieu + "', '" + donvi + "', '" + giaban + "', '" + imagenamefolder + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public void Sql_thong_tin_khach_dat_hang(int makhachhang, String tenkh, String email, String diachi,
			String sodienthoai, String ghichu, ZonedDateTime datetime) throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`thongtinkhachhang` (`makh`, `tenkhachhang`, `email`, `diachi`, `sodienthoai`, `ghichu`, `thoigian`) VALUES ('"
				+ makhachhang + "', '" + tenkh + "', '" + email + "', '" + diachi + "', '" + sodienthoai + "', '"
				+ ghichu + "', '" + datetime + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public void Sql_khach_hang_dat_hang(int makhachhang, String size, String tensanpham, int soluong)
			throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`dat_hang` (`makh`, `size`, `tensp`, `soluong`) VALUES ('"
				+ makhachhang + "', '" + size + "', '" + tensanpham + "', '" + soluong + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public void Sql_y_kien_khach_hang(String ten, String email, String sdt, String noidung, ZonedDateTime thoigian)
			throws SQLException {
		Connection con = Dbconnect.getConnect();
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`ykienkhachhang` (`ten`, `email`, `sdt`, `noidung`, `thoigian`) VALUES ('"
				+ ten + "', '" + email + "', '" + sdt + "', '" + noidung + "', '" + thoigian + "');";
		PreparedStatement stm = con.prepareStatement(sql);
		stm.executeUpdate();
		con.close();
	}

	public static void main(String[] args) throws IOException, SQLException, InterruptedException {
		// TODO Auto-generated method stub
		do_dulieu_vao_data do_ = new do_dulieu_vao_data();

		Dbconnect d = new Dbconnect();

		/*
		 * Get_data gdt = new Get_data(); for (Lopxe lop : d.Data_Atlas()) {
		 * do_.dodulieuvaodatabase(lop.getMasp().trim(), lop.getSize().trim(),
		 * gdt.Lay_ten_sp_chuan(gdt.Lay_size_lop(lop.getTensanpham()),
		 * lop.getTensanpham()).trim(), lop.getMagai().trim(), lop.getVanh().trim(),
		 * lop.getThuonghieu().trim(), lop.getDonvi().trim(), lop.getGiaban(),
		 * lop.getNamefolder().trim()); System.out.println(lop.getMasp()); }
		 *
		 * /* for (Lopxe string : gdt.Get_Data_Atlas()) {
		 * System.out.println(string.getSize()); }
		 */
		String sql = "INSERT INTO `heroku_024f8ecb5c15b8a`.`ykienkhachhang` (`ten`, `email`, `sdt`, `noidung`) VALUES ('hai', 'h@gmail.com', '123456', 'ok');";
		// do_.Sql_thong_tin_khach_dat_hang(111, "hải trần", "haitm.1106@gmail.com",
		// "tuyên quang", "123456", "nhớ giao hàng đúng hén.");
		// do_.Sql_khach_hang_dat_hang(123, "s333", "hhyys", 4);
	}

}
