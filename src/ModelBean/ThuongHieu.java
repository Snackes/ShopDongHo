package ModelBean;

public class ThuongHieu {
	private int MaTH;
	private String TenThuongHieu;
	private String GhiChu;
	public int getMaTH() {
		return MaTH;
	}
	public void setMaTH(int maTH) {
		MaTH = maTH;
	}
	public String getTenThuongHieu() {
		return TenThuongHieu;
	}
	public void setTenThuongHieu(String tenThuongHieu) {
		TenThuongHieu = tenThuongHieu;
	}
	public String getGhiChu() {
		return GhiChu;
	}
	public void setGhiChu(String ghiChu) {
		GhiChu = ghiChu;
	}
	public ThuongHieu(int maTH, String tenThuongHieu, String ghiChu) {
		super();
		MaTH = maTH;
		TenThuongHieu = tenThuongHieu;
		GhiChu = ghiChu;
	}
	public ThuongHieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
