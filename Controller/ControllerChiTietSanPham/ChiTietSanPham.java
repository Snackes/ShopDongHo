package ControllerChiTietSanPham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.SanPham;
import ModelService.XuLiSanPham;

/**
 * Servlet implementation class ChiTietSanPham
 */
@WebServlet("/ChiTietSanPham")
public class ChiTietSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/SanPham.jsp");
		XuLiSanPham control_SP=  new XuLiSanPham();
		//
		int MaSP=Integer.parseInt(request.getParameter("MaSP"));
		//
		//lấy chi tiết sản phẩm theo MaSP
		SanPham ThongTinChiTietSanPham = control_SP.Fun_LayThongTinSanPham(MaSP);
		request.setAttribute("LayThongTinChiTiet", ThongTinChiTietSanPham);
		
		//lấy ngẫu nhiên 4 sản phẩm cho có thể bạn chưa biết
		SanPham[] CoTheBanQuanTam = control_SP.Func_Lay_BonSanPhamNgauNhien();
		request.setAttribute("CoTheBanQuanTam", CoTheBanQuanTam);
		
		
		
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
