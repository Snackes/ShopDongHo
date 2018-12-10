package ThongTinNguoiDung;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelBean.KhachHang;
import ModelBean.MD5Library;
import ModelService.TuongTacUser;

/**
 * Servlet implementation class ThongTinNguoiDung
 */
@WebServlet("/ThongTinNguoiDung")
public class ThongTinNguoiDung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongTinNguoiDung() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/ThongTinNguoiDung.jsp");
		HttpSession session = request.getSession();
		TuongTacUser control_User= new TuongTacUser();
		String ThongBao=null;//biến này để phản hồi lại cho ajax
		
		
		
		if(session.getAttribute("MaKH")!=null)
		{
			int MaKH=(Integer)session.getAttribute("MaKH");
			
			KhachHang khachhang= control_User.LoadThongTinTaiKhoan(MaKH);
			request.setAttribute("ThongTinKhachHang", khachhang);
		}
		else			
		{
			ServletContext context= getServletContext();
			RequestDispatcher rd= context.getRequestDispatcher("/TrangChu");
			rd.forward(request, response);
		}
		
		
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		TuongTacUser control_User= new TuongTacUser();
		String ThongBao=null;//biến này để phản hồi lại cho ajax
		
		int MaKH=(Integer)session.getAttribute("MaKH");
		
		int flagAction =  Integer.parseInt(request.getParameter("flagActionThongTinNguoiDung"));
		
		
		switch (flagAction) {
		case 1:
		{
			//nếu ko có cập nhật mk
			String HoTen = request.getParameter("HoTen");
			String DiaChi =request.getParameter("DiaChi");
			int SDT =Integer.parseInt(request.getParameter("SDT"));
			String Email = request.getParameter("EmailThongTin");
			int flagupdatethongtin =-1;
			flagupdatethongtin = control_User.UpdateThongTinTaiKhoan(MaKH, HoTen, SDT, Email, DiaChi);
			if(flagupdatethongtin==1)
			{
				ThongBao="ThanhCong";
			}
			else
			{
				ThongBao="ThatBai";
			}
		}
			
			break;
		case 2:
		{
			String HoTen = request.getParameter("HoTen");
			String DiaChi =request.getParameter("DiaChi");
			int SDT =Integer.parseInt(request.getParameter("SDT"));
			String Email = request.getParameter("EmailThongTin");
			
			String MatKhauCu = request.getParameter("MatKhauCu");
			String MatKhauCuMaHoa = MD5Library.md5(MatKhauCu);
			String MatKhauMoi= request.getParameter("MatKhauMoi");
			String MatKhauMoiMaHoa = MD5Library.md5(MatKhauMoi);
			
			if(MatKhauCuMaHoa.equals(MatKhauMoiMaHoa)==true)
			{
				//khoong cho nhap pass moi giong pass cu
				ThongBao="MatKhauMoiKhongDuocTrung";
			}
			else
			{
				int flagupdatethongtin =-1;
				int flagdoimatkhau=-1;
				
				flagdoimatkhau = control_User.DoiMatKhau(MaKH, MatKhauCuMaHoa, MatKhauMoiMaHoa);
				
				//
				
				if(flagdoimatkhau==-1)
				{
					ThongBao="MatKhauSai";
				}
				else
				{
					flagupdatethongtin = control_User.UpdateThongTinTaiKhoan(MaKH, HoTen, SDT, Email, DiaChi);
					if(flagupdatethongtin==1)
					{
						ThongBao="ThanhCong";
					}
					else
					{
						ThongBao="ThatBai";
					}
				}
			}
			
		}break;

		default:
			break;
		}
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(ThongBao);
		
		
		
		
		
		
		
		
		
		
	}

}
