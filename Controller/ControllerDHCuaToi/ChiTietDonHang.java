package ControllerDHCuaToi;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelBean.ChiTietHDBan;
import ModelBean.KhachHang;
import ModelService.XuLiDonHangBanCuaKH;

/**
 * Servlet implementation class ChiTietDonHang
 */
@WebServlet("/ChiTietDonHang")
public class ChiTietDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietDonHang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		if(session.getAttribute("MaKH")!=null)
		{
			int MaHD=Integer.parseInt(request.getParameter("MaHDBan"));
			XuLiDonHangBanCuaKH xldh=new XuLiDonHangBanCuaKH();
			
			ResultSet cthdBan=xldh.LayThongTinChiTietHDBan(MaHD);
			ResultSet DSSPDonHangBan=xldh.LayThongTinSanPham(MaHD);
			request.setAttribute("DanhSachSanPham", DSSPDonHangBan);
			request.setAttribute("ChiTietHoaDonBan", cthdBan);
			RequestDispatcher dispatcher= request.getRequestDispatcher("view/ChiTietDonHang.jsp");
			dispatcher.forward(request, response);
		}
		else			
		{
			ServletContext context= getServletContext();
			RequestDispatcher rd= context.getRequestDispatcher("/TrangChu");
			rd.forward(request, response);
		}
		

				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
