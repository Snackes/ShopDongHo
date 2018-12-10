package ControllerHeader;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelBean.MD5Library;
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
		
		
		TuongTacUser control_User= new TuongTacUser();
		String ThongBao=null;//biến này để phản hồi lại cho ajax
		
		
		
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
			String MatKhauMaHoa = MD5Library.md5(MatKhau);
			
			int FlagKiemTraDangNhap= control_User.KiemTraDangNhap(TenTaikhoan, MatKhauMaHoa);
			
			if(FlagKiemTraDangNhap!=-1)
			{
				request.setAttribute("FlagKiemTraDangNhap", FlagKiemTraDangNhap);
				//tạo session MaKH lưu lại
				session.removeAttribute("MaKH");
				session.setAttribute("MaKH", FlagKiemTraDangNhap);
				session.removeAttribute("TenTK");
				session.setAttribute("TenTK", TenTaikhoan);//nhớ điền tên tk vào
				//thông báo thành công
				ThongBao="ThanhCong";
				
			}
			else
			{
				//đưa lên thông báo đăng nhập ko thành côgn
				ThongBao="ThatBai";
			}
			
				} break;
		case 2:{
			//Đăng Kí
			//kiểm tra Tk tồn tại hay chưa trước 
			//nếu chưa mới insert
			//
			//--lấy thông tin từ form về
			//String Email = request.getParameter("Email").trim();
			String Email = request.getParameter("Email");
			String TenTaiKhoan = request.getParameter("TenTaiKhoanDK").trim();
			String MatKhau = request.getParameter("MatKhauDK").trim();
			String MatKhauMaHoa= MD5Library.md5(MatKhau);
			String MatKhauXacNhan = request.getParameter("MatKhauXacNhan").trim();
			int FlagKiemTraDangKi=-1;
			
			if(MatKhau.equalsIgnoreCase(MatKhauXacNhan)) 
			{
				// 
				FlagKiemTraDangKi = control_User.DangKiTaiKhoan(Email,TenTaiKhoan,MatKhauMaHoa);
				//if flagKiemTraDangKi = -1 :Username already exist else return MaKH
				if(FlagKiemTraDangKi==-1)
				{
					//tryền lên thông báo tk đã tồn tại
					ThongBao="TaiKhoanTonTai";
				}
				else
				{
					//truyền lên thông báo đk thành công
					ThongBao="ThanhCong";
				}
				
				
			}
			else
			{
				//truyền lên thông báo mật khẩu trùng
				ThongBao="MatKhauTrung";
			}
			
			//
			
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
			ThongBao="";
			
		}break;
		
		default: break;
		
		}
		
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(ThongBao);
		//dispatcher.forward(request, response);
		
		
		
		
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
