package ControllerHeader;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelService.TuongTacUser;

/**
 * Servlet implementation class Header
 */
@WebServlet("/Header")
public class Header extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Header() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("Layout/Header.jsp");
		//táº¡o sesssion lÆ°u láº¡i cÃ¡c giÃ¡ trá»‹ +MaKH sau khi Ä‘Äƒng nháº­p
		HttpSession session = request.getSession();
		//
		response.setContentType("text/html");
		String TenTaikhoan= request.getParameter("TenTaiKhoan").trim();
		
		String MatKhau= request.getParameter("MatKhau").trim();

		TuongTacUser control_User= new TuongTacUser();
		int FlagKiemTraDangNhap= control_User.KiemTraDangNhap(TenTaikhoan, MatKhau);
		request.setAttribute("FlagKiemTraDangNhap", FlagKiemTraDangNhap);
		//táº¡o session MaKH lÆ°u láº¡i
		session.removeAttribute("MaKH");
		session.setAttribute("MaKH", FlagKiemTraDangNhap);
		session.removeAttribute("TenTK");
		session.setAttribute("TenTK", TenTaikhoan);//nhá»› Ä‘iá»�n tÃªn tk vÃ o
		int FlagKiemTraDangKi = control_User.DangKiTaiKhoan("hiep10", "123456");
		request.setAttribute("FlagKiemTraDangKi", FlagKiemTraDangKi);
		
		
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
