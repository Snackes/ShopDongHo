package ControllerAdmin_QLSP;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.SanPham;
import ModelBean.ThuongHieu;
import ModelService.Admin_QLSP_XulyTT;

/**
 * Servlet implementation class Import_SP
 */
@WebServlet("/Import_SP")
public class Import_SP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Import_SP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/ChiTiet_HDNhap.jsp");
		
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admin_QLSP_XulyTT control_ds = new Admin_QLSP_XulyTT();
		int mahdn = Integer.parseInt(request.getParameter("MaHDN"));
		
		ResultSet ct = control_ds.Funct_Admin_CTHDN(mahdn);
		request.getSession().setAttribute("Funct_Admin_CTHDN", ct);
		
		ResultSet tt = control_ds.Funct_Admin_DS_HDN_2(mahdn);
		request.getSession().setAttribute("Funct_Admin_DS_HDN_2", tt);
	}

}
