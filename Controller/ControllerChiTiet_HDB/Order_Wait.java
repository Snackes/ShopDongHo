package ControllerChiTiet_HDB;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import ModelService.ChiTiet_HDB_Xuly;

/**
 * Servlet implementation class Order_Wait
 */
@WebServlet("/Order_Wait")
public class Order_Wait extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order_Wait() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/ChiTiet_HDBan_Wait.jsp");
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ChiTiet_HDB_Xuly control = new ChiTiet_HDB_Xuly();
		int mahdb = Integer.parseInt(request.getParameter("MaHDB"));
		//int mahdb = 9;
		
		ResultSet cthdb = control.Funct_Admin_CT_HDB(mahdb);
		request.getSession().setAttribute("Funct_Admin_CT_HDB", cthdb);
		
		ResultSet ttcthdb = control.Funct_Admin_TTCTofHDB(mahdb);
		request.getSession().setAttribute("Funct_Admin_TTCTofHDB", ttcthdb);
		
		int flag = Integer.parseInt(request.getParameter("FLAG"));
		switch(flag)
		{
		case 1:
			//control.Proc_Admin_Xacnhan_HDB(mahdb);
			response.getWriter().write("Xác nhận đơn hàng thành công");
			break;
		case 0:
			//control.Proc_Admin_Huy_HDB(mahdb);
			response.getWriter().write("Huỷ đơn hàng thành công");
			break;
		}
	}

}
