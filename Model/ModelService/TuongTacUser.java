package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import ModelBean.SanPham;
import ModelDao.DBConnection;

public class TuongTacUser {
	DBConnection connection = null;

	public TuongTacUser() {
		connection = new DBConnection();
	}
	
	public int KiemTraDangNhap(String UserName, String PassWord)
	{
		
		//biáº¿n cá»� (=1 Ä‘Äƒng nháº­p thÃ nh cÃ´ng -1 Ä‘Äƒng nháº­p ko thÃ nh cÃ´ng) 
		int flag=-1;
		connection.connect();
		
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2}, new Object[] {UserName,PassWord});
		try {
			//ResultSet resultset = connection.executeTableProc("Proc_DangNhap", paramsIn);
			//ResultSet resultset = connection.executeTableProc("Proc_Test", paramsIn);
			ResultSet resultset = connection.executeTableProc("Proc_DangNhap", paramsIn);
			
			while(resultset.next())
			{
				flag=resultset.getInt("MaKH");
			}
		} catch (SQLException e) {
		
			System.out.println(e.getMessage());
		}
		finally {
			connection.close();
		}
		return flag;
	}
	
	public int DangKiTaiKhoan(String Email, String Username, String PassWord)
	{
		
		int flag =1;
		connection.connect();
		
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3}, new Object[] {Email,Username,PassWord});
		try {
			//ResultSet resultset = connection.executeTableProc("Proc_DangNhap", paramsIn);
			//ResultSet resultset = connection.executeTableProc("Proc_Test", paramsIn);
			ResultSet resultset = connection.executeTableProc("Proc_DangKiTaiKhoan", paramsIn);
			
			while(resultset.next())
			{
				flag=resultset.getInt("MaKH");
			}
		} catch (SQLException e) {
		
			System.out.println(e.getMessage());
		}
		finally {
			connection.close();
		}
		return flag;
	}
	

}
