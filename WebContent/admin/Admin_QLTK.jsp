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
                <img src="lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35">
                <li class="dropdown">
                    <a id="admin_name" href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="font-size: 15px; color:#fff;">Admin_Name</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        <div class="navbar-default sidebar" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <p style="margin-top: 20px"></p>
                        <a id="dash" href="Admin_Dashboard.html"><span class="glyphicon glyphicon-home" style="margin-right: 5px;"></span>Trang chính</a>
                        <a id="qlsp" href="Admin_QLSP.html"><span class="glyphicon glyphicon-gift" style="margin-right: 5px;"></span>Quản lí sản phẩm</a>
                        <a id="qldh" href="Admin_QLDH.html"><span class="glyphicon glyphicon-list-alt" style="margin-right: 5px;"></span>Quản lí đơn hàng</a>
                        <a id="qltk" href="Admin_QLTK.html"><span class="glyphicon glyphicon-user" style="margin-right: 5px;"></span>Quản lí tài khoản người dùng</a>
                        <a id="qlbl" href="Admin_QLBL.html"><span class="glyphicon glyphicon-comment" style="margin-right: 5px;"></span>Quản lí bình luận</a>
                        <a id="report" href="Admin_Report.html"><span class="glyphicon glyphicon-stats" style="margin-right: 5px;"></span>Thống kê</a>
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
            	Object res = request.getAttribute("Funct_Admin_DSKH");
            	KhachHang[] dskh = null;
            	if(res != null)
            	{
            		dskh = (KhachHang[])res;
            	}
            %>
                <div class="col-lg-6 col-md-6 col-sm-11 col-xs-12 bang-dskh">
                    <div class="tim-kiem">
                        <label for="text-search" style="float:left">Tìm kiếm</label>
                        <input type="text" class="form-control" id="text-search" placeholder="Search" style="width:200px; float: left;">
                        <button class="btn btn-default" type="submit" style="float: left"><span class="glyphicon glyphicon-search"></span></button>
                    </div>
                    <strong><span style="float:left; clear:both; margin-top:20px;">Danh sách tài khoản khách hàng</span></strong>
                    <table class="table table-hover danhsach-kh">
                        <thead>
                            <tr>
                                <th>Mã KH</th>
                                <th>Tên KH</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
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
                                <td><%=email%></td>
                                <td><%=sdt%></td>
                                <td><%=diachi%></td>
                            </tr>
                        </tbody>
              <% } %>
                    </table>
                </div>
                
                <!--thông tin chi tiết-->
                
                <div class="col-lg-6 col-md-6 col-sm-11 col-xs-12 tt-chitiet">
                    <form class="form-horizontal form-tt-chitiet">
                        <div class="form-group">
                          <label for="TenKH">Tên khách hàng:</label>
                          <span id="TenKH"></span>
                        </div>
                        <div class="form-group">
                            <label for="mail">Email:</label>
                            <span id="mail"></span>
                        </div>
                        <div class="form-group">
                            <label for="sdt">Số điện thoại:</label>
                            <span id="sdt"></span>
                        </div>
                        <div class="form-group">
                            <label for="diachi">Địa chỉ:</label>
                            <span id="diachi"></span>
                        </div>
                    </form>
                    <!-- đơn hàng của khách -->
                    <table class="table table-bordered dsDH-kh">
                        <thead>
                        <tr>
                            <th></th>
                            <th>Mã đơn hàng</th>
                            <th>Ngày mua</th>
                            <th>Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="row nut-chuc-nang">
                                    <button type="button" class="btn btn-default btn-sm">Chi tiết</button>
                                </div>
                            </td>
                            <td>ma</td>
                            <td>ngaymua</td>
                            <td>TongTien</td>
                        </tr>
                        </tbody>
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
                    	alert(ma_kh);
                    	
                        /*$.ajax({
                            type: 'POST',
                            url: 'Admin_QLKH_Controll',
                            //dataType: 'xml',
                            data: {
                             MaKH : ma_kh
                            },
                            success: function (response) {
                            	loaddata(response);
                            }
                        });*/
                    	var xhr = new XMLHttpRequest();
                    	xhr.onreadystatechange = function() {
                    		if (xhr.readyState == 4 && xhr.status == 200) {
                    			document.getElementsByTagName("TenKH").innerHTML = (xhr[i].getElementsByTagName("Hoten")[0]).childNodes[0].nodeValue;
                    			document.getElementsByTagName("mail").innerHTML =xhr[i].getElementsByTagName("Email")[0].childNodes[0].nodeValue;
                    			document.getElementsByTagName("sdt").innerHTML = xhr[i].getElementsByTagName("Sdt")[0].childNodes[0].nodeValue;
                    			document.getElementsByTagName("diachi").innerHTML = xhr[i].getElementsByTagName("Diachi")[0].childNodes[0].nodeValue;
                    		}
                    	};	
                    	
                    	xhr.open("POST", "Admin_QLKH_Controll?MaKH=" + ma_kh,true);
                    	xhr.send(null);
                	});
            	});
            	
            	$(function loaddata(xml)
            	{
            		var i;
            		var xmlTable = xml.response;
            		var x = xmlTable.getElementsByTagName("ctkh");
            		for(i =0; i< x.length; i++)
            		{
            			document.getElementsByTagName("TenKH").innerHTML = x[i].getElementsByTagName("Hoten")[0].childNodes[0].nodeValue;
            			document.getElementsByTagName("mail").innerHTML = x[i].getElementsByTagName("Email")[0].childNodes[0].nodeValue;
            			document.getElementsByTagName("sdt").innerHTML = x[i].getElementsByTagName("Sdt")[0].childNodes[0].nodeValue;
            			document.getElementsByTagName("diachi").innerHTML = x[i].getElementsByTagName("Diachi")[0].childNodes[0].nodeValue;
            		}
            	});
        	</script>
        
    </div>
    <!--End Dash-->

</body>
</html>