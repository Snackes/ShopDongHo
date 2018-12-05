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
		
		//biến cờ (=1 đăng nhập thành công -1 đăng nhập ko thành công) 
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
	
	public int DangKiTaiKhoan(String Username, String PassWord)
	{
		//biến cờ(-1 nếu tk đã tồn tại -  nếu đăng kí thành công trả về mã kh vừa mới tạo) 
		int flag =1;
		connection.connect();
		
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2}, new Object[] {Username,PassWord});
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
