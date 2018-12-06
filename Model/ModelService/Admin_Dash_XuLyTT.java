package ModelService;

import java.awt.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelBean.KhachHang;
import ModelBean.SanPham;
import ModelDao.DBConnection;

public class Admin_Dash_XuLyTT {

	DBConnection connection=new DBConnection();
	public Admin_Dash_XuLyTT() {
		connection = new DBConnection();
	}
	
	//danh sách sản phẩm sắp hết hàng
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
	//Số lượng tài khoản đã đăng ký
	public int Proc_Admin_Tinhtong_KH()
	{
		connection.connect();
		int soTaiKHoan = 0;
		try {
			ResultSet resultSet = connection.executeTableProc("Proc_Admin_Tinhtong_KH", null);
			while(resultSet.next()) {
			soTaiKHoan = resultSet.getInt("sokh");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return soTaiKHoan;
	}
	//Tổng giao dịch thành công
	public int Proc_Admin_Tong_Giaodich()
	{
		connection.connect();
		int tong_giaodich = 0;
		try {
			ResultSet resultSet = connection.executeTableProc("Proc_Admin_Tong_Giaodich", null);
			while(resultSet.next()) {
				tong_giaodich = resultSet.getInt("giaodichthanhcong");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return tong_giaodich;
	}
	//danh sách sản phẩm bán chạy
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
}
