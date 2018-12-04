package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import ModelBean.SanPham;
import ModelDao.DBConnection;
public class XuLiSanPham {	

	DBConnection connection=new DBConnection();
	public XuLiSanPham() {
		connection = new DBConnection();
	}
	public ResultSet listSP()
	{
		connection.connect();
		ResultSet test=null;
		try {
			test= connection.executeTableProc("LayThongTinSanPham2", null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
	}
	
	public SanPham[] listSP1() {
		Vector<SanPham> result = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableProc("LayThongTinSanPham2", null);
			while (resultSet.next()) {
				SanPham sp = new SanPham();				
				//Add value to Book
				sp.setMaSP(resultSet.getInt(1));
				sp.setTenSp(resultSet.getString(2));
				sp.setGiaBan(resultSet.getDouble(3));
				result.addElement(sp);
				
			}
		} catch (SQLException e) { 
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return result.toArray(new SanPham[0]);
	}
	
	//tạo hàm lấy ngẫu nhiên 4 sản phẩm 
	public SanPham[] Func_Lay_BonSanPhamNgauNhien() {
		Vector<SanPham> lstSanPham = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableFunction("Func_Lay_BonSanPhamNgauNhien", null);
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
	//tạo hàm lấy thông tin sản phẩm(cho ChiTietSanPham)
	public SanPham Fun_LayThongTinSanPham(int MaSp) {
		
		
		
		//SanPham sp = new SanPham();
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
		}finally {
			connection.close();
		}
		
		return sanpham;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
