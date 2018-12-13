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
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/LocSanPham.jsp");
		
		String action=request.getParameter("action");
		if(action==null)
		{
			XuLiSanPham xl= new XuLiSanPham();
			String GioiTinh=null;
			GioiTinh=request.getParameter("GioiTinh");
			request.setAttribute("GioiTinh", GioiTinh);
			
			String LoaiDay=null;
			LoaiDay=request.getParameter("LoaiDay");
			request.setAttribute("LoaiDay", LoaiDay);

			
			String KieuMay=null;
			KieuMay=request.getParameter("KieuMay");
			request.setAttribute("KieuMay", KieuMay);
			
			
			Integer MaTH=null;
			if(request.getParameter("MaTH")!=null)
			{
				MaTH=Integer.parseInt(request.getParameter("MaTH"));
			}
			request.setAttribute("MaTH", MaTH);
			
			
			Integer KhoangGia=null;
			Double GiaMax=null;
			Double GiaMin=null;
			if(request.getParameter("KhoangGia")!=null)
			{
				KhoangGia=Integer.parseInt(request.getParameter("KhoangGia"));


			if(KhoangGia==1)
			{
				GiaMin=(double) 0; GiaMax=(double) 1000000;
			}
			else
				if(KhoangGia==2)
				{
					GiaMin=(double) 1000000; GiaMax=(double) 2000000;
				}
				else
					if(KhoangGia==3)
					{
						GiaMin=(double) 2000000; GiaMax=(double) 7000000;
					}
					else
						if(KhoangGia==4)
						{
							GiaMin=(double) 7000000; GiaMax=(double) 15000000;
						}
						else
						{
							if(KhoangGia==5)
							{
								GiaMin=(double) 15000000;
							}
							
						}
			}
			
			request.setAttribute("KhoangGia", KhoangGia);
			SanPham[] listsp= xl.BoLocSanPham(MaTH, null, null, null, null, null, null, null, null, null, null, null, LoaiDay, null, GioiTinh, GiaMin, GiaMax, KieuMay, null);
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


			
			XuLiSanPham xlsp=new XuLiSanPham();
			SanPham[] listDaok=xlsp.phantrang(start, end, listsp);
			request.getSession().setAttribute("LocSanPhamTong", listsp);
			request.getSession().setAttribute("LocSanPham", listDaok);
			//request.getSession().setAttribute("LocSanPham", listsp);	
		}
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session = request.getSession();
		//String dcm ="cccc";
		 //String dm = request.getParameter("flagActionLocSanPham");
		request.getSession().setAttribute("LocSanPham", null);
		String duoi1trieu = request.getParameter("duoi1trieu");
		String tu1_2trieu = request.getParameter("tu1_2trieu");
		String tu2_7trieu = request.getParameter("tu2_7trieu");
		String tu7_15trieu = request.getParameter("tu7_15trieu");
		String tren15trieu = request.getParameter("tren15trieu");
		
		
		Integer SEIKO= Integer.parseInt(request.getParameter("SEIKO"));
			if(SEIKO==1)
				SEIKO=1;
			else
				SEIKO=null;
		
		
		Integer ROLEX =Integer.parseInt( request.getParameter("ROLEX"));
			if(ROLEX==1)
			{
				if(SEIKO==null)
				{
					SEIKO=2;
					ROLEX=null;
				}
				else {
					ROLEX=2;
				}
			}
			else
				ROLEX=null;
		
		
		Integer OMEGA=Integer.parseInt( request.getParameter("OMEGA"));
			if(OMEGA==1)
			{
				if(SEIKO==null)
				{
					SEIKO=3;
					OMEGA=null;
				}
				else {
					OMEGA=3;
				}
			}
			else
				OMEGA=null;
		
		
		Integer VICTORINOX=Integer.parseInt( request.getParameter("VICTORINOX"));
			if(VICTORINOX==1)
			{	
				if(SEIKO==null)
				{
					SEIKO=4;
					VICTORINOX=null;
				}
				else {
					VICTORINOX=4;
				}
			}
			else
				VICTORINOX=null;
		
		
		Integer BREITLING=Integer.parseInt( request.getParameter("BREITLING"));
			if(BREITLING==1)
			{
				if(SEIKO==null)
				{
					SEIKO=5;
					BREITLING=null;
				}
				else {
					BREITLING=5;
				}
			}
			else
				BREITLING=null;
		
		
		Integer GUCCI=Integer.parseInt( request.getParameter("GUCCI"));
			if(GUCCI==1)
			{
				if(SEIKO==null)
				{
					SEIKO=6;
					GUCCI=null;
				}
				else {
					GUCCI=6;
				}
			}
			else
				GUCCI=null;
		
		
		Integer D_G=Integer.parseInt(request.getParameter("D_G"));
			if(D_G==1)
			{
				if(SEIKO==null)
				{
					SEIKO=7;
					D_G=null;
				}
				else {
					D_G=7;
				}
			}
			else
				D_G=null;
		
		
		Integer BOVET= Integer.parseInt(request.getParameter("BOVET"));
			if(BOVET==1)
			{
				if(SEIKO==null)
				{
					SEIKO=8;
					BOVET=null;
				}
				else {
					BOVET=8;
				}
			}
			else
				BOVET=null;
		
		
		Integer TISSOT=Integer.parseInt(request.getParameter("TISSOT"));
			if(TISSOT==1)
			{
				if(SEIKO==null)
				{
					SEIKO=9;
					TISSOT=null;
				}
				else {
					TISSOT=9;
				}
			}
			else
				TISSOT=null;
		
		
		Integer HERMES=Integer.parseInt(request.getParameter("HERMES"));
			if(HERMES==1)
			{
				if(SEIKO==null)
				{
					SEIKO=10;
					HERMES=null;
				}
				else {
					HERMES=10;
				}
			}
			else
				HERMES=null;
		
		
		Integer HUBLOT=Integer.parseInt(request.getParameter("HUBLOT"));
			if(HUBLOT==1)
			{
				if(SEIKO==null)
				{
					SEIKO=11;
					HUBLOT=null;
				}
				else {
					HUBLOT=11;
				}
			}
			else
				HUBLOT=null;
		
		
		Integer PUMA=Integer.parseInt( request.getParameter("PUMA"));
			if(PUMA==1)
			{
				if(SEIKO==null)
				{
					SEIKO=12;
					PUMA=null;
				}
				else {
					PUMA=12;
				}
			}
			else
				PUMA=null;
		
		
		
		String NAM = request.getParameter("NAM");
		String Nu = request.getParameter("Nu");
		String UNISEX = request.getParameter("UNISEX");
				
		String DayDa = request.getParameter("DayDa");
		if(DayDa.equals("1"))
			DayDa="da";
		else
			DayDa=null;
		String DayKimLoai = request.getParameter("DayKimLoai");
		if(DayKimLoai.equals("1"))
		{
			if(DayDa==null)
			{
				DayDa="Kim Loại";
				DayKimLoai=null;
			}
			else
				DayKimLoai="Kim Loại";
		}
		else
			DayKimLoai=null;
		
		String Pin = request.getParameter("Pin");
		if(Pin.equals("1"))
			Pin="Pin";
		else
			Pin=null;
		String Automatic = request.getParameter("Automatic");
		if(Automatic.equals("1"))
		{
			if(Pin==null)
			{
				Pin="Automatic";
				Automatic=null;
			}
			else
				Automatic="Automatic";
		}
		else
			Automatic=null;
		Double GiaMax=null;
		Double GiaMin=null;
		if(duoi1trieu.equals("1"))
		{
			GiaMin=(double) 0; GiaMax=(double) 1000000;
		}
		else
			if(tu1_2trieu.equals("1"))
			{
				GiaMin=(double) 1000000; GiaMax=(double) 2000000;
			}
			else
				if(tu2_7trieu.equals("1"))
				{
					GiaMin=(double) 2000000; GiaMax=(double) 7000000;
				}
				else
					if(tu7_15trieu.equals("1"))
					{
						GiaMin=(double) 7000000; GiaMax=(double) 15000000;
					}
					else
					{
						if(tren15trieu.equals("1"))
						{
							GiaMin=(double) 15000000;
						}
						
					}
		String GioiTinh=null;
		if(NAM.equals("1"))
		{
			GioiTinh="Nam";
		}
		else
			if(Nu.equals("1"))
			{
				GioiTinh="Nữ";
			}
			else
				if(UNISEX.equals("1"))
				{
					GioiTinh="Unisex";
				}
		XuLiSanPham xl= new XuLiSanPham();

		SanPham[] listsp= xl.BoLocSanPham(SEIKO, ROLEX, OMEGA, VICTORINOX, BREITLING, GUCCI, D_G, BOVET, TISSOT, HERMES, HUBLOT, PUMA, DayDa, DayKimLoai, GioiTinh, GiaMin, GiaMax, Pin, Automatic);
		
		//request.getSession().setAttribute("LocSanPham", listsp);
    	int start=0;
    	int end=0;
    	if(listsp.length<12)
    	{
    		end=listsp.length;
    	}
    	else
    	{
			if(listsp.length<24)
			{
				end=12;
			}

			else
			{
				end=listsp.length;
			}
    	}
		if(request.getParameter("start")!=null)
			start= Integer.parseInt( request.getParameter("start"));
		if(request.getParameter("end")!=null)
			end=Integer.parseInt( request.getParameter("end"));
		XuLiSanPham xlsp=new XuLiSanPham();
		SanPham[] listDaok=xlsp.phantrang(start, end, listsp);
		request.getSession().setAttribute("LocSanPhamTong", listsp);
		request.getSession().setAttribute("LocSanPham", listDaok);
		
		
	}



}

