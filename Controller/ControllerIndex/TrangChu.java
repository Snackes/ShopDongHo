package ControllerIndex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.SanPham;
import ModelService.XuLiGioHang;
import ModelService.XuLiSanPham;

/**
 * Servlet implementation class ShowSanPhamMoi
 */
@WebServlet("/TrangChu")
public class TrangChu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrangChu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		XuLiSanPham control_SP=new XuLiSanPham();
		
		SanPham[] danhsachmoi= control_SP.Proc_Lay_BonSanPhamNgauNhien();
		SanPham[] danhsachnoibat= control_SP.Proc_Lay_BonSanPhamNgauNhien();
		
		XuLiGioHang xl=new XuLiGioHang();
		int dm=xl.TongSoLuong(request);
		request.getSession().setAttribute("SLIConGH", dm);
		request.setAttribute("LayThongTinSanPhamMoi", danhsachmoi);
		request.setAttribute("LayThongTinSanPhamNoiBat", danhsachnoibat);
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/Index.jsp");
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
