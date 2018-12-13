<%@page import="java.util.Date"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.xs.DateTimeDV"%>
<%@page import="ModelBean.HoaDonNhap"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModelBean.SanPham"%>
<%@page import="ModelBean.ThuongHieu"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
    <link rel="stylesheet" href="lib/Css_admin/Admin_QLSP.css">
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
                <img src="lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35">
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
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Quản lí sản phẩm</span></div>
        <div class="graphs panel-body">
            <!--DESIGN HERE-->
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#ChiTietSP">Chi tiết sản phẩm</a></li>
                <li><a data-toggle="tab" href="#NhapHang">Nhập hàng</a></li>
            </ul>
            <div class="tab-content tab-nghiepvu">
                <!--tab chi tiết sản phẩm-->
                <div class="tab-pane active" id="ChiTietSP">
                    <!--des here-->
                    <!--Thanh tìm kiếm-->
                    <!--div class="tim-kiem">
                        <label for="text-search" style="float:left">Tìm kiếm</label>
                        <input type="text" class="form-control" id="text-search" placeholder="Search" style="width:200px; float: left;">
                        <button class="btn btn-default" type="submit" style="float: left"><span class="glyphicon glyphicon-search"></span></button>
                    </div-->
                    <!--Danh sách sản phẩm-->
                    <div class="table-responsive danh-sach-sp" style="clear:both">
                        <table class="table table-hover scroll">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Thương hiệu</th>
                                    <th>Kiểu máy</th>
                                    <th>Giới tính</th>
                                    <th>Độ chịu nước</th>
                                </tr>
                            </thead>
                <% 
                	Object res = request.getSession().getAttribute("Funct_Admin_BangTTSanPham");
               	 	ResultSet sp = null;
                	if(res != null)
                	{
                		sp = (ResultSet)res;

                   	while(sp.next())
                 	  {
                 		int MaSP = sp.getInt("masp");
                 		String TenSP = sp.getString("tensp");
                 		String ThuongHieu = sp.getString("thuonghieu");
                 		String KieuMay = sp.getString("kieumay");
                 		String GioiTinh = sp.getString("Gioitinh");
                 		String DoChiuNuoc = sp.getString("Dochiunuoc");
                 %>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="row nut-chuc-nang">
                                            <button type="button" class="btn btn-default btn-sm sua-bt"><a class="submit" href="Edit_SP">Sửa</a></button>
                                            <button type="button" class="btn btn-default btn-sm xoa-bt">Xoá</button>
                                        </div>
                                    </td>
                                    <td><%=MaSP%></td>
                                    <td><%=TenSP%></td>
                                    <td><%=ThuongHieu%></td>
                                    <td><%=KieuMay%></td>
                                    <td><%=GioiTinh%></td>
                                    <td><%=DoChiuNuoc%></td>
                                </tr>
                            </tbody>
                  <%   }	}
                    //} catch()	
                  %>
                        </table>
                    <script type="text/javascript">
                        $(document).ready(function(){
                            $(".sua-bt").click(function(){
                            	var ma_sp = 0;
                            	ma_sp = $(this).closest('tr').find('td:nth-child(2)').text();
                               	$.ajax({
                                    type: 'POST',
                                    url: 'Edit_SP',
                                    data: {
                                     MaSP : ma_sp,
                                     FLAG : 1
                                    },
                                    success : function(){
                                    }
                                })
                            });
                            
                            $(".xoa-bt").click(function(){
                            	var ma_sp = 0;
                            	ma_sp = $(this).closest('tr').find('td:nth-child(2)').text();
                               	$.ajax({
                                    type: 'POST',
                                    url: 'Admin_QLSP_Controll',
                                    data: {
                                     MaSP : ma_sp,
                                     FLAG : 0
                                    },
                                    success : function(response){
                                    	alert(response);
                                    	location.reload();
                                    }
                                })
                            });
                        })
                    </script>
                    </div>
                    
                </div>
                <!--tab thêm sản phẩm mới-->

                <!--tab nhập thêm sản phẩm-->
                <div class="tab-pane" id="NhapHang">
                    <!--des here-->
                    <!-- list out stock -->
                <%
            		Object outofstock = request.getSession().getAttribute("Funct_Admin_DSSP_OutofStock");
            		SanPham[] sp_outstock = null;
            		if(outofstock != null)
            		{
            			sp_outstock = (SanPham[])outofstock;
            		}
                %>
                    <div class="col-lg-6 col-md-6 col-sm-11 col-xs-12 outstock-table">
                        <span style="font-size: 20px; color: black;">Sản phẩm cần nhập thêm số lượng</span>
                        <table class="table table-striped scroll" id="san-pham-het-hang">
                            <thead>
                                <tr>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng còn lại</th>
                                </tr>
                            </thead>
               	<%
            		for(int i=0;i<sp_outstock.length;i++)
            		{
            			int MaSP = sp_outstock[i].getMaSP();
            			String TenSP = sp_outstock[i].getTenSp();
            			int Soluongconlai = sp_outstock[i].getSoLuongHienTai();
               		
               	%>
                            <tbody>
                                <tr>
                                    <td><%=MaSP%></td>
                                    <td><%=TenSP%></td>
                                    <td><%=Soluongconlai%></td>
                                </tr>
                            </tbody>
               <%	} %>
                        </table>
                    </div>
                    <!--nhập thông tin-->
                    <div class="sua-chi-tiet">
                        <!--Thông tin nhập-->
                        <!--nút chức năng-->
                        <div class="row-2-BT" style="clear:both">
                            <button type="button" class="btn btn-info btn-md nhaphang-btn" style="float:left"><a class="submit" href="Do_Import">Nhập hàng</a></button>
                        </div>
                    </div>
                    <!---->
                    <!--danh sách đơn hàng nhập-->
                    <div class="ds-dhNhap col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <strong><span style="margin-left:20px; float:left">Danh sách đơn hàng nhập</span></strong>
                        <table class="table table-bordered scroll DH-nhap">
                            <thead>
                                <tr>
                                    <th>Mã đơn hàng</th>
                                    <th>Ngày nhập</th>
                                    <th>Tổng tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                  <%
                  	Object tt = request.getSession().getAttribute("Funct_Admin_DS_HDN");
                  	HoaDonNhap[] hdn = null;
                  	if(tt != null)
                  	{
                  		hdn = (HoaDonNhap[])tt;
                  	}
                  %>
                  <%
                  	for(int i=0; i<hdn.length; i++)
                  	{
                  		int mahdn = hdn[i].getMaDH();
                  		Date ngaynhap = hdn[i].getNgayNhap();
                  		float tongtien = hdn[i].getTongTien();
                  %>
                            <tbody>
                                <tr>
                                    <td><%=mahdn%></td>
                                    <td><%=ngaynhap%></td>
                                    <td><%=String.format("%,.0f", tongtien)%></td>
                                    <td>
                                        <button type="button" class="btn btn-default btn-md chitiet-btn"><a class="submit" href="Import_SP">Chi tiết</a></button>
                                    </td>
                                </tr>
                            </tbody>
                 <%	} %>
                        </table>
                    </div>
                </div>
            </div>
            <!--End des-->
            
            <script type="text/javascript">
        	
            $(function () {
            	$('.chitiet-btn').click(function (e) {
                	var ma_hdn = 0;
                	ma_hdn = $(this).closest('tr').find('td:nth-child(1)').text();
                	$.ajax({
                        type: 'POST',
                        url: 'Import_SP',
                        data: {
                        	MaHDN : ma_hdn
                        },
                        success : function(data){
                        	
                        }
                    })
            	});
        	});
            
            </script>
            
        </div>
    </div>
    <!--End Dash-->

</body>
</html>