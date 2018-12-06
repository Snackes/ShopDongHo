package ModelBean;

import java.io.Serializable;
import java.util.List;

import ModelService.XuLiGioHang;
import ModelService.XuLiSanPham;

public class Cart implements Serializable{
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int MaSP;
	private String TenSP;
	private String HinhAnh1;
	private double GiaVon;
	private double GiaBan;
	private int SoLuong;
	private double ThanhTien;
	private Integer sale;
	public Integer getSale() {
		return sale;
	}
	public void setSale(Integer sale) {
		this.sale = sale;
	}
	public int getMaSP() {
		return MaSP;
	}
	public double getGiaVon() {
		return GiaVon;
	}
	public void setGiaVon(double giaVon) {
		GiaVon = giaVon;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}

	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public Cart(int maSP) {
		XuLiGioHang xl=new XuLiGioHang();
		MaSP=maSP;
		SanPham sp= xl.LayThongTinSanPhamChoCart(MaSP);
        TenSP = sp.getTenSp();
        GiaVon=sp.getGiaVon();
        GiaBan = sp.getGiaBan();
        HinhAnh1=sp.getHinhAnh1();
        sale=sp.getSale();
        SoLuong = 1;
	}

	public String getHinhAnh1() {
		return HinhAnh1;
	}
	public void setHinhAnh1(String hinhAnh1) {
		HinhAnh1 = hinhAnh1;
	}
	public double getGiaBan() {
		return GiaBan;
	}
	public void setGiaBan(double giaBan) {
		GiaBan = giaBan;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	public double getThanhTien() {
		//return ThanhTien;
		return SoLuong * GiaBan;
	}
	public void setThanhTien(double thanhTien) {
		ThanhTien = thanhTien;	
	}

}
