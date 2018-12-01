package ModelBean;

public class ChiTietHDNhap {
	private int MaDH;
	private int MaSP;
	private float GiaVon;
	private int SoLuongNhap;
	public int getMaDH() {
		return MaDH;
	}
	public void setMaDH(int maDH) {
		MaDH = maDH;
	}
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public float getGiaVon() {
		return GiaVon;
	}
	public void setGiaVon(float giaVon) {
		GiaVon = giaVon;
	}
	public int getSoLuongNhap() {
		return SoLuongNhap;
	}
	public void setSoLuongNhap(int soLuongNhap) {
		SoLuongNhap = soLuongNhap;
	}
	public ChiTietHDNhap(int maDH, int maSP, float giaVon, int soLuongNhap) {
		super();
		MaDH = maDH;
		MaSP = maSP;
		GiaVon = giaVon;
		SoLuongNhap = soLuongNhap;
	}
	public ChiTietHDNhap() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
