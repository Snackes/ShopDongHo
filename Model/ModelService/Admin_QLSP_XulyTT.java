package ModelService;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelBean.SanPham;
import ModelBean.ThuongHieu;
import ModelDao.DBConnection;

public class Admin_QLSP_XulyTT {

	DBConnection connection=new DBConnection();
	public Admin_QLSP_XulyTT() {
		connection = new DBConnection();
	}
	
	//danh sách sản phẩm
	public ResultSet Funct_Admin_BangTTSanPham() {
		ResultSet resultSet = null;
		connection.connect();
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_BangTTSanPham", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} /*finally {
			//connection.close();
		}*/
		return resultSet;
	}
	
	//list of : trademark
	public ThuongHieu[] Funct_Admin_DSThHieu() {
		Vector<ThuongHieu> lstSanPham = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableFunction("Funct_Admin_DSThHieu", null);
			while(resultSet.next()) {
				ThuongHieu th = new ThuongHieu();
				th.setMaTH(resultSet.getInt("math"));
				th.setTenThuongHieu(resultSet.getString("tenthuonghieu"));
				lstSanPham.addElement(th);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return lstSanPham.toArray(new ThuongHieu[0]);

	}
	
	//Out of Stock
	public SanPham[] Funct_Admin_DSSP_OutofStock() {
		Vector<SanPham> lstSanPham = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableFunction("Funct_Admin_DSSP_OutofStock", null);
			while(resultSet.next()) {
				SanPham sp = new SanPham();
				sp.setMaSP(resultSet.getInt("masp"));
				sp.setTenSp(resultSet.getString("tensp"));
				sp.setSoLuongHienTai(resultSet.getInt("soluongconlai"));
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
