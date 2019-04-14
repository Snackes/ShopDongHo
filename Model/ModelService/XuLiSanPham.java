package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import ModelBean.Cart;
import ModelBean.SanPham;
import ModelDao.DBConnection;
public class XuLiSanPham {	

	DBConnection connection=new DBConnection();
	public XuLiSanPham() {
		connection = new DBConnection();
	}

	public SanPham[] Proc_Lay_BonSanPhamNgauNhien() {
		Vector<SanPham> lstSanPham = new Vector<>();
		connection.connect();
		try {
			ResultSet resultSet = connection.executeTableProc("Proc_Lay_BonSanPhamNgauNhien", null);
			while(resultSet.next()) {
				SanPham sp = new SanPham();
				sp.setMaSP(resultSet.getInt("MaSP"));
				sp.setTenSp(resultSet.getString("TenSP"));
				sp.setGiaBan(resultSet.getDouble("GiaBan"));
				sp.setHinhAnh1(resultSet.getString("HinhAnh1"));
				lstSanPham.addElement(sp);
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return lstSanPham.toArray(new SanPham[0]);

	}
	

	public SanPham Fun_LayThongTinSanPham(int MaSp) {
		SanPham sanpham = new SanPham();
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1}, new Object[] {MaSp});
		try {
			ResultSet resultset = connection.executeTableFunction("Func_Lay_ThongTinSanPham", paramsIn);
			while(resultset.next())
			{
				sanpham.setMaSP(resultset.getInt("MaSP"));
				sanpham.setTenSp(resultset.getString("TenSP"));
				sanpham.setGiaBan(resultset.getDouble("GiaBan"));
				sanpham.setMaTH(resultset.getInt("MaTH"));
				sanpham.setKieuMay(resultset.getString("KieuMay"));
				sanpham.setGioiTinhSuDung(resultset.getString("GioiTinhSuDung"));
				sanpham.setKichCo(resultset.getString("KichCo"));
				sanpham.setChatLieuVo(resultset.getString("ChatLieuVo"));
				sanpham.setChatLieuKinh(resultset.getString("ChatLieuKinh"));
				sanpham.setDoChiuNuoc(resultset.getString("DoChiuNuoc"));
				sanpham.setBaoHanh(resultset.getString("BaoHanh"));
				sanpham.setSoLuongHienTai(resultset.getInt("SoLuongHienTai"));
				sanpham.setSale(resultset.getInt("Sale"));
				sanpham.setGhiChu(resultset.getString("GhiChu"));
				sanpham.setHinhAnh1(resultset.getString("HinhAnh1"));
				sanpham.setHinhAnh2(resultset.getString("HinhAnh2"));
				sanpham.setHinhAnh3(resultset.getString("HinhAnh3"));
				sanpham.setHinhAnh4(resultset.getString("HinhAnh4"));	
			}	
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();
		return sanpham;	
	}
	
	//chức năng lọc 
	public SanPham[] BoLocSanPham(Integer MaTH1, Integer MaTH2, Integer MaTH3, Integer MaTH4, Integer MaTH5, Integer MaTH6, Integer MaTH7, Integer MaTH8,
			Integer MaTH9,Integer MaTH10,Integer MaTH11,Integer MaTH12, String TenLoaiDay1, String TenLoaiDay2, String GioiTinh, Double GiaBanMin, Double GiaBanMax,
			String KieuMay1, String KieuMay2)
	{		
		Vector<SanPham> lstSanPham = new Vector<>();
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19},
				new Object[] {MaTH1,MaTH2,MaTH3,MaTH4,MaTH5,MaTH6,MaTH7,MaTH8,MaTH9,MaTH10,MaTH11,MaTH12,
						TenLoaiDay1,TenLoaiDay2,GioiTinh,GiaBanMin,GiaBanMax,KieuMay1,KieuMay2});
		try {
			ResultSet resultset = connection.executeTableFunction("Func_LocSanPham", paramsIn);
			while(resultset.next())
			{
				SanPham sp=new SanPham();
				sp.setMaSP(resultset.getInt("MaSP"));
				sp.setTenSp(resultset.getString("TenSP"));
				sp.setGiaBan(resultset.getDouble("GiaBan"));
				sp.setHinhAnh1(resultset.getString("HinhAnh1"));
				lstSanPham.addElement(sp);
			}	
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();
		return lstSanPham.toArray(new SanPham[0]);
	}
	
	public SanPham[] TimKiemTheoTenSanPham(String ChuoiTK)
	{		
		Vector<SanPham> lstSanPham = new Vector<>();
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},
				new Object[] {ChuoiTK});
		try {
			ResultSet resultset = connection.executeTableProc("Proc_TimKiem", paramsIn);
			while(resultset.next())
			{
				SanPham sp=new SanPham();
				sp.setMaSP(resultset.getInt("MaSP"));
				sp.setTenSp(resultset.getString("TenSP"));
				sp.setGiaBan(resultset.getDouble("GiaBan"));
				sp.setHinhAnh1(resultset.getString("HinhAnh1"));
				lstSanPham.addElement(sp);
			}	
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();
		return lstSanPham.toArray(new SanPham[0]);
	}
	
	//phân trang
	public SanPham[] phantrang(int start, int end, SanPham[] listSP)
	{		
		Vector<SanPham> lstSanPhamPT = new Vector<SanPham>();
		for(int i=start;i<end;i++)
			lstSanPhamPT.addElement(listSP[i]);
		return lstSanPhamPT.toArray(new SanPham[0]);
	}

}
