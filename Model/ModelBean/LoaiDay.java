package ModelBean;

public class LoaiDay {
	private int MaSP;
	private String LoaiDay;
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public String getLoaiDay() {
		return LoaiDay;
	}
	public void setLoaiDay(String loaiDay) {
		LoaiDay = loaiDay;
	}
	public LoaiDay(int maSP, String loaiDay) {
		super();
		MaSP = maSP;
		LoaiDay = loaiDay;
	}
	public LoaiDay() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
