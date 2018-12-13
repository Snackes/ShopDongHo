package ContronllerCart;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.Cart;
import ModelService.XuLiGioHang;
import ModelService.XuLiSanPham;

/**
 * Servlet implementation class DatHang
 */
@WebServlet("/ThanhToan")
public class ThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThanhToan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/DatHang.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        XuLiGioHang xl=new XuLiGioHang();
		double TTDonHang = xl.TongTienDonHang(request);
        //lấy ra giỏ hàng
        String HoTen=request.getParameter("uname").toString();
        String DiaChi=request.getParameter("address").toString();
        int SDT=Integer.parseInt(request.getParameter("mobile"));
        Integer MaKH=null;
        String thu="";
        
		if(request.getSession().getAttribute("MaKH")==null)
		{
			MaKH=null;
		}
		else
		{
			thu=(request.getSession().getAttribute("MaKH")).toString();
			MaKH=Integer.parseInt(thu);
		}
		
        LocalDate NgayBan=java.time.LocalDate.now();
        double TongTien=xl.TongTienDonHang(request);
        int TrangThai=0;
        xl.ThemSPVaoDonHanBan(NgayBan,TongTien,TrangThai,MaKH,HoTen,SDT,DiaChi);
        List<Cart> listGH = xl.LayGioHang(request);
        for (int i = 0; i < listGH.size(); i++)
        {
        	int MaSP=listGH.get(i).getMaSP();
        	double GiaVon=listGH.get(i).getGiaVon();
        	double GiaBan=listGH.get(i).getGiaBan();
        	int SoLuong=listGH.get(i).getSoLuong();
        	Integer sale=listGH.get(i).getSale();
            xl.ThemSPVaoChiTietHDBan(MaSP, GiaVon,GiaBan,SoLuong,sale);
        }
        request.getSession().setAttribute("GioHang", null);		
        request.getSession().setAttribute("SLIConGH", xl.TongSoLuong(request));

        request.setAttribute("ThanhToanThanhCong", "ThanhCong");
        RequestDispatcher dispatcher= request.getRequestDispatcher("TrangChu");
        dispatcher.forward(request, response);
	}

}
