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
                <div class="col-lg-2 col-md-2 col-sm-1"></div>
                
                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-6 table-responsive">
                    <table class="table" style="float:left; width: 300px">
                        <thead>
                            <tr>
                                <th>Thông tin khách hàng</th>
                            </tr>
                        </thead>
                        <tbody>
		<%
			Object hdb = request.getSession().getAttribute("Funct_Admin_CT_HDB");
			ResultSet hd = null;
			
			String tenkh;
			int sdt;
			String diachi;
			int mahdb;
			Date ngayban;
			int tt;
			float tongtien;
			
			if(hdb != null)
			{
				hd = (ResultSet)hdb;
			while(hd.next())
			{
				tenkh = hd.getString("tenkh");
				sdt = hd.getInt("sdt");
				diachi = hd.getString("diachi");
				mahdb = hd.getInt("mahdb");
				ngayban = hd.getDate("ngayban");
				tt = hd.getInt("trangthai");
				tongtien = hd.getFloat("tongtien");
				
		%>
						
                            <tr>
                                <td style="float:left"><%=tenkh%></td>
                            </tr>
                            <tr>
                                <td style="float:left"><%=sdt%></td>
                            </tr>
                            <tr>
                                <td style="float:left"><%=diachi%></td>
                            </tr>
                       
            <%	} }	%>
                        </tbody>
                    </table>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-6 table-responsive">
                    <table class="table" style="float:left; width: 300px">
                        <thead>
                            <tr>
                                <th>Thông tin đơn hàng</th>
                            </tr>
                        </thead>
                        
		<%
			Object hdb2 = request.getSession().getAttribute("Funct_Admin_CT_HDB");
			ResultSet hd2 = null;
			if(hdb2 != null)
			{
				hd2 = (ResultSet)hdb2;
			while(hd2.next())
			{
				/*tenkh = hd.getString("tenkh");
				sdt = hd.getInt("sdt");
				diachi = hd.getString("diachi");*/
				mahdb = hd2.getInt("mahdb");
				ngayban = hd2.getDate("ngayban");
				tt = hd2.getInt("trangthai");
				tongtien = hd2.getFloat("tongtien");
				String trangthai;
				switch(tt)
				{
				case 0: 
					trangthai = "Đang chờ xác nhận";
					break;
				case 1:
					trangthai = "Đang giao hàng";
					break;
				case 2:
					trangthai = "Giao hàng thành công";
					break;
				}
		%>
                        <tbody>
                            <tr>
                                <td style="float:left"><%=mahdb%></td>
                            </tr>
                            <tr>
                                <td style="float:left"><%=ngayban%></td>
                            </tr>
                            <tr>
                                <td style="float:left">trangthai</td>
                            </tr>
                        </tbody>
          	<%	}	} %>
                        
                    </table>
                </div>

                <div class="col-lg-2 col-md-2 col-sm-1"></div>
            </div>
        </div>
        <!--Thông tin chi tiết đơn hàng-->
        <div class="row-2 ct-hd">
            <div class="col-lg-1 col-md-1"></div>

            <div class="col-lg-10 col-md-10">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Mã sản phẩm</th>
                            <th>Sản phẩm</th>
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
				String gia = String.valueOf(giaban);
		%>
                    <tbody>
                        <tr>
                            <td>
                            	<img class="img-responsive" src="lib/images/<%=hinhanh%>" alt="Chania" width="100" height="100">
                            </td>
                            <td><%=masp%></td>
                            <td><%=tensp%></td>
                            <td><%=soluong%></td>
                            <td><%=gia%></td>
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
			if(hdb != null)
			{
				hd = (ResultSet)hdb;
			while(hd.next())
			{
				/*tenkh = hd.getString("tenkh");
				sdt = hd.getInt("sdt");
				diachi = hd.getString("diachi");*/
				mahdb = hd.getInt("mahdb");
				ngayban = hd.getDate("ngayban");
				tt = hd.getInt("trangthai");
				tongtien = hd.getFloat("tongtien");
				
		%>	
                    <strong><%=tongtien%> (VND)</strong>
        <%	}	} %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>