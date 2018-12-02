package ModelBean;

import java.util.Date;

public class HoaDonBan {
	private int MaDH;
	private Date NgayBan;
	private float TongTien;
	private int TrangThai;
	private int MaKH;
	private String HoTen;
	private int SDT;
	private String DiaChi;
	public int getMaDH() {
		return MaDH;
	}
	public void setMaDH(int maDH) {
		MaDH = maDH;
	}
	public Date getNgayBan() {
		return NgayBan;
	}
	public void setNgayBan(Date ngayBan) {
		NgayBan = ngayBan;
	}
	public float getTongTien() {
		return TongTien;
	}
	public void setTongTien(float tongTien) {
		TongTien = tongTien;
	}
	public int getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(int trangThai) {
		TrangThai = trangThai;
	}
	public int getMaKH() {
		return MaKH;
	}
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public int getSDT() {
		return SDT;
	}
	public void setSDT(int sDT) {
		SDT = sDT;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public HoaDonBan(int maDH, Date ngayBan, float tongTien, int trangThai, int maKH, String hoTen, int sDT,
			String diaChi) {
		super();
		MaDH = maDH;
		NgayBan = ngayBan;
		TongTien = tongTien;
		TrangThai = trangThai;
		MaKH = maKH;
		HoTen = hoTen;
		SDT = sDT;
		DiaChi = diaChi;
	}
	public HoaDonBan() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
