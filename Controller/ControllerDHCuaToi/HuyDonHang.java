package ControllerDHCuaToi;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelService.XuLiDonHangBanCuaKH;

/**
 * Servlet implementation class HuyDonHang
 */
@WebServlet("/HuyDonHang")
public class HuyDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HuyDonHang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int MaHD=Integer.parseInt(request.getParameter("MaHDBan"));
		XuLiDonHangBanCuaKH xldh=new XuLiDonHangBanCuaKH();
		xldh.LayThongTinChiTietHDBan(MaHD);
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/ChiTietDonHang.jsp");
		dispatcher.forward(request, response);
	}

}
