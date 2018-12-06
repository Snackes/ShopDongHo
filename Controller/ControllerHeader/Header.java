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
		//tạo sesssion lưu lại các giá trị +MaKH sau khi đăng nhập
		HttpSession session = request.getSession();
		//
		response.setContentType("text/html");
		
		TuongTacUser control_User= new TuongTacUser();
		
		
		
		int flagAction =  Integer.parseInt(request.getParameter("flagAction"));
		//tạo cờ flagAction nhận diện hành động
		// =1 Đăng Nhập
		// =2 Đăng Kí
		// =3 Thông Tin Tài Khoản
		// =4 Quên Mật Khẩu
		// =5 Đăng xuất
		//
		switch(flagAction)
		{
		case 1:{
			//Đăng nhập
			
			//
			String TenTaikhoan= request.getParameter("TenTaiKhoan").trim();
			
			String MatKhau= request.getParameter("MatKhau").trim();
			//
			
			int FlagKiemTraDangNhap= control_User.KiemTraDangNhap(TenTaikhoan, MatKhau);
			
			if(FlagKiemTraDangNhap!=-1)
			{
				request.setAttribute("FlagKiemTraDangNhap", FlagKiemTraDangNhap);
				//tạo session MaKH lưu lại
				session.removeAttribute("MaKH");
				session.setAttribute("MaKH", FlagKiemTraDangNhap);
				session.removeAttribute("TenTK");
				session.setAttribute("TenTK", TenTaikhoan);//nhớ điền tên tk vào
			}
			else
			{
				//đưa lên thông báo đăng nhập ko thành côgn
			}
			
				} break;
		case 2:{
			//Đăng Kí
			//
			
			//
			int FlagKiemTraDangKi = control_User.DangKiTaiKhoan("hiep10", "123456");
			request.setAttribute("FlagKiemTraDangKi", FlagKiemTraDangKi);
			
			
			
			
		}break;
		case 3:{
			
		}break;
		case 4:{
			
		}break;
		case 5:{
			//Đăng Xuất
			session.removeAttribute("TenTK");
			session.setAttribute("MaKH", null);
			session.removeAttribute("MaKH");
			session.setAttribute("TenTK", null);
			
		}break;
		
		default: break;
		
		}
		
		
		
		
		dispatcher.forward(request, response);
		
		//
	
		
		
		
		
	
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
