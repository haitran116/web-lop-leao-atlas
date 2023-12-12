package model;

public class Baiviet {

	String thuonghieu, magai, tomtat, dacdiem, tongquan;

	public Baiviet() {
		thuonghieu = "";
		magai = "";
		tomtat = "Chưa có nội dung";
		dacdiem = "Chưa có nội dung";
		tongquan = "Chưa có nội dung";
	}

	public String getThuonghieu() {
		return thuonghieu;
	}

	public void setThuonghieu(String thuonghieu) {
		this.thuonghieu = thuonghieu;
	}

	public String getMagai() {
		return magai;
	}

	public void setMagai(String magai) {
		this.magai = magai;
	}

	public String getTomtat() {
		return tomtat;
	}

	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}

	public String getDacdiem() {
		return dacdiem;
	}

	public void setDacdiem(String dacdiem) {
		this.dacdiem = dacdiem;
	}

	public String getTongquan() {
		return tongquan;
	}

	public void setTongquan(String tongquan) {
		this.tongquan = tongquan;
	}

}
