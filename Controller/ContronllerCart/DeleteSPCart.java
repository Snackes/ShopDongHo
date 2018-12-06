package ContronllerCart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ModelBean.Cart;
import ModelBean.SanPham;
import ModelService.XuLiGioHang;

/**
 * Servlet implementation class DeleteSPCart
 */
@WebServlet("/DeleteSPCart")
public class DeleteSPCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteSPCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int MaSP=Integer.parseInt(request.getParameter("MaSP"));//lấy mã sản phẩm khi click vào nút xóa trên giỏ hàng
        XuLiGioHang xl=new XuLiGioHang();
        List<Cart> listGH = xl.LayGioHang(request);
        //kiểm tra sản phẩm này tồn tại trong giỏ hàng không
        Cart Sp=new Cart();
        for(int i=0;i<listGH.size();i++) {
        	if(listGH.get(i).getMaSP()==MaSP)
        	{
        		Sp=listGH.get(i);
        		break;
        	}
        }
        if (Sp != null) //nếu tồn tại cho xóa
        {
        	for(int i=0;i<listGH.size();i++)
        	{
        		if(listGH.get(i).getMaSP()==MaSP)
        		{	
        			listGH.remove(i);
        			double TongTienDH= xl.TongTienDonHang(request);
        			request.getSession().setAttribute("TongTienDH", TongTienDH);
        		}
        	}
        }
        if(listGH.size()==0)
        {
			request.getSession().setAttribute("GioHang", null);
            session.setAttribute("SLIConGH", null);//reset số lượng hiển thị trên icon giỏ hàng
    		RequestDispatcher dispatcher= request.getRequestDispatcher("view/GioHang_empty.jsp");//Nếu xóa hết thì cho về trang giỏ hàng trống
    		dispatcher.forward(request, response);
    		return;
        }
        RequestDispatcher dispatcher= request.getRequestDispatcher("view/GioHang.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("GioHang", null);
		RequestDispatcher dispatcher= request.getRequestDispatcher("view/GioHang_empty.jsp");//Nếu xóa hết thì cho về trang giỏ hàng trống
		dispatcher.forward(request, response);
	}

}
