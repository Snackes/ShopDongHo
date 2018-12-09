<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="ModelBean.HoaDonBan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta charset="UTF-8">
    <title>Shop online</title>
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="lib/css/index.css">
    <link rel="stylesheet" href="lib/css/theme_1.css">
</head>
<body>
  	<%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
     <div class="section__content section__content--p30 p-b-50">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-1 col-md-1"></div>
                <div class="col-sm-10 col-md-10">
                        <div class="container col-md-12">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a id="TrangChu" href="#">Trang chủ</a></li>
                                    <li class="breadcrumb-item active">Danh sách đơn hàng</li>
                                </ol>
                            </div>
                    <div class="caard" style="margin-bottom: 450px;margin-top: 100px;>
                        <div class="caard-body card-block">
                            <div class="col-12 col-md-12 m-b-100">
                                <div class="table-responsive table--no-card m-b-30">
                                    <table class="table table-borderless table-striped table-earning" ">
                                        <thead>
                                            <tr>
                                                <th class="dh">Mã đơn hàng</th>
                                                <th class="dh">Tên Khách hàng</th>
                                                <th class="dh">Ngày bán</th>
                                                <th class="dh">Tổng tiền</th>
                                                <th class="dh"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                        	Object rs=request.getAttribute("DSHDBan");
                                        	if(rs!=null)
                                        	{
                                        		HoaDonBan[] dshd=(HoaDonBan[])rs;
                                        		for(int i=0;i<dshd.length;i++ )
                                        		{
                                        			int MaHD=dshd[i].getMaDH();
                                        			String TenKH=dshd[i].getHoTen();
                                        			Date NgayBan=(Date)dshd[i].getNgayBan();
                                        			double TongTien=dshd[i].getTongTien();
                                        %>
		                                         	<tr>
		                                                <td><%=MaHD %></td>
		                                                <td><%=TenKH %> </td>
		                                                <td><%=NgayBan %></td>
		                                                <td><%=String.format("%,.0f", TongTien) +" VNĐ" %></td>
		
		                                                <td>
		                                                    <% 
		                                                    out.println("<a href=\"ChiTietDonHang?MaHDBan="+MaHD+"\" type=\"button\" class=\"btn btn-warning\">Xem chi tiết</a>");
		                                                    %>
		                                                </td>
		                                            </tr>
                                        <%
                                        		}
                                        	}
                                        %>
                                           
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/Layout/Footer.jsp"%>
</body>
</html>