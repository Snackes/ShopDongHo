<%@page import="java.sql.Date"%>
<%@page import="javax.servlet.jsp.jstl.sql.Result"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ModelBean.HoaDonBan"%>
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
    <link rel="stylesheet" href="lib/Css_admin/Admin_QLDH.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
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
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Quản lí đơn hàng</span></div>
            <div class="graphs panel-body">
                <!--DESIGN HERE-->
                <!--table - Đơn hàng chưa xác nhận-->
                <div class="col-lg-11 col-md-11 col-sm-12 col-xs-12 don-hang-chua-xacnhan">
                    <div class="table-responsive">
                    <strong><span style="float:left; font-size:23px">Đơn hàng đợi xác nhận</span></strong>
                    <table class="table table-hover table-bordered order-wait" id="order-wait">
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Ngày bán</th>
                                <th>Tổng tiền</th>
                                <th>Khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th></th>
                            </tr>
                        </thead>
                 
                 <%
                 	Object wait = request.getAttribute("Funct_Admin_DSHDB_Wait");
                 	ResultSet wait_confim = null;
                 	if(wait != null)
                 	{
                 		wait_confim = (ResultSet)wait;
                 	}
                 %>
                        <tbody>
                 <%
              		while(wait_confim.next())
              		{
              			int madhb_wait = wait_confim.getInt("mahdb");
              			Date ngayban_wait = wait_confim.getDate("ngayban");
              			float tongtien_wait = wait_confim.getFloat("tongtien");
              			String kh_wait = wait_confim.getString("tenkh");
              			int sdt_wait = wait_confim.getInt("sdt");
              			String diachi_wait = wait_confim.getString("diachi");
                 %>
                            <tr>
                                <td><%=madhb_wait%></td>
                                <td><%=ngayban_wait%></td>
                                <td><%=String.format("%,.0f", tongtien_wait)%></td>
                                <td><%=kh_wait%></td>
                                <td><%=sdt_wait%></td>
                                <td><%=diachi_wait%></td>
                                <td>
                                	<button type="submit" class="btn btn-default btn-md chitiet-wait-btn"><a href="Order_Wait">Chi tiết</a></button>
                                </td>
                            </tr>
                 <% } %>
                        </tbody>
                    </table>
                    </div>
                    <div class="row-2-BT" style="clear:both; float: right;">
                    </div>
                </div>
                <!--table - đơn hàng đã xác nhận/đang giao-->
                <div class="col-lg-11 col-md-11 col-sm-12 col-xs-12 don-hang-da-xacnhan">
                    <div class="table-responsive">
                    <strong><span style="float:left; font-size:23px">Đơn hàng đã xác nhận/Đang giao</span></strong>
                    <table class="table table-hover table-bordered order-delivering" id="order-delivering">
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Ngày bán</th>
                                <th>Tổng tiền</th>
                                <th>Khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th></th>
                            </tr>
                        </thead>
                        
                 <%
                 	Object move = request.getAttribute("Funct_Admin_DSHDB_Move");
                 	ResultSet moving = null;
                 	if(move != null)
                 	{
                 		moving = (ResultSet)move;
                 	}
                 %>
                        <tbody>
                        
                 <%
              		while(moving.next())
              		{
              			int madhb_move = moving.getInt("mahdb");
              			Date ngayban_move = moving.getDate("ngayban");
              			float tongtien_move = moving.getFloat("tongtien");
              			String kh_move = moving.getString("tenkh");
              			int sdt_move = moving.getInt("sdt");
              			String diachi_move = moving.getString("diachi");
                 %>
                            <tr>
                                <td><%=madhb_move%></td>
                                <td><%=ngayban_move%></td>
                                <td><%=String.format("%,.0f", tongtien_move)%></td>
                                <td><%=kh_move%></td>
                                <td><%=sdt_move%></td>
                                <td><%=diachi_move%></td>
                                <td>
                                	<button type="submit" class="btn btn-default btn-md chitiet-delivering-btn"><a href="Order_Delivering">Chi tiết</a></button>
                                </td>
                            </tr>
                <%	} %>
                        </tbody>
                    </table>
                    </div>
                    <div class="row-2-BT" style="clear:both; float: right;">
                    </div>
                </div>
                <!--Đơn hàng giao thành công-->
                <div class="col-lg-11 col-md-11 col-sm-12 col-xs-12 don-hang-giao-thanhcong">
                    <div class="table-responsive">
                    <strong><span style="float:left; font-size:23px">Đơn hàng giao dịch thành công</span></strong>
                    <table class="table table-bordered order-succ">
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Ngày bán</th>
                                <th>Tổng tiền</th>
                                <th>Khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th></th>
                            </tr>
                        </thead>
                        
                 <%
                 	Object succ = request.getAttribute("Funct_Admin_DSHDB_Success");
                 	ResultSet delivery_succ = null;
                 	if(succ != null)
                 	{
                 		delivery_succ = (ResultSet)succ;
                 	}
                 %>
                        <tbody>
                        
                 <%
              		while(delivery_succ.next())
              		{
              			int madhb_suc = delivery_succ.getInt("mahdb");
              			Date ngayban_succ = delivery_succ.getDate("ngayban");
              			float tongtien_succ = delivery_succ.getFloat("tongtien");
              			String kh_succ = delivery_succ.getString("tenkh");
              			int sdt_succ = delivery_succ.getInt("sdt");
              			String diachi_succ = delivery_succ.getString("diachi");
                 %>
                            <tr>
                                <td><%=madhb_suc%></td>
                                <td><%=ngayban_succ%></td>
                                <td><%=String.format("%,.0f", tongtien_succ)%></td>
                                <td><%=kh_succ%></td>
                                <td><%=sdt_succ%></td>
                                <td><%=diachi_succ%></td>
                                <td>
                                	<button type="submit" class="btn btn-default btn-md chitiet-succ-btn"><a href="Order_Success">Chi tiết</a></button>
                                </td>
                            </tr>
                 <%	} %>
                        </tbody>
                    </table>
                    </div>
                </div>
                
            <script type="text/javascript">
        	//sự kiện nút chi tiết bảng đơn hàng chờ xác nhận
            $(function () {
            	$('.chitiet-wait-btn').click(function (e) {
                	var ma_hdb = 0;
                	ma_hdb = $(this).closest('tr').find('td:nth-child(1)').text();
                	$.ajax({
                        type: 'POST',
                        url: 'Order_Wait',
                        data: {
                        	MaHDB : ma_hdb
                        },
                        success : function(data){
                        	
                        }
                    })
            	});
        	});
          //sự kiện nút chi tiết bảng đơn hàng đang giao
        	$(function () {
            	$('.chitiet-delivering-btn').click(function (e) {
                	var ma_hdb = 0;
                	ma_hdb = $(this).closest('tr').find('td:nth-child(1)').text();
                	$.ajax({
                        type: 'POST',
                        url: 'Order_Delivering',
                        data: {
                        	MaHDB : ma_hdb
                        },
                        success : function(data){
                        	
                        }
                    })
            	});
        	});
        	//sự kiện nút chi tiết bảng đơn hàng giao thành công
        	$(function () {
            	$('.chitiet-succ-btn').click(function (e) {
                	var ma_hdb = 0;
                	ma_hdb = $(this).closest('tr').find('td:nth-child(1)').text();
                	$.ajax({
                        type: 'POST',
                        url: 'Order_Success',
                        data: {
                        	MaHDB : ma_hdb
                        },
                        success : function(data){
                        	
                        }
                    })
            	});
        	});
        	
        	</script>
        	
                <!--End des-->
            </div>
    </div>
    <!--End Dash-->

</body>
</html>