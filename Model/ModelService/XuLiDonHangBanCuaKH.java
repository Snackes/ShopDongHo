package ModelService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import ModelBean.ChiTietHDBan;
import ModelBean.ChiTietHDNhap;
import ModelBean.HoaDonBan;
import ModelDao.DBConnection;

public class XuLiDonHangBanCuaKH {
	DBConnection connection = new DBConnection();

	public XuLiDonHangBanCuaKH() {
		connection = new DBConnection();
	}
	//Lấy danh sách đơn hàng bán theo mã khách hàng
	public HoaDonBan[] LayDanhSachHDBan(int MaKH) {
		connection.connect();
		Vector<HoaDonBan> listHDB=new Vector<HoaDonBan>();

		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1},
					new Object[] {MaKH});
			ResultSet rs=connection.executeTableProc("Proc_LayDanhSachDonHangChoKH", paramsIn);
			while(rs.next()) {
				HoaDonBan hd=new HoaDonBan();
				hd.setMaDH(rs.getInt("MaDH"));
				hd.setHoTen(rs.getString("HoTen"));
				hd.setNgayBan(rs.getDate("NgayBan"));
				hd.setTongTien(rs.getFloat("TongTien"));
				listHDB.addElement(hd);
			}
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();	
		return listHDB.toArray(new HoaDonBan[0]);
	}
	//lấy thông tin của các sản phẩm trong hóa đơn được yêu cầu xem chi tiết
	public ResultSet LayThongTinSanPham(int MaHD)
	{
		connection.connect();
		ResultSet rs=null;
		Vector<ChiTietHDBan> dssp= new Vector<ChiTietHDBan>();
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1},
					new Object[] {MaHD});
			rs=connection.executeTableProc("Proc_LayThongTinSanPhamChoDH", paramsIn);
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	//lấy thông tin chi tiết của hóa đơn được yêu cầu xem 
	public ResultSet LayThongTinChiTietHDBan(int MaHD)
	{
		connection.connect();
		ResultSet rs=null;
		try {
			Vector<Object[]> params_In=connection.createParams(new int[] {1}, new Object[] {MaHD});
			rs=connection.executeTableProc("Proc_LayThongTinChiTietHDBan", params_In);
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		return rs;
	}
	public void HuyHoaDongBan(int MaHD)
	{
		connection.connect();
		try {
			Vector<Object[]> params_In=connection.createParams(new int[] {1}, new Object[] {MaHD});
			connection.executeTableProc("Proc_XoaHoaDonBan", params_In);
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		connection.close();
	}
}
