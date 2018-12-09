package ControllerDHCuaToi;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.HoaDonBan;
import ModelService.XuLiDonHangBanCuaKH;

/**
 * Servlet implementation class ShowDSDH
 */
@WebServlet("/ShowDSDHNE")
public class ShowDSHD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowDSHD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//int MaKH=Integer.parseInt((String) request.getSession().getAttribute("MaKH"));
		int MaKH=3;
		XuLiDonHangBanCuaKH xldh=new XuLiDonHangBanCuaKH();
		HoaDonBan[] hdb=xldh.LayDanhSachHDBan(MaKH);
		request.setAttribute("DSHDBan", hdb);
		RequestDispatcher dispatcher=request.getRequestDispatcher("view/DonHangCuaToi.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
