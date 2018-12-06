package ContronllerCart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import ModelService.XuLiGioHang;

/**
 * Servlet implementation class ShowCart
 */
@WebServlet("/ShowCart")
public class ShowCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		HttpSession session = request.getSession();
		if (session.getAttribute("GioHang") == null)
        {
			RequestDispatcher dispatcher=request.getRequestDispatcher("view/GioHang_empty.jsp");
			dispatcher.forward(request, response);//Nếu không có gì trong giỏ thì cho nó về trang giỏ hàng trống
			return;
        }		
		//RequestDispatcher dispatcher=request.getRequestDispatcher("Contronller/ContronllerCart/AddCart.java");
		XuLiGioHang xlgh=new XuLiGioHang();
		double tongtienDH= xlgh.TongTienDonHang(request);
		request.getSession().setAttribute("TongTienDH", tongtienDH);
		RequestDispatcher dispatcher=request.getRequestDispatcher("view/GioHang.jsp");
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
