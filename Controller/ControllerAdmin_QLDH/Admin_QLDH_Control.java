package ControllerAdmin_QLDH;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelService.Admin_QLDH_XulyTT;

/**
 * Servlet implementation class Admin_QLDH_Control
 */
@WebServlet("/Admin_QLDH_Control")
public class Admin_QLDH_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_QLDH_Control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_QLDH.jsp");
		Admin_QLDH_XulyTT control_SP = new Admin_QLDH_XulyTT();
		
		ResultSet order_wait = control_SP.Funct_Admin_DSHDB_Wait();
		request.setAttribute("Funct_Admin_DSHDB_Wait", order_wait);
		
		ResultSet order_move = control_SP.Funct_Admin_DSHDB_Move();
		request.setAttribute("Funct_Admin_DSHDB_Move", order_move);
		
		ResultSet order_succ = control_SP.Funct_Admin_DSHDB_Success();
		request.setAttribute("Funct_Admin_DSHDB_Success", order_succ);
		
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
