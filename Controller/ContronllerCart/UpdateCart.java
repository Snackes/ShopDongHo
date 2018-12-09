package ContronllerCart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ModelBean.Cart;
import ModelService.XuLiGioHang;

/**
 * Servlet implementation class UpdateCart
 */
@WebServlet("/UpdateCart")
public class UpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lấy sô lượng và mã sản phẩm ra để cập nhật
		int SoLuong=Integer.parseInt(request.getParameter("SoLuong"));
		int MaSP=Integer.parseInt(request.getParameter("MaSP"));
        XuLiGioHang xl=new XuLiGioHang();
        List<Cart> listGH = xl.LayGioHang(request);
        //lấy sản phẩm ra để cập nhật
        Cart Sp=new Cart();
        Sp=null;
        for(int i=0;i<listGH.size();i++) {
        	if(listGH.get(i).getMaSP()==MaSP)
        	{
        		Sp=listGH.get(i);
        		break;
        	}
        }
        Sp.setSoLuong(SoLuong);//SoLuong sẽ bằng 1 khi nó ở trang sản phẩm
        request.getSession().setAttribute("GioHang", listGH);		
        request.getSession().setAttribute("SLIConGH", xl.TongSoLuong(request));
		
	}

}
