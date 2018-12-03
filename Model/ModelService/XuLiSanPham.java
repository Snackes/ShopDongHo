package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import ModelBean.Cart;
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
	
	//Lấy sản phẩm để thêm vào giỏ hàng khi click vào button thêm vào giỏ hàng trên từng sản phẩm
	public SanPham LayThongTinSanPhamChoCart(int MaSP) {
		connection.connect();
		SanPham sp=new SanPham();
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1},
					new Object[] {MaSP});
			ResultSet rs=connection.executeTableProc("Proc_LaySanPhamChoCart", paramsIn);
			sp.setMaSP(rs.getInt(1));
			sp.setTenSp(rs.getString(2));
			sp.setGiaBan(rs.getDouble(3));
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();	
		return sp;
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

}
