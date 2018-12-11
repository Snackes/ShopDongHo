package ControllerSanPham;

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
 * Servlet implementation class TimKiemTheoTenSanPham
 */
@WebServlet("/TimKiemTheoTenSanPham")
public class TimKiemTheoTenSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimKiemTheoTenSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		XuLiSanPham xlsp=new XuLiSanPham();
		String ChuoiTK=request.getParameter("ChuoiTK");
		SanPham[]listsp=xlsp.TimKiemTheoTenSanPham(ChuoiTK);
		request.setAttribute("KetQuaTK", listsp);
		RequestDispatcher dispatcher=request.getRequestDispatcher("view/LocSanPham.jsp");
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
