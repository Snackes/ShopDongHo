package ModelBean;

public class KhachHang {
	private int MaKH;
	private String HoTen;
	private String DiaChi;
	private int SDT;
	private String Email;
	private String TaiKhoan;
	private String MatKhau;
	private String PhanQuyen;
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
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public int getSDT() {
		return SDT;
	}
	public void setSDT(int sDT) {
		SDT = sDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getTaiKhoan() {
		return TaiKhoan;
	}
	public void setTaiKhoan(String taiKhoan) {
		TaiKhoan = taiKhoan;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getPhanQuyen() {
		return PhanQuyen;
	}
	public void setPhanQuyen(String phanQuyen) {
		PhanQuyen = phanQuyen;
	}
	public KhachHang(int maKH, String hoTen, String diaChi, int sDT, String email, String taiKhoan, String matKhau,
			String phanQuyen) {
		super();
		MaKH = maKH;
		HoTen = hoTen;
		DiaChi = diaChi;
		SDT = sDT;
		Email = email;
		TaiKhoan = taiKhoan;
		MatKhau = matKhau;
		PhanQuyen = phanQuyen;
	}
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	

}
