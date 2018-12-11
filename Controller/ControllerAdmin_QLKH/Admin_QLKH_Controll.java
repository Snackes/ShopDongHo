package ControllerAdmin_QLKH;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;

import ModelBean.KhachHang;
import ModelService.Admin_QLKH_XulyTT;

/**
 * Servlet implementation class Admin_QLKH_Controll
 */
@WebServlet("/Admin_QLKH_Controll")
public class Admin_QLKH_Controll extends HttpServlet {
	
	int ma_kh = 0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_QLKH_Controll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_QLTK.jsp");
		Admin_QLKH_XulyTT control_SP = new Admin_QLKH_XulyTT();
		KhachHang[] dskh = control_SP.Funct_Admin_DSKH();
		request.getSession().setAttribute("Funct_Admin_DSKH", dskh);
		
    	dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_QLTK.jsp");
		Admin_QLKH_XulyTT control_SP = new Admin_QLKH_XulyTT();
		
		int ma_kh = Integer.parseInt(request.getParameter("MaKH"));
    	if(ma_kh != 0)
    	{
    	ResultSet ds_dh_kh = control_SP.Funct_Admin_DSHDB(ma_kh);
    	ResultSet ctkh = control_SP.Funct_Admin_CTKH(ma_kh);
    	request.getSession().setAttribute("Funct_Admin_CTKH", ctkh);
    	request.getSession().setAttribute("Funct_Admin_DSHDB", ds_dh_kh);
    	}
    	
    	
    	//dispatcher.forward(request, response);
	}
}
