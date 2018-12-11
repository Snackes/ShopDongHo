package ModelService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelDao.DBConnection;

public class ChiTiet_HDB_Xuly {

	DBConnection connection=new DBConnection();
	public ChiTiet_HDB_Xuly() {
		connection = new DBConnection();
	}
	
	public ResultSet Funct_Admin_CT_HDB(int mahdb)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdb});
		
		ResultSet cthdb = null;
		connection.connect();
		
		try {
			cthdb = connection.executeTableFunction("Funct_Admin_CT_HDB", paramsIn);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return cthdb;
	}
	
	public ResultSet Funct_Admin_TTCTofHDB(int mahdb)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdb});
		
		ResultSet ttcthdb = null;
		connection.connect();
		
		try {
			ttcthdb = connection.executeTableFunction("Funct_Admin_TTCTofHDB", paramsIn);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return ttcthdb;
	}
	
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
