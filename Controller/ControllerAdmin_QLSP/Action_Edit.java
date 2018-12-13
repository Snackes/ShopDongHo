package ControllerAdmin_QLSP;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.SanPham;
import ModelBean.ThuongHieu;
import ModelService.Admin_QLSP_XulyTT;

/**
 * Servlet implementation class Action_Edit
 */
@WebServlet("/Action_Edit")
public class Action_Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Action_Edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admin_QLSP_XulyTT controll_edit = new Admin_QLSP_XulyTT();
		
		int flag = Integer.parseInt(request.getParameter("FLAG"));
		int masp = Integer.parseInt(request.getParameter("MaSP"));
		
		switch(flag)
		{
		case 0:
			//edit sp
	 		String tensp = request.getParameter("TenSP");
	 		int thuonghieu = Integer.parseInt(request.getParameter("ThH"));
	 		String kieumay = request.getParameter("Kieumay");
	 		String gioitinh = request.getParameter("Gioitinh");
	 		String kichco = request.getParameter("Kichco");
	 		String chatlieuvo = request.getParameter("Vo");
	 		String chatlieukinh = request.getParameter("Kinh");
	 		String chatlieuday = request.getParameter("Day");
	 		String dochiunuoc = request.getParameter("Chiunuoc");
	 		String baohanh = request.getParameter("Baohanh");
	 		int soluong = Integer.parseInt(request.getParameter("Soluong"));
	 		float giaban = Float.parseFloat(request.getParameter("Giaban"));
	 		int sale = Integer.parseInt(request.getParameter("Sale"));
			
	 		controll_edit.Proc_Admin_Sua_CTSanPham(masp, tensp, thuonghieu, kieumay, gioitinh, kichco, chatlieuvo, chatlieukinh, chatlieuday, dochiunuoc, baohanh, soluong, giaban, sale);
			response.getWriter().write("Edit successfull !");
			break;
		case 1:
			//upload pic
			String anh1 = request.getParameter("Anh1");
			String anh2 = request.getParameter("Anh2");
			String anh3 = request.getParameter("Anh3");
			String anh4 = request.getParameter("Anh4");
			
			controll_edit.Proc_Admin_UploadPic(masp, anh1, anh2, anh3, anh4);
			response.getWriter().write("Edit successfull !");
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
