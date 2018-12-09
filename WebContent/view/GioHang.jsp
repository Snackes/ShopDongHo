<%@page import="java.util.ArrayList"%>
<%@page import="ModelBean.Cart"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
	<title>Giỏ hàng</title>
	<link rel="stylesheet" href="/lib/vendor/fontawesome/css/all.css">
	<link rel="stylesheet" href="lib/css/GioHang.css">
</head>

<body>
	<%@ include file="/Layout/Header.jsp"%>

	<!---CONTENT HERE-->
	<!--list giỏ hàng-->
	<div class="container">
		<div class="row">
			<h2 style="font-size: 30px; font-weight: bold; margin-top: 20px; margin-bottom: 50px; text-align: left;">Giỏ Hàng</h2>
			<div class="col-md-9">
				<div class="row">
						<table class="ok table" style="background-color: aliceblue;">
							<thead>
								<tr>
									<th></th>
									<th>Sản phẩm</th>
									<th>Đơn giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
								</tr>
							</thead>
							<tbody>
								<%
		                        		List<Cart> listGioHang=(List<Cart>) (request.getSession().getAttribute("GioHang"));
		                            	if(listGioHang != null)
		                                   	for(int i=0;i<listGioHang.size();i++){
		                            		out.println("<tr>");
		                            			out.println("<td class=\"tdSPGioHang\">");
		                            				out.println("<a href=\"DeleteSPCart?MaSP="+listGioHang.get(i).getMaSP()+"\" type=\"button\" class=\"btn btn-default btn-sm\"> Xoá </a>");
		                            			out.println("</td>");
		                            			
		                            			out.println("<td class=\"tdSPGioHang\">" +listGioHang.get(i).getTenSP()+ "</td>");
		                            			out.println("<td class=\"tdSPGioHang\">"+String.format("%,.0f", listGioHang.get(i).getGiaBan())+" VNĐ"+"</td>");                                    	
		                                    	out.println("<td class=\"tdSPGioHang\">");
		                                    		out.println("<input type=\"number\" data-MaSP="+listGioHang.get(i).getMaSP()+" class=\"btnSoLuong\" value=\""+listGioHang.get(i).getSoLuong()+"\" name=\"SoLuong\" min=\"1\" max=\"20\">");
		                                        out.println("<td id=\"ThanhTien\" class=\"tdSPGioHang\">"+String.format("%,.0f", listGioHang.get(i).getThanhTien())+"</td>");
		                                    out.println("</tr>");
		                            	}
		                            %>
						</tbody>
					</table>
				</div>
				
			</div>
			<div class="thanhtoan col-md-3">
				<!--bảng giá-->
				<table class="ok table" style="background-color: aliceblue;">
					<thead>
						<tr>
							<th>TẠM TÍNH</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Thành tiền:</td>
							<td>
								<%
									double ok;
									ok= (double)request.getSession().getAttribute("TongTienDH");
									out.println(""+String.format("%,.0f", ok)+"");
									
								%>
								VNĐ
							</td>
						</tr>
					</tbody>
				</table>
				<a href="view/DatHang.jsp" type="button"
					class="btn btn-warning btn-lg" id="thanhtoan_bt">Tiến hành
					thanh toán</a>
			</div>
		</div>
		<div class="row" style="text-align: left; font-size: 20px; margin-bottom: 100px;">
			<form action="DeleteSPCart" method="POST">
				<a href="ShowSanPhamMoi" class="btn btn-link">
				← Tiếp tục mua hàng
				</a>
				<button type="submit" class="btn btn-link">Làm trống giỏ hàng</button>
			</form>
		</div>
	</div>
	
	<script>
		$('.btnSoLuong').change(function(e) {
			//alert("Thay đổi số lượng nè");	
		    e.preventDefault();
		    $.ajax({
		        url: 'UpdateCart',
		        type: 'POST',
		        data:{
		        	SoLuong : $(this).val(),
		        	MaSP : $(this).attr("data-MaSP")
		        },
		       
		    })
		    .done(function() {		    	
		    	 //$('.tdSPGioHang').load();
				location.reload();
		    });
		});    
	</script>
	<!--Điều hướng-->
	
	<!---END CONTENT--->
	<!-- Footer -->
	<%@ include file="/Layout/Footer.jsp"%>
	<!--end footer-->

</body>

</html>