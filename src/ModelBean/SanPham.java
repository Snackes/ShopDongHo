package ModelBean;
public class SanPham {

	private int MaSP;
	private String TenSp;
	private double GiaVon;
	private double GiaBan;
	private int MaTH;
	private String KieuMay;
	private String GioiTinhSuDung;
	private String KichCo;
	private String ChatLieuVo;
	private String ChatLieuKinh;	
	private String DoChiuNuoc;
	private String BaoHanh;
	private int SoLuongHienTai;
	private int Sale;
	private String GhiChu;
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public String getTenSp() {
		return TenSp;
	}
	public void setTenSp(String tenSp) {
		TenSp = tenSp;
	}
	public double getGiaVon() {
		return GiaVon;
	}
	public void setGiaVon(double giaVon) {
		GiaVon = giaVon;
	}
	public double getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(double giaBan) {
		GiaBan = giaBan;
	}
	public int getMaTH() {
		return MaTH;
	}
	public void setMaTH(int maTH) {
		MaTH = maTH;
	}
	public String getKieuMay() {
		return KieuMay;
	}
	public void setKieuMay(String kieuMay) {
		KieuMay = kieuMay;
	}
	public String getGioiTinhSuDung() {
		return GioiTinhSuDung;
	}
	public void setGioiTinhSuDung(String gioiTinhSuDung) {
		GioiTinhSuDung = gioiTinhSuDung;
	}
	public String getKichCo() {
		return KichCo;
	}
	public void setKichCo(String kichCo) {
		KichCo = kichCo;
	}
	public String getChatLieuVo() {
		return ChatLieuVo;
	}
	public void setChatLieuVo(String chatLieuVo) {
		ChatLieuVo = chatLieuVo;
	}
	public String getChatLieuKinh() {
		return ChatLieuKinh;
	}
	public void setChatLieuKinh(String chatLieuKinh) {
		ChatLieuKinh = chatLieuKinh;
	}
	public String getDoChiuNuoc() {
		return DoChiuNuoc;
	}
	public void setDoChiuNuoc(String doChiuNuoc) {
		DoChiuNuoc = doChiuNuoc;
	}
	public String getBaoHanh() {
		return BaoHanh;
	}
	public void setBaoHanh(String baoHanh) {
		BaoHanh = baoHanh;
	}
	public int getSoLuongHienTai() {
		return SoLuongHienTai;
	}
	public void setSoLuongHienTai(int soLuongHienTai) {
		SoLuongHienTai = soLuongHienTai;
	}
	public int getSale() {
		return Sale;
	}
	public void setSale(int sale) {
		Sale = sale;
	}
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	public SanPham(int maSP, String tenSp, double giaVon, double giaBan, int maTH, String kieuMay,
			String gioiTinhSuDung, String kichCo, String chatLieuVo, String chatLieuKinh, String doChiuNuoc,
			String baoHanh, int soLuongHienTai, int sale, String ghiChu) {
		super();
		MaSP = maSP;
		TenSp = tenSp;
		GiaVon = giaVon;
		GiaBan = giaBan;
		MaTH = maTH;
		KieuMay = kieuMay;
		GioiTinhSuDung = gioiTinhSuDung;
		KichCo = kichCo;
		ChatLieuVo = chatLieuVo;
		ChatLieuKinh = chatLieuKinh;
		DoChiuNuoc = doChiuNuoc;
		BaoHanh = baoHanh;
		SoLuongHienTai = soLuongHienTai;
		Sale = sale;
		GhiChu = ghiChu;
	}
	public SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
