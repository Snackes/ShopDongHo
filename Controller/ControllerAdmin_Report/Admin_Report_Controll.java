package ControllerAdmin_Report;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelService.Admin_Report_XulyTT;



/**
 * Servlet implementation class Admin_Report_Controll
 */
@WebServlet("/Admin_Report_Controll")
public class Admin_Report_Controll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Report_Controll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_Report.jsp");
		Admin_Report_XulyTT control_SP = new Admin_Report_XulyTT();
		
		ResultSet hotsale = control_SP.Funct_Admin_DSSP_Hotsale();
		request.setAttribute("Funct_Admin_DSSP_Hotsale", hotsale);
		
		ResultSet khtn = control_SP.Funct_Admin_KHTN();
		request.setAttribute("Funct_Admin_KHTN", khtn);
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
