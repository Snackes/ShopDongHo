package ControllerAdmin_QLSP;

import java.io.IOException;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.ThuongHieu;
import ModelService.Admin_QLSP_XulyTT;

/**
 * Servlet implementation class Do_Import
 */
@WebServlet("/Do_Import")
public class Do_Import extends HttpServlet {
	private static final long serialVersionUID = 1L;
       int mahdn = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Do_Import() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Do_Import.jsp");
		Admin_QLSP_XulyTT controll_xl = new Admin_QLSP_XulyTT();
		String action = request.getParameter("action");
		if(action == null)
		{
			LocalDate ngaynhap = java.time.LocalDate.now();
			mahdn = controll_xl.Proc_Admin_Tao_HDN(ngaynhap);
		}
		
		ThuongHieu[] dsth = controll_xl.Funct_Admin_DSThHieu();
		request.setAttribute("Funct_Admin_DSThHieu", dsth);
		
		ResultSet ct = controll_xl.Funct_Admin_CTHDN(mahdn);
		request.setAttribute("Funct_Admin_CTHDN", ct);
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admin_QLSP_XulyTT controll_xl = new Admin_QLSP_XulyTT();
		int flag = Integer.parseInt(request.getParameter("FLAG"));
		
		String tensp = request.getParameter("Tensp");
		int thuonghieu = Integer.parseInt(request.getParameter("ThH"));
		int soluong = Integer.parseInt(request.getParameter("Soluong"));
		float giavon = Float.parseFloat(request.getParameter("Giavon"));
		
		if(flag == 1)
		{
			controll_xl.Proc_Admin_NhapHang(mahdn, tensp, thuonghieu, soluong, giavon);
			response.getWriter().println("Done!");
		}
	}

}
