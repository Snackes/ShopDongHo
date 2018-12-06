package ControllerAdmin_Dash;

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
import ModelService.Admin_Dash_XuLyTT;

/**
 * Servlet implementation class Admin_Dash_Controll
 */
@WebServlet("/Admin_Dash_Controll")
public class Admin_Dash_Controll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Dash_Controll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_Dashboard.jsp");
		Admin_Dash_XuLyTT control_SP = new Admin_Dash_XuLyTT();
		SanPham[] outstock= control_SP.Funct_Admin_DSSP_OutofStock();
		ResultSet hotsale = control_SP.Funct_Admin_DSSP_Hotsale();
		int sotaikhoan = control_SP.Proc_Admin_Tinhtong_KH();
		int tonggiaodich = control_SP.Proc_Admin_Tong_Giaodich();
		request.setAttribute("Funct_Admin_DSSP_OutofStock", outstock);
		request.setAttribute("Proc_Admin_Tinhtong_KH", sotaikhoan);
		request.setAttribute("Proc_Admin_Tong_Giaodich", tonggiaodich);
		request.setAttribute("Funct_Admin_DSSP_Hotsale", hotsale);
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
