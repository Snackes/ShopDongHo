package ModelService;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelDao.DBConnection;

public class Admin_QLSP_XulyTT {

	DBConnection connection=new DBConnection();
	public Admin_QLSP_XulyTT() {
		connection = new DBConnection();
	}
	
	//dánh sách sản phẩm
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
}
