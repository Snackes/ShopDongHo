<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
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
    <title>Chi tiết hoá đơn bán</title>
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
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="panel-heading" style="font-size: 25px;"><strong>Chi tiết hoá đơn bán</strong></div>
        <div class="panel-body">
            <!--Thông tin khách hàng, hoá đơn-->
            <div class="row-1 thongtin-kh-hd">
                <div class="col-lg-1 col-md-1 col-sm-1"></div>

                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 table-responsive">
                    <table class="table" style="float:left; width: 400px">
                        <thead>
                            <tr>
                                <th>Thông tin khách hàng</th>
                            </tr>
                        </thead>
		<%
			Object hdb = request.getSession().getAttribute("Funct_Admin_CT_HDB");
			ResultSet hd = null;
			
			String tenkh;
			int sdt;
			String diachi;
			
			if(hdb != null)
			{
				hd = (ResultSet)hdb;
				while(hd.next())
			{
				tenkh = hd.getString("tenkh");
				sdt = hd.getInt("sdt");
				diachi = hd.getString("diachi");
		%>
						<tbody>
                            <tr>
                            	<td style="float:left">Tên khách hàng:</td>
                                <td style="float:left"><%=tenkh%></td>
                            </tr>
                            <tr>
                            	<td style="float:left">Số điện thoại:</td>
                                <td style="float:left"><%=sdt%></td>
                            </tr>
                            <tr>
                            	<td style="float:left">Địa chỉ:</td>
                                <td style="float:left"><%=diachi%></td>
                            </tr>
                       </tbody>
            <%	} }	%>
                    </table>
                </div>

                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-6 table-responsive">
                    <table class="table tt-hoadon" style="float:left; width: 400px">
                        <thead>
                            <tr>
                                <th>Thông tin đơn hàng</th>
                            </tr>
                        </thead>
		<%
			Object hdb2 = request.getSession().getAttribute("Funct_Admin_CT_HDB_2");
			int mahdb;
			Date ngayban;
			int tt;
			String trangthai;
			ResultSet hd2 = null;
			if(hdb2 != null)
			{
				hd2 = (ResultSet)hdb2;
				
				while(hd2.next())
				{
				mahdb = hd2.getInt("mahdb");
				ngayban = hd2.getDate("ngayban");
				tt = hd2.getInt("trangthai");
				trangthai = hd2.getString("trangthai");
				switch(tt)
				{
				case 0: 
					trangthai = trangthai + " - Đang chờ xác nhận";
					break;
				case 1:
					trangthai = trangthai + " - Đang giao hàng";
					break;
				case 2:
					trangthai = trangthai + " - Giao hàng thành công";
					break;
				}
		%>
                        <tbody>
                            <tr>
                            	<td style="float:left">Mã hoá đơn bán:</td>
                                <td style="float:left" id="<%=mahdb%>" class="ma_hdb"><%=mahdb%></td>
                            </tr>
                            <tr>
                            	<td style="float:left">Ngày bán:</td>
                                <td style="float:left"><%=ngayban%></td>
                            </tr>
                            <tr>
                            	<td style="float:left">Trạng thái:</td>
                                <td style="float:left"><%=trangthai%></td>
                            </tr>
                        </tbody>
          	<%	}	} %>
                    </table>
                </div>

                <div class="col-lg-1 col-md-1 col-sm-1"></div>
            </div>
        </div>
        <!--Thông tin chi tiết đơn hàng-->
        <div class="row-2 ct-hd">
            <div class="col-lg-1 col-md-1"></div>

            <div class="col-lg-10 col-md-10">
                <table class="table table-bordered scroll">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá bán</th>
                        </tr>
                    </thead>
		<%
			Object cthdb = request.getSession().getAttribute("Funct_Admin_TTCTofHDB");
			ResultSet ct = null;
			if(cthdb != null)
			{
				ct = (ResultSet)cthdb;
			while(ct.next())
			{
				String hinhanh = ct.getString("hinhanh");
				int masp = ct.getInt("masp");
				String tensp = ct.getString("tensp");
				int soluong = ct.getInt("soluong");
				double giaban = ct.getDouble("giaban");
		%>
                    <tbody>
                        <tr>
                            <td>
                            	<img class="img-responsive" src="lib/images/<%=hinhanh%>" alt="Chania" width="100" height="100">
                            </td>
                            <td><%=masp%></td>
                            <td><%=tensp%></td>
                            <td><%=soluong%></td>
                            <td><%=String.format("%,.0f", giaban)%></td>
                        </tr>
                    </tbody>
       <%	}	} %>
                </table>
            </div>

            <div class="col-lg-1 col-md-1"></div>
        </div>
        <!--nút chức năng-->
        <div class="row-3 btn-chucnang">
            <div class="col-lg-2 col-md-2 col-sm-1"></div>
            <div class="col-lg-4 col-md-4 col-sm-11">
                <div>
                    <span style="float:left">Tổng giá trị hoá đơn:</span>
                    
		<%
			Object tong_tien = request.getSession().getAttribute("Proc_Admin_Tongtien_CTHDB");
		%>	
                    <strong><%=String.format("%,.0f", tong_tien)%><span> (VND)</span></strong>           
                    
                </div>
            </div>
            <button type="submit" class="btn btn-info btn-md xacnhan-btn" style="margin-top:20px" id="xacnhan-btn">Xác nhận đơn hàng</button>
            <button type="submit" class="btn btn-default btn-md huy-btn" style="margin-top:20px" id="huy-btn">Huỷ đơn hàng</button>
        </div>
        
        <script type="text/javascript">
        
    	$(function () {
        	$('#xacnhan-btn').click(function (e) {
            	var ma_hdb = 0;
            	ma_hdb = $('.ma_hdb').attr('id');
            	$.ajax({
                    type: 'GET',
                    url: 'Action_with_Order',
                    data: {
                    	MaHDB : ma_hdb,
                    	FLAG : 1
                    },
                    success : function(response){
                    	alert(response);
                    	window.history.back();
                    }
                })
        	});
    	});
    	
    	$(function () {
        	$('#huy-btn').click(function (e) {
            	var ma_hdb = 0;
            	ma_hdb = $('.ma_hdb').attr('id');
            	$.ajax({
                    type: 'GET',
                    url: 'Action_with_Order',
                    data: {
                    	MaHDB : ma_hdb,
                    	FLAG : 0
                    },
                    success : function(response){
                    	alert(response);
                    	window.history.back();
                    }
                })
        	});
    	});
    	
        </script>
        
    </div>

</body>
</html>