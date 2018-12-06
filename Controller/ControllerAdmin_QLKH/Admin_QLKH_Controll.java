package ControllerAdmin_QLKH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.sql.Result;

import org.json.JSONException;
import org.json.JSONObject;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.List;

import java.sql.ResultSet;
import java.sql.SQLException;

import ModelBean.KhachHang;
import ModelService.Admin_QLKH_XulyTT;

/**
 * Servlet implementation class Admin_QLKH_Controll
 */
@WebServlet("/Admin_QLKH_Controll")
public class Admin_QLKH_Controll<JSONObject> extends HttpServlet {
	
	int ma_kh = 0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_QLKH_Controll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_QLTK.jsp");
		Admin_QLKH_XulyTT control_SP = new Admin_QLKH_XulyTT();
		KhachHang[] dskh = control_SP.Funct_Admin_DSKH();
		request.setAttribute("Funct_Admin_DSKH", dskh);
		
    	dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher= request.getRequestDispatcher("admin/Admin_QLTK.jsp");
		Admin_QLKH_XulyTT control_SP = new Admin_QLKH_XulyTT();
		
		int ma_kh = Integer.parseInt(request.getParameter("MaKH"));
    	if(ma_kh != 0)
    	{
    	//ResultSet ds_dh_kh = control_SP.Funct_Admin_DSHDB(ma_kh);
    	ResultSet ctkh = control_SP.Funct_Admin_CTKH(ma_kh);

    	try {
			while(ctkh.next())
			{
				String hoten = ctkh.getString("tenkh");
				String email = ctkh.getString("email");
				int sdt = ctkh.getInt("sdt");
				String diachi = ctkh.getString("diachi");
				/*response.setContentType("application/xml");
				response.getWriter().write("<?xml version='1.0' encoding='UTF-8'?>");
				response.getWriter().write("<ctkh>");
				response.getWriter().write("<Hoten>"+ hoten + "</Hoten>");
				response.getWriter().write("<Email>"+ email +"</Email>");
				response.getWriter().write("<Sdt>"+ sdt +"</Sdt>");
				response.getWriter().write("<Diachi>"+ diachi +"</Diachi>");
				response.getWriter().write("</ctkh>");*/
				
				response.setContentType("application/xml;charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");

				writer.append("<ctkh>");
				writer.append("<Hoten>").append(hoten).append("</Hoten>");
				writer.append("<Email>").append(email).append("</Email>");
				writer.append("<Sdt>").append(""+sdt).append("</Sdt>");
				writer.append("<Diachi>").append(diachi).append("</Diachi>");
				writer.append("</ctkh>");
				writer.close();
				
	            /*JSONObject object;
	            
	            object("tenkh", ctkh.getString("tenkh"));
	            object.put("name", ctkh.getString("email"));
	            object.put("email", listStudent.get(index).getEmail());
	 
	            response.setContentType("application/json;charset=UTF-8");
	            response.getWriter().write(object.toString());*/

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	/*try {
			while(ds_dh_kh.next())
			{
				response.getWriter().write("<ds_dh_kh>");
				response.getWriter().write("<MaHDB>"+ ds_dh_kh.getInt("mahdb") +"</MaHDB>");
				response.getWriter().write("<Ngayban>"+ ds_dh_kh.getDate("ngayban") +"</Ngayban>");
				response.getWriter().write("<Tongtien>"+ ds_dh_kh.getFloat("tongtien") +"</Tongtien>");
				response.getWriter().write("<Trangthai>"+ ds_dh_kh.getInt("trangthai") +"</Trangthai>");
				response.getWriter().write("</ds_dh_kh>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
    	
    	}
    	dispatcher.forward(request, response);
	}

}
