package ModelService;


import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Vector;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;
import javax.swing.text.html.ListView;

import ModelBean.SanPham;
import ModelBean.ThuongHieu;
import ModelBean.HoaDonNhap;
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
	//chitiet sp
	public ResultSet Funct_Admin_CTSanPham(int masp) {
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {masp});
		connection.connect();
		ResultSet resultSet = null;
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_CTSanPham", paramsIn);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return resultSet;

	}
	//delete sp
	public void Proc_Admin_XoaSP(int masp)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {masp});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_XoaSP", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	//update sp
	public void Proc_Admin_Sua_CTSanPham(int masp, String tensp, int thuonghieu, String kieumay, String gioitinh, String kichco, String chatlieuvo, String chatlieukinh, String chatlieuday, String dochiunuoc, String baohanh, int soluong, float giaban, int sale)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5,6,7,8,9,10,11,12,13,14},new Object[] {masp,tensp,thuonghieu,kieumay,gioitinh,kichco,chatlieuvo,chatlieukinh,chatlieuday,dochiunuoc,baohanh,soluong,giaban,sale});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_Sua_CTSanPham", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	//list import goods
	public HoaDonNhap[] Funct_Admin_DS_HDN() {
		Vector<HoaDonNhap> lstSanPham = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableFunction("Funct_Admin_DS_HDN", null);
			while(resultSet.next()) {
				HoaDonNhap hd = new HoaDonNhap();
				hd.setMaDH(resultSet.getInt("mahhn"));
				hd.setNgayNhap(resultSet.getDate("ngaynhap"));
				hd.setTongTien(resultSet.getFloat("tongtien"));
				lstSanPham.addElement(hd);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return lstSanPham.toArray(new HoaDonNhap[0]);
	}
	//ct hoa don nhap 2
	public ResultSet Funct_Admin_DS_HDN_2(int mahdn) {
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdn});
		connection.connect();
		ResultSet resultSet = null;
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_DS_HDN_2", paramsIn);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return resultSet;
	}
	//ct hoa don nhap
	public ResultSet Funct_Admin_CTHDN(int mahdn) {
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {mahdn});
		connection.connect();
		ResultSet resultSet = null;
		
		try {
			resultSet = connection.executeTableFunction("Funct_Admin_CTHDN", paramsIn);
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return resultSet;
	}
	//create import bill
	public int Proc_Admin_Tao_HDN(LocalDate ngaynhap)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1},new Object[] {ngaynhap});
		int mahdn = 0;
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableProc("Proc_Admin_Tao_HDN", paramsIn);
			while(resultSet.next()) {
				mahdn = resultSet.getInt("mahdn");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		
		return mahdn;
	}
	//import bill
	public void Proc_Admin_NhapHang(int mahdn, String tensp,int thuonghieu, int soluong, float giavon)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5},new Object[] {mahdn,tensp,thuonghieu,soluong,giavon});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_NhapHang", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	//upload picture
	public void Proc_Admin_UploadPic(int masp, String anh1, String anh2, String anh3, String anh4)
	{
		Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5},new Object[] {masp,anh1,anh2,anh3,anh4});
		
		connection.connect();
		
		try {
			connection.executeProcedure("Proc_Admin_UploadPic", paramsIn, null, null);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	
}
