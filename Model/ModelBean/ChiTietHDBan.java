package ModelBean;

public class ChiTietHDBan {
	private int MaDH;
	private int MaSP;
	private float GiaVon;
	private float GiaBan;
	private int SoLuongBan;
	private int Sale;
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
	public float getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(float giaBan) {
		GiaBan = giaBan;
	}
	public int getSoLuongBan() {
		return SoLuongBan;
	}
	public void setSoLuongBan(int soLuongBan) {
		SoLuongBan = soLuongBan;
	}
	public int getSale() {
		return Sale;
	}
	public void setSale(int sale) {
		Sale = sale;
	}
	public ChiTietHDBan(int maDH, int maSP, float giaVon, float giaBan, int soLuongBan, int sale) {
		super();
		MaDH = maDH;
		MaSP = maSP;
		GiaVon = giaVon;
		GiaBan = giaBan;
		SoLuongBan = soLuongBan;
		Sale = sale;
	}
	public ChiTietHDBan() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
