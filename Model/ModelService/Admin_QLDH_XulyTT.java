package ModelService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelDao.DBConnection;

public class Admin_QLDH_XulyTT {

	DBConnection connection=new DBConnection();
	public Admin_QLDH_XulyTT() {
		connection = new DBConnection();
	}
	
	//list order: wait for confim
	public ResultSet Funct_Admin_DSHDB_Wait() {
		ResultSet resultSet = null;
		connection.connect();
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_DSHDB_Wait", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return resultSet;
	}
	
	//list order: confimed, delivering
	public ResultSet Funct_Admin_DSHDB_Move() {
		ResultSet resultSet = null;
		connection.connect();
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_DSHDB_Move", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return resultSet;
	}
	
	//list order: successfull delivery
	public ResultSet Funct_Admin_DSHDB_Success() {
		ResultSet resultSet = null;
		connection.connect();
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_DSHDB_Success", null);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return resultSet;
	}
	//confim order
	public void Proc_Admin_Xacnhan_HDB(int mahdb)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdb});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_Xacnhan_HDB", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	//delivery successfull
	public void Proc_Admin_Success_HDB(int mahdb)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdb});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_Success_HDB", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	//cancel order/delivery
	public void Proc_Admin_Huy_HDB(int mahdb)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdb});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_Huy_HDB", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
}
