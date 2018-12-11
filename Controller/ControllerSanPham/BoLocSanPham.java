package ControllerSanPham;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelBean.SanPham;
import ModelService.XuLiSanPham;

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
		HttpSession session = request.getSession();
		//kiểu máy
		//dùng pin
		String KieuMay1=null;
		String KieuMay2=null;
		if(session.getAttribute("KieuMay1")==null) {
			KieuMay1=request.getParameter("KieuMay1");
			session.setAttribute("KieuMay1", KieuMay1);
		}
		else
		{
			KieuMay1=session.getAttribute("KieuMay1").toString();
		}
		
		if(session.getAttribute("KieuMay2")==null) {
			if(KieuMay1==null)
			{
				KieuMay1=request.getParameter("KieuMay2");
				session.setAttribute("KieuMay2", KieuMay1);
			}
			else
			{
				KieuMay2=request.getParameter("KieuMay2");
				session.setAttribute("KieuMay2", KieuMay2);
			}
		}
		else
		{
			if(KieuMay1==null)
			{
				KieuMay1=session.getAttribute("KieuMay2").toString();
			}
			else
				KieuMay2=session.getAttribute("KieuMay2").toString();
		}
		
		
		
		//loại dây
		String LoaiDay1=null;
		String LoaiDay2=null;
		if(session.getAttribute("LoaiDay1")==null) {
			LoaiDay1=request.getParameter("LoaiDay1");
			session.setAttribute("LoaiDay1", LoaiDay1);
		}
		else
		{
			LoaiDay1=session.getAttribute("LoaiDay1").toString();
		}
		
		

		if(session.getAttribute("LoaiDay2")==null) {
			if(LoaiDay1==null)
			{
				LoaiDay1=request.getParameter("LoaiDay2");
				session.setAttribute("LoaiDay2", LoaiDay1);
			}
			else
			{
				LoaiDay2=request.getParameter("LoaiDay2");
				session.setAttribute("LoaiDay2", LoaiDay2);
			}
		}
		else
		{
			if(LoaiDay1==null)
				LoaiDay1=session.getAttribute("LoaiDay2").toString();
			else
				LoaiDay2=session.getAttribute("LoaiDay2").toString();
		}
		
		
		//Giới tính sử dụng
		String GioiTinh=null;
		if(request.getParameter("GioiTinhSuDung")!=null) {
			GioiTinh=request.getParameter("GioiTinhSuDung");
			session.setAttribute("GioiTinhSuDung", GioiTinh);
		}
		else
		{
			GioiTinh=(String) session.getAttribute("GioiTinhSuDung");
		}


		//Mã thương hiệu Thương hiệu
		
		Integer ThuongHieu1=null;
		if((session.getAttribute("ThuongHieu1"))==null) {
			if(request.getParameter("ThuongHieu1")!=null)
				ThuongHieu1=Integer.parseInt(request.getParameter("ThuongHieu1"));
			session.setAttribute("ThuongHieu1", ThuongHieu1);
		}
		else
		{
			ThuongHieu1=Integer.parseInt(session.getAttribute("ThuongHieu1").toString());
		}

		//thương hiệu 2
		Integer ThuongHieu2=null;
		if((session.getAttribute("ThuongHieu2"))==null) {
			if(request.getParameter("ThuongHieu2")!=null)
				ThuongHieu2=Integer.parseInt(request.getParameter("ThuongHieu2"));
			session.setAttribute("ThuongHieu2", ThuongHieu2);
		}
		else
		{
			ThuongHieu2=Integer.parseInt(session.getAttribute("ThuongHieu2").toString());
		}
		//thương hiệu 3
		Integer ThuongHieu3=null;
		if((session.getAttribute("ThuongHieu3"))==null) {
			if(request.getParameter("ThuongHieu3")!=null)
			ThuongHieu3=Integer.parseInt(request.getParameter("ThuongHieu3"));
			session.setAttribute("ThuongHieu3", ThuongHieu3);
		}
		else
		{
			ThuongHieu3=Integer.parseInt(session.getAttribute("ThuongHieu3").toString());
		}
		
		Integer ThuongHieu4=null;
		if((session.getAttribute("ThuongHieu4"))==null) {
			if(request.getParameter("ThuongHieu4")!=null)
				ThuongHieu4=Integer.parseInt(request.getParameter("ThuongHieu4"));
			session.setAttribute("ThuongHieu4", ThuongHieu4);
		}
		else
		{
			ThuongHieu4=Integer.parseInt(session.getAttribute("ThuongHieu4").toString());
		}
		
		//Khoản giá
		Integer KhoangGia;
		Double GiaMin=null;
		Double GiaMax=null;

			if((request.getParameter("KhoangGia"))!=null) {
				KhoangGia =Integer.parseInt(request.getParameter("KhoangGia"));
				if(KhoangGia==1)
				{
					GiaMin=(double) 0; GiaMax=(double) 1000000;
				}
				if(KhoangGia==2)
				{
					GiaMin=(double) 1000000; GiaMax=(double) 2000000;
				}
				if(KhoangGia==3)
				{
					GiaMin=(double) 2000000; GiaMax=(double) 7000000;
				}
				if(KhoangGia==4)
				{
					GiaMin=(double) 7000000; GiaMax=(double) 15000000;
				}
				if(KhoangGia==5)
				{
					GiaMin=(double) 15000000;
				}
				session.setAttribute("KhoangGia", KhoangGia);
			}
		
		else
		{
			if(session.getAttribute("KhoangGia")!=null)
			{
				KhoangGia =Integer.parseInt(session.getAttribute("KhoangGia").toString());
				if(KhoangGia==1)
				{
					GiaMin=(double) 0; GiaMax=(double) 1000000;
				}
				if(KhoangGia==2)
				{
					GiaMin=(double) 1000000; GiaMax=(double) 2000000;
				}
				if(KhoangGia==3)
				{
					GiaMin=(double) 2000000; GiaMax=(double) 7000000;
				}
				if(KhoangGia==4)
				{
					GiaMin=(double) 7000000; GiaMax=(double) 15000000;
				}
				if(KhoangGia==5)
				{
					GiaMin=(double) 15000000;
				}
			}
		}

		XuLiSanPham xl= new XuLiSanPham();
		SanPham[] listsp= xl.BoLocSanPham(ThuongHieu1, ThuongHieu2, ThuongHieu3, ThuongHieu4, null, null, null, null, null, null, null, null, LoaiDay1, LoaiDay2, GioiTinh, GiaMin, GiaMax, KieuMay1, KieuMay2);
		request.setAttribute("LocSanPham", listsp);
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/LocSanPham.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//dùng pin
				String KieuMay1=null;
				String KieuMay2=null;
				if(session.getAttribute("KieuMay1")==null) {
					KieuMay1=request.getParameter("KieuMay1");
					session.setAttribute("KieuMay1", KieuMay1);
				}
				else
				{
					KieuMay1=session.getAttribute("KieuMay1").toString();
				}
				
				if(session.getAttribute("KieuMay2")==null) {
					if(KieuMay1==null)
					{
						KieuMay1=request.getParameter("KieuMay2");
						session.setAttribute("KieuMay2", KieuMay1);
					}
					else
					{
						KieuMay2=request.getParameter("KieuMay2");
						session.setAttribute("KieuMay2", KieuMay2);
					}
				}
				else
				{
					if(KieuMay1==null)
					{
						KieuMay1=session.getAttribute("KieuMay2").toString();
					}
					else
						KieuMay2=session.getAttribute("KieuMay2").toString();
				}
				
				
				
				//loại dây
				String LoaiDay1=null;
				String LoaiDay2=null;
				if(session.getAttribute("LoaiDay1")==null) {
					LoaiDay1=request.getParameter("LoaiDay1");
					session.setAttribute("LoaiDay1", LoaiDay1);
				}
				else
				{
					LoaiDay1=session.getAttribute("LoaiDay1").toString();
				}
				
				

				if(session.getAttribute("LoaiDay2")==null) {
					if(LoaiDay1==null)
					{
						LoaiDay1=request.getParameter("LoaiDay2");
						session.setAttribute("LoaiDay2", LoaiDay1);
					}
					else
					{
						LoaiDay2=request.getParameter("LoaiDay2");
						session.setAttribute("LoaiDay2", LoaiDay2);
					}
				}
				else
				{
					if(LoaiDay1==null)
						LoaiDay1=session.getAttribute("LoaiDay2").toString();
					else
						LoaiDay2=session.getAttribute("LoaiDay2").toString();
				}
				
				
				//Giới tính sử dụng
				String GioiTinh=null;
				if(request.getParameter("GioiTinhSuDung")!=null) {
					GioiTinh=request.getParameter("GioiTinhSuDung");
					session.setAttribute("GioiTinhSuDung", GioiTinh);
				}
				else
				{
					GioiTinh=(String) session.getAttribute("GioiTinhSuDung");
				}


				//Mã thương hiệu Thương hiệu
				
				Integer ThuongHieu1=null;
				if((session.getAttribute("ThuongHieu1"))==null) {
					if(request.getParameter("ThuongHieu1")!=null)
						ThuongHieu1=Integer.parseInt(request.getParameter("ThuongHieu1"));
					session.setAttribute("ThuongHieu1", ThuongHieu1);
				}
				else
				{
					ThuongHieu1=Integer.parseInt(session.getAttribute("ThuongHieu1").toString());
				}

				//thương hiệu 2
				Integer ThuongHieu2=null;
				if((session.getAttribute("ThuongHieu2"))==null) {
					if(request.getParameter("ThuongHieu2")!=null)
						ThuongHieu2=Integer.parseInt(request.getParameter("ThuongHieu2"));
					session.setAttribute("ThuongHieu2", ThuongHieu2);
				}
				else
				{
					ThuongHieu2=Integer.parseInt(session.getAttribute("ThuongHieu2").toString());
				}
				//thương hiệu 3
				Integer ThuongHieu3=null;
				if((session.getAttribute("ThuongHieu3"))==null) {
					if(request.getParameter("ThuongHieu3")!=null)
					ThuongHieu3=Integer.parseInt(request.getParameter("ThuongHieu3"));
					session.setAttribute("ThuongHieu3", ThuongHieu3);
				}
				else
				{
					ThuongHieu3=Integer.parseInt(session.getAttribute("ThuongHieu3").toString());
				}
				
				Integer ThuongHieu4=null;
				if((session.getAttribute("ThuongHieu4"))==null) {
					if(request.getParameter("ThuongHieu4")!=null)
						ThuongHieu4=Integer.parseInt(request.getParameter("ThuongHieu4"));
					session.setAttribute("ThuongHieu4", ThuongHieu4);
				}
				else
				{
					ThuongHieu4=Integer.parseInt(session.getAttribute("ThuongHieu4").toString());
				}
				

			
				//Khoản giá
				Integer KhoangGia;
				Double GiaMin=null;
				Double GiaMax=null;

					if((request.getParameter("KhoangGia"))!=null) {
						KhoangGia =Integer.parseInt(request.getParameter("KhoangGia"));
						if(KhoangGia==1)
						{
							GiaMin=(double) 0; GiaMax=(double) 1000000;
						}
						if(KhoangGia==2)
						{
							GiaMin=(double) 1000000; GiaMax=(double) 2000000;
						}
						if(KhoangGia==3)
						{
							GiaMin=(double) 2000000; GiaMax=(double) 7000000;
						}
						if(KhoangGia==4)
						{
							GiaMin=(double) 7000000; GiaMax=(double) 15000000;
						}
						if(KhoangGia==5)
						{
							GiaMin=(double) 15000000;
						}
						session.setAttribute("KhoangGia", KhoangGia);
					}
				
				else
				{
					if(session.getAttribute("KhoangGia")!=null)
					{
						KhoangGia =Integer.parseInt(session.getAttribute("KhoangGia").toString());
						if(KhoangGia==1)
						{
							GiaMin=(double) 0; GiaMax=(double) 1000000;
						}
						if(KhoangGia==2)
						{
							GiaMin=(double) 1000000; GiaMax=(double) 2000000;
						}
						if(KhoangGia==3)
						{
							GiaMin=(double) 2000000; GiaMax=(double) 7000000;
						}
						if(KhoangGia==4)
						{
							GiaMin=(double) 7000000; GiaMax=(double) 15000000;
						}
						if(KhoangGia==5)
						{
							GiaMin=(double) 15000000;
						}
					}
				}

				XuLiSanPham xl= new XuLiSanPham();
				SanPham[] listsp= xl.BoLocSanPham(ThuongHieu1, ThuongHieu2, ThuongHieu3, ThuongHieu4, null, null, null, null, null, null, null, null, LoaiDay1, LoaiDay2, GioiTinh, GiaMin, GiaMax, KieuMay1, KieuMay2);
				request.setAttribute("LocSanPham", listsp);
	}

}
