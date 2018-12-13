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
		int start=0;
    	int end;

    	if(listsp.length<12)
    	{
    		end=listsp.length;
    	}
    	else
			if(listsp.length<24)
			{
				end=12;
			}

			else
			{
				end=listsp.length;
			}
    	if(request.getParameter("start")!=null)
			start= Integer.parseInt( request.getParameter("start"));
		if(request.getParameter("end")!=null)
			end=Integer.parseInt( request.getParameter("end"));
		//request.setAttribute("KetQuaTK", listsp);
		SanPham[] listDaok=xlsp.phantrang(start, end, listsp);
		request.getSession().setAttribute("LocSanPhamTong", listsp);
		request.getSession().setAttribute("LocSanPham", listDaok);
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
