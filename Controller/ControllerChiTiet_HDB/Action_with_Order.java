package ControllerChiTiet_HDB;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelService.Admin_QLDH_XulyTT;
import ModelService.ChiTiet_HDB_Xuly;

/**
 * Servlet implementation class Action_with_Order
 */
@WebServlet("/Action_with_Order")
public class Action_with_Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Action_with_Order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ChiTiet_HDB_Xuly control = new ChiTiet_HDB_Xuly();
		int mahdb = Integer.parseInt(request.getParameter("MaHDB"));
		
		int flag = Integer.parseInt(request.getParameter("FLAG"));
		switch(flag)
		{
		case 0:
			control.Proc_Admin_Huy_HDB(mahdb);
			response.getWriter().print("Delete order successfull !");
			break;
		case 1:
			control.Proc_Admin_Xacnhan_HDB(mahdb);
			response.getWriter().write("Confim order successfull !");
			break;
		case 2:
			control.Proc_Admin_Success_HDB(mahdb);
			response.getWriter().write("Confim order delivery successfull !");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
