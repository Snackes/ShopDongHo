package ModelService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelDao.DBConnection;
import ModelBean.KhachHang;

public class Admin_QLKH_XulyTT {

	DBConnection connection=new DBConnection();
	public Admin_QLKH_XulyTT() {
		connection = new DBConnection();
	}
	
	//danh sách khách hàng
	public KhachHang[] Funct_Admin_DSKH()
	{
		Vector<KhachHang> lstKH = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableFunction("Funct_Admin_DSKH", null);
			while(resultSet.next()) {
				KhachHang kh = new KhachHang();
				kh.setMaKH(resultSet.getInt("makh"));
				kh.setSDT(resultSet.getInt("sodienthoai"));
				kh.setHoTen(resultSet.getString("tenkh"));
				kh.setEmail(resultSet.getString("email"));
				kh.setDiaChi(resultSet.getString("diachi"));
				lstKH.addElement(kh);
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return lstKH.toArray(new KhachHang[0]);
	}
	
	//danh sách đơn hàng của khách
	public ResultSet Funct_Admin_DSHDB(int makh)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {makh});
		
		ResultSet dshdb = null;
		connection.connect();
		
		try {
			dshdb = connection.executeTableFunction("Funct_Admin_DSHDB", paramsIn);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return dshdb;
	}
	
	//chi tiết khách hàng
	public ResultSet Funct_Admin_CTKH(int makh)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {makh});
		
		ResultSet dshdb = null;
		connection.connect();
		
		try {
			dshdb = connection.executeTableFunction("Funct_Admin_CTKH", paramsIn);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return dshdb;
	}
	
	
}
