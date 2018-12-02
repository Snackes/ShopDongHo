package ModelBean;

import java.util.Date;

public class HoaDonNhap {
	private int MaDH;
	private Date NgayNhap;
	private float TongTien;
	public int getMaDH() {
		return MaDH;
	}
	public void setMaDH(int maDH) {
		MaDH = maDH;
	}
	public Date getNgayNhap() {
		return NgayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		NgayNhap = ngayNhap;
	}
	public float getTongTien() {
		return TongTien;
	}
	public void setTongTien(float tongTien) {
		TongTien = tongTien;
	}
	public HoaDonNhap(int maDH, Date ngayNhap, float tongTien) {
		super();
		MaDH = maDH;
		NgayNhap = ngayNhap;
		TongTien = tongTien;
	}
	public HoaDonNhap() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
