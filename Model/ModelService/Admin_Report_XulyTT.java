package ModelService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelDao.DBConnection;

public class Admin_Report_XulyTT {

	DBConnection connection=new DBConnection();
	public Admin_Report_XulyTT() {
		connection = new DBConnection();
	}
	
	//hot sale
	public ResultSet Funct_Admin_DSSP_Hotsale() {

		connection.connect();
		ResultSet resultSet = null;
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_DSSP_Hotsale", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} /*finally {
			connection.close();
		}*/
		return resultSet;

	}
	
	//Khach hang tiem nag
	public ResultSet Funct_Admin_KHTN() {

		connection.connect();
		ResultSet resultSet = null;
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_KHTN", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} /*finally {
			connection.close();
		}*/
		return resultSet;

	}
}
