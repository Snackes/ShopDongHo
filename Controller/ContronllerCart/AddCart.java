package ContronllerCart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.ant.SessionsTask;

import ModelBean.Cart;
import ModelBean.Item;
import ModelBean.SanPham;
import ModelService.XuLiSanPham;

/**
 * Servlet implementation class AddCart
 */
@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		XuLiSanPham xl = new XuLiSanPham();
		int SoLuong = 1;
		int MaSP=Integer.parseInt(request.getParameter("MaSP"));
		if (request.getParameter("MaSP") != null) 
		{
			MaSP = Integer.parseInt(request.getParameter("MaSP"));
			SanPham sp = xl.LayThongTinSanPhamChoCart(MaSP);
			if (sp != null) 
			{
				if (request.getParameter("SoLuong") != null) 
				{
					SoLuong = Integer.parseInt(request.getParameter("SoLuong"));
				}
				HttpSession session = request.getSession();
				//nếu giỏ hàng trống thì tạo giỏ hàng và thêm mới sản phẩm
				if (session.getAttribute("Cart") != null) 
				{
					Cart GH = new Cart();
					List<Item> ListSP = new ArrayList<Item>();
					Item item = new Item();
					item.setSoLuong(SoLuong);
					item.setSp(sp);
					item.setGiaBan(sp.getGiaBan());
					ListSP.add(item);
					GH.setItem(ListSP);//thêm sản phẩm vào giỏ
					session.setAttribute("Cart", GH);
				}
				else //trường hợp giỏ hàng đã có sản phẩm
				{
					Cart GH = (Cart) session.getAttribute("Cart");
					List<Item> listitem = GH.getItem();
					boolean check = false;
					for (Item item : listitem)
					{
						if (item.getSp().getMaSP() == sp.getMaSP())//nếu sản phẩm thêm vào đã có trong giỏ thì ta chỉ cập nhật số lượng
						{
							item.setSoLuong(item.getSoLuong() + SoLuong);
							check = true;
						}
					}
					if (check == false) //sản phẩm chưa có trong giỏ
					{
						Item item = new Item();
						item.setSoLuong(SoLuong);
						item.setSp(sp);
						item.setGiaBan(sp.getGiaBan());
						listitem.add(item);
					}
					session.setAttribute("Cart", GH);
				}
			}
		}
		response.sendRedirect(request.getContextPath()+"/view/GioHang.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
