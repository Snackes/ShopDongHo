package ModelBean;

import java.io.Serializable;

public class Item implements Serializable  {
	private int id;
	private SanPham sp;
	private int SoLuong;
	private double GiaBan;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	public double getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(double giaBan) {
		GiaBan = giaBan;
	}
	public Item(int id, SanPham sp, int soLuong, double giaBan) {
		super();
		this.id = id;
		this.sp = sp;
		SoLuong = soLuong;
		GiaBan = giaBan;
	}
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
