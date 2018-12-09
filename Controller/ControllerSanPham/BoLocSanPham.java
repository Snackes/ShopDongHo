package ControllerSanPham;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.SanPham;
import ModelService.XuLiSanPham;

/**
 * Servlet implementation class BoLocSanPham
 */
@WebServlet("/BoLocSanPham")
public class BoLocSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoLocSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String KieuMay=request.getParameter("KieuMay").toString();
		String LoaiDay;
		if((request.getParameter("LoaiDay"))==null) {
			LoaiDay=null;
		}
		else
			LoaiDay =(String) request.getParameter("LoaiDay").toString();
		XuLiSanPham xl= new XuLiSanPham();
		SanPham[] listsp= xl.BoLocSanPham(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, KieuMay, null);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
