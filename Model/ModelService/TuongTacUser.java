package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import ModelBean.KhachHang;
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
	public KhachHang LoadThongTinTaiKhoan(int MaKH)
	{
		
		KhachHang khachang= new KhachHang();
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1}, new Object[] {MaKH});
		try {
			
			ResultSet resultset = connection.executeTableFunction("Func_Load_ThongTinTaiKhoan", paramsIn);
			
			while(resultset.next())
			{
				khachang.setHoTen(resultset.getString("HoTen"));
				khachang.setDiaChi(resultset.getString("DiaChi"));
				khachang.setEmail(resultset.getString("Email"));
				khachang.setSDT(resultset.getInt("SDT"));
			}
		} catch (SQLException e) {
		
			System.out.println(e.getMessage());
		}
		finally {
			connection.close();
		}
		
		return khachang;
		
	}
	public int UpdateThongTinTaiKhoan(int MaKH, String HoTen, int SDT,String Email,String DiaChi)
	{
		int flag=-1;
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5}, new Object[] {MaKH,HoTen,DiaChi,SDT,Email});
		try {
			
			ResultSet resultset = connection.executeTableProc("Proc_Update_ThongTinTaiKhoan", paramsIn);
			
			while(resultset.next())
			{
				flag=resultset.getInt("flag");
			}
		} catch (SQLException e) {
		
			System.out.println(e.getMessage());
		}
		finally {
			connection.close();
		}
		return flag;
		
		
	}
	
	public int DoiMatKhau(int MaKH,String MatKhauCu,String MatKhauMoi)
	{
		int flag=-1;
		connection.connect();
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3}, new Object[] {MaKH,MatKhauCu,MatKhauMoi});
		try {
			
			ResultSet resultset = connection.executeTableProc("Proc_DoiMatKhau", paramsIn);
			
			while(resultset.next())
			{
				flag=resultset.getInt("flag");
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
