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
    <title>Chi tiết hoá đơn nhập</title>
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
    <div class="panel-heading" style="font-size: 25px;"><strong>Chi tiết hoá đơn nhập</strong></div>
        <div class="panel-body">
            <!--Thông tin khách hàng, hoá đơn-->
            <div class="row-1 thongtin-kh-hd">
                <div class="col-lg-2 col-md-2 col-sm-1"></div>

                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-6 table-responsive">
                    <table class="table" style="float:left; width: 300px">
                        <thead>
                            <tr>
                                <th>Thông tin hoá đơn</th>
                            </tr>
                        </thead>
           <%
           		Object tt = request.getSession().getAttribute("Funct_Admin_DS_HDN_2");
           		ResultSet tt_hdn = null;
           		if(tt != null)
           		{
           			tt_hdn = (ResultSet)tt;
           			while(tt_hdn.next())
           			{
           				int mahdn = tt_hdn.getInt("mahhn");
           				Date ngaynhap = tt_hdn.getDate("ngaynhap");
           				float tongtien = tt_hdn.getFloat("tongtien");
           %>
                        <tbody>
                            <tr>
                                <td style="float:left">Mã hoá đơn</td>
                                <td><%=mahdn%></td>
                            </tr>
                            <tr>
                                <td style="float:left">Ngày nhập</td>
                                <td><%=ngaynhap%></td>
                            </tr>
                            <tr>
                                <td style="float:left">Tổng tiền</td>
                                <td><%=String.format("%,.0f", tongtien)%></td>
                            </tr>
                        </tbody>
           <%	}	} %>
                    </table>
                </div>
            </div>
        </div>
        <!--Thông tin chi tiết đơn hàng-->
        <div class="row-2 ct-hd">
            <div class="col-lg-3 col-md-3"></div>

            <div class="col-lg-6 col-md-6">
                <table class="table scroll">
                    <thead>
                        <tr>
                            <th>Mã sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá vốn</th>
                        </tr>
                    </thead>
        <%
        	Object ct = request.getSession().getAttribute("Funct_Admin_CTHDN");
        	ResultSet ct_hdn = null;
        	if(ct != null)
        	{
        		ct_hdn = (ResultSet)ct;
        		while(ct_hdn.next())
        		{
        			int masp = ct_hdn.getInt("masp");
        			String tensp = ct_hdn.getString("tensp");
        			int soluong = ct_hdn.getInt("soluong");
        			float giavon = ct_hdn.getFloat("giavon");
        %>
                    <tbody>
                        <tr>
                            <td><%=masp%></td>
                            <td><%=tensp%></td>
                            <td><%=soluong%></td>
                            <td><%=String.format("%,.0f", giavon)%></td>
                        </tr>
                    </tbody>
       	<%	}	} %>
                </table>
            </div>

            <div class="col-lg-3 col-md-3"></div>
        </div>
    </div>

</body>
</html>