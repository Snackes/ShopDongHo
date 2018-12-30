<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModelBean.KhachHang"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lí Shop</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="lib/Css_admin/Admin_QLTK.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
    <!--Tạo nav fix top-->
    <nav class="top1 navbar navbar-default navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span style="font-size: 42px; color:#fff; margin-left: 20px;">TUMBỜ</span></a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
                <!--img src="lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35"-->
                <span class="glyphicon glyphicon-user"></span>
                <li class="dropdown">
                    <a id="admin_name" href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="font-size: 15px; color:#fff;">Admin_Name</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="TrangChu">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        <div class="navbar-default sidebar" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <p style="margin-top: 20px"></p>
                        <a id="dash" href="Admin_Dash_Controll"><span class="glyphicon glyphicon-home" style="margin-right: 5px;"></span>Trang chính</a>
                        <a id="qlsp" href="Admin_QLSP_Controll"><span class="glyphicon glyphicon-gift" style="margin-right: 5px;"></span>Quản lí sản phẩm</a>
                        <a id="qldh" href="Admin_QLDH_Control"><span class="glyphicon glyphicon-list-alt" style="margin-right: 5px;"></span>Quản lí đơn hàng</a>
                        <a id="qltk" href="Admin_QLKH_Controll"><span class="glyphicon glyphicon-user" style="margin-right: 5px;"></span>Quản lí tài khoản người dùng</a>
                        <a id="report" href="Admin_Report_Controll"><span class="glyphicon glyphicon-stats" style="margin-right: 5px;"></span>Thống kê</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--End nav-->

    <!--Dashboard-->
    <!--menu-->
    <!--end menu-->
    <div class="panel panel-default" id="page-wrapper">
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Quản lí tài khoản người dùng</span></div>
        <div class="graphs panel-body">
            <!--DESIGN HERE-->
            <div class="row-1-dskh">
                <!--danh sách khách hàng-->
            <%
            	Object res = request.getSession().getAttribute("Funct_Admin_DSKH");
            	KhachHang[] dskh = null;
            	if(res != null)
            	{
            		dskh = (KhachHang[])res;
            	}
            %>
                <div class="col-lg-6 col-md-6 col-sm-11 col-xs-12 bang-dskh">
                    <!--div class="tim-kiem">
                        <label for="text-search" style="float:left">Tìm kiếm</label>
                        <input type="text" class="form-control" id="text-search" placeholder="Search" style="width:200px; float: left;">
                        <button class="btn btn-default" type="submit" style="float: left"><span class="glyphicon glyphicon-search"></span></button>
                    </div-->
                    <strong><span style="float:left; clear:both; margin-top:20px;">Danh sách tài khoản khách hàng</span></strong>
                    <table class="table table-hover scroll danhsach-kh">
                        <thead>
                            <tr>
                                <th>Mã KH</th>
                                <th>Tên KH</th>
                                <th>Số điện thoại</th>
                            </tr>
                        </thead>
             <%
             	for(int i=0; i<dskh.length;i++)
             	{
             		int makh = dskh[i].getMaKH();
             		String tenkh = dskh[i].getHoTen();
             		String email = dskh[i].getEmail();
             		int sdt = dskh[i].getSDT();
             		String diachi = dskh[i].getDiaChi();
             %>
                        <tbody>
                            <tr>
                                <td><%=makh%></td>
                                <td><%=tenkh%></td>
                                <td><%=sdt%></td>
                            </tr>
                        </tbody>
              <% } %>
                    </table>
                </div>
                
                <!--thông tin chi tiết-->
                
                <div class="col-lg-6 col-md-6 col-sm-11 col-xs-12 tt-chitiet">
                    <!--form class="form-horizontal form-tt-chitiet"-->
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                    <table class="table">
                    	<tbody>
                    		<tr>
                    			<th>Tên khách hàng:</th>
                    		</tr>
                    		<tr>
                    			<th>Email:</th>
                    		</tr>
                    		<tr>
                    			<th>Số điện thoại</th>
                    		</tr>
                    		<tr>
                    			<th>Địa chỉ:</th>
                    		</tr>
                    	</tbody>
                    </table>
                    </div>
                    <div class="col-lg- col-md-7 col-sm-7 col-xs-7">
                    <table class="table">
                <%
            		Object ttkh = request.getSession().getAttribute("Funct_Admin_CTKH");
            		ResultSet ttct_kh = null;
            		if(ttkh != null)
            		{
            			ttct_kh = (ResultSet)ttkh;
                		while(ttct_kh.next())
                		{
                			String name = ttct_kh.getString("tenkh");
                			String mail = ttct_kh.getString("email");
                			int sdt = ttct_kh.getInt("sdt");
                			String diachi = ttct_kh.getString("diachi");
                %>
                	<tbody>
                        <tr>
                        	<td style="float:left"><%=name%></td>
                        </tr>
                        <tr>
                        	<td style="float:left"><%=mail%></td>
                        </tr>
                        <tr>
                        	<td style="float:left"><%=sdt%></td>
                        </tr>
                        <tr>
                        	<td style="float:left"><%=diachi%></td>
                        </tr> 
                 	</tbody>
                 <%	} } %>
                 	</table>
                    </div>
                    
                    <!-- đơn hàng của khách -->
                    <table class="table table-bordered scroll dsDH-kh">
                        <thead>
                        <tr>
                            <th></th>
                            <th>Mã đơn hàng</th>
                            <th>Ngày mua</th>
                            <th>Tổng tiền</th>
                        </tr>
                        </thead>
               <%
               		Object dshdb = request.getSession().getAttribute("Funct_Admin_DSHDB");
               		ResultSet ds_hdb = null;
               		if(dshdb != null)
               		{
               			ds_hdb = (ResultSet)dshdb;
                		while(ds_hdb.next())
                		{
                			int mahdb = ds_hdb.getInt("mahdb");
                			Date ngayban = ds_hdb.getDate("ngayban");
                			float tongtien = ds_hdb.getFloat("tongtien");
                %>
                		<tbody>
                        	<tr>
                           		<td>
                                    <button type="submit" class="btn btn-default btn-sm chitiet-btn"><a class="submit" href="Order_allStatus">Chi tiết</a></button>
                            	</td>
                            	<td><%=mahdb%></td>
                            	<td><%=ngayban%></td>
                            	<td><%=String.format("%,.0f", tongtien)%></td>
                        	</tr>
                    	</tbody>
                 <% }	} %>
                    </table>
                </div>
            </div>
            <!--End des-->
        </div>
        
            <!-- script lấy giá trị mã khách hàng trong bảng -->  
            <script type="text/javascript">
        	$(function () {
            	$('.danhsach-kh tr').click(function (e) {
                	var ma_kh = 0;
                	ma_kh = $(this).closest('tr').find('td:nth-child(1)').text();
                   	$.ajax({
                        type: 'POST',
                        url: 'Admin_QLKH_Controll',
                        data: {
                         MaKH : ma_kh
                        },
                        success : function(){
                        	location.reload();
                        }
                    })
            	});
        	});
			
        	$(function () {
            	$('.chitiet-btn').click(function (e) {
                	var ma_hdb = 0;
                	ma_hdb = $(this).closest('tr').find('td:nth-child(2)').text();
                	$.ajax({
                        type: 'POST',
                        url: 'Order_allStatus',
                        data: {
                        	MaHDB : ma_hdb
                        },
                        success : function(data){
                        	
                        }
                    })
            	});
        	});
        	
        	</script>
        
    </div>
    <!--End Dash-->

</body>
</html>