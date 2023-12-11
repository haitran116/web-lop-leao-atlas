package model;

public class Cart {

	String size, tensp, namefolderimage;
	int gia, soluong, thanhtien;

	public String getNamefolderimage() {
		return namefolderimage;
	}

	public void setNamefolderimage(String namefolderimage) {
		this.namefolderimage = namefolderimage;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int soluong, int gia) {
		this.thanhtien = soluong * gia;
	}

}
