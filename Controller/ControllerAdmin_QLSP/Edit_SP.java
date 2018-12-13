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
 * Servlet implementation class Edit_SP
 */
@WebServlet("/Edit_SP")
public class Edit_SP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit_SP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Edit_Sanpham.jsp");
		
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Admin_QLSP_XulyTT control_SP = new Admin_QLSP_XulyTT();
		
		int ma_sp = Integer.parseInt(request.getParameter("MaSP"));
		ResultSet ctsp = control_SP.Funct_Admin_CTSanPham(ma_sp);
		request.getSession().setAttribute("Funct_Admin_CTSanPham", ctsp);
		
		ThuongHieu[] dsth = control_SP.Funct_Admin_DSThHieu();
		request.getSession().setAttribute("Funct_Admin_DSThHieu", dsth);
		
		int flag = Integer.parseInt(request.getParameter("FLAG"));
		if(flag == 0)
		{
			response.getWriter().write("Edit successfull !");
		}
	}

}
