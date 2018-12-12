package ModelService;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import ModelBean.Cart;
import ModelBean.SanPham;
import ModelDao.DBConnection;

public class XuLiGioHang {

	DBConnection connection = new DBConnection();

	public XuLiGioHang() {
		connection = new DBConnection();
	}
	//lấy thông tin sản phẩm để thêm vào giỏ hàng
	public SanPham LayThongTinSanPhamChoCart(int MaSP) {
		connection.connect();
		SanPham sp=new SanPham();
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1},
					new Object[] {MaSP});
			ResultSet rs=connection.executeTableProc("Proc_LaySanPhamChoCart", paramsIn);
			while(rs.next()) {
				sp.setMaSP(rs.getInt("MaSP"));
				sp.setTenSp(rs.getString("TenSP"));
				sp.setGiaVon(rs.getDouble("GiaVon"));
				sp.setGiaBan(rs.getDouble("GiaBan"));
				sp.setSale(rs.getInt("Sale"));
			}
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();	
		return sp;
	}
	//lấy giỏ hàng trong session ra
	public List<Cart> LayGioHang(HttpServletRequest request) {
		List<Cart> listGioHang = (List<Cart>) (request.getSession().getAttribute("GioHang"));
		if (listGioHang == null) {
			// Tạo mới giỏ hàng
			listGioHang = new ArrayList<Cart>();
			request.getSession().setAttribute("GioHang", listGioHang);
		}
		return listGioHang;
	}

	//tính tống số lượng sản phẩm trong giỏ hàng
	public int TongSoLuong(HttpServletRequest request) {
		int SoLuong = 0;
		List<Cart> listGioHang = (List<Cart>) (request.getSession().getAttribute("GioHang"));
		if (listGioHang != null) {
			for (int i = 0; i < listGioHang.size(); i++)
				SoLuong = SoLuong + listGioHang.get(i).getSoLuong();
		}
		return SoLuong;
	}
	//tính tổng tiền của đơn hàng
	public double TongTienDonHang( HttpServletRequest request)
    {
        double TTDonHang = 0;
        //lấy ra  giỏ hàng
        List<Cart> listGH = LayGioHang(request);
        for (int i = 0; i < listGH.size(); i++)
        {
            TTDonHang = listGH.get(i).getThanhTien() + TTDonHang;
        }
         return TTDonHang;
     }
	
	//thêm thông tin vào hóa đơn bán
	public void ThemSPVaoDonHanBan(LocalDate NgayBan,double TongTien,int TrangThai, Integer MaKH,String HoTen,int SDT,String DiaChi)
    {
		connection.connect();
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5,6,7},
					new Object[] {NgayBan,TongTien,TrangThai, MaKH, HoTen,SDT,DiaChi});
			connection.executeProcedure("Proc_InsertDH", paramsIn,null,null);
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();	
    }
	//thêm sản phẩm vào bảng chi tiết hóa đơn
	public void ThemSPVaoChiTietHDBan(int MaSP, double GiaVon, double GiaBan,int SoLuongBan, Integer Sale)
    {
		connection.connect();
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2,3,4,5},
					new Object[] {MaSP,GiaVon,GiaBan, SoLuongBan, Sale});
			connection.executeProcedure("Proc_InsertHHB", paramsIn,null,null);
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		connection.close();	
    }
	//Kiểm tra số lượng trong kho trước khi thêm vào giỏ
	public ResultSet KiemTraSoLuong(int MaSP, int SoLuong)
	{
		
		connection.connect();
		ResultSet rs=null;
		try {
			Vector<Object[]> paramsIn = connection.createParams(new int[] {1,2},
					new Object[] {MaSP,SoLuong});
			rs=connection.executeTableProc("Proc_KiemTraSoLuongSanPham", paramsIn);
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return rs;
	}
}
