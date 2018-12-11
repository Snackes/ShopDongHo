<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta charset="UTF-8">
    <title>Chi tiết hóa đơn</title>
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="lib/css/index.css">
    <link rel="stylesheet" href="lib/css/theme_1.css">
</head>
<body>
  	<%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
        <div class="container main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a id="TrangChu" href="#">Trang chủ</a></li>
                            <li class="breadcrumb-item active">Chi tiết hóa đơn</li>
                        </ol>
                        <div class="card">
                        <%
                        	int TrangThai=-1;
                        	int MaHD=-1;
        					Object result = request.getAttribute("ChiTietHoaDonBan");
								if (result != null){
									ResultSet rs= (ResultSet)result;
									while(rs.next())
									{
										MaHD=rs.getInt("MaDH");
										int MaKH=rs.getInt("MaKH");
										String HoTen=rs.getString("HoTen");
										String DiaChi=rs.getString("DiaChi");
										Date NgayBan=rs.getDate("NgayBan");
										int SDT=rs.getInt("SDT");
										float TongTien=rs.getFloat("TongTien");
										TrangThai=rs.getInt("TrangThai");
										
										
						%>

                            <div class="card-header" style="margin-bottom: 30px">
                                <strong class="p-r-10" style="font-size: 20px; font-weight: none;">CHI TIẾT ĐƠN HÀNG</strong> <br />
                                <span style="margin-right: 20px;"> Mã đơn hàng: <%=MaHD %></span>
                                 <%
                                    if(TrangThai==0)
                                    {%>
                                    	<span>Trạng thái: Đang chờ xử lí</span>
                                    <%}
	                                if(TrangThai==1)
	                                {%>
	                                 	<span>Trạng thái: Đã xác nhận đang vận chuyển</span>
	                              	<%}	
	                                if(TrangThai==2)
	                                {%>
	                                 	<span>Trạng thái: Thành công</span>
	                              	<%}	
                               	%>
                            </div>
                            <div class="card-body card-block">
                                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-3"></div>
                                            <div class="col-md-9">
                                                <div class="row form-group">
                                                    <div class="col-md-3">
                                                        <span for="card_num_input" class=" form-control-label">Mã khách hàng</span>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="text" id="card_num" name="card_num_input" readonly class="form-control" value="<%=MaKH%>">
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-3">
                                                        <span for="card_num_input" class=" form-control-label">Tên khách hàng</span>
                                                    </div>
                                                    <div class=" col-md-5">
                                                        <input type="text" id="card_num1" name="card_num_input" readonly class="form-control"
                                                         value="<%=HoTen%>">
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-3">
                                                        <span for="borrowed_day_input" class=" form-control-label">Ngày bán</span>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="text" id="card_num2" name="card_num_input" readonly class="form-control" 
                                                        value="<%=NgayBan%>">
                                                    </div>
                                                </div>
                                    
                                                <div class="row form-group">
                                                    <div class="col-md-3">
                                                        <span for="note_input" class=" form-control-label">Tổng tiền</span>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <input type="text" id="card_num3" name="card_num_input" readonly class="form-control" 
                                                        value="<%=String.format("%,.0f", TongTien) +" VNĐ"%>">
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <div class="row form-group">
                                                    </div>
                                                </div>
                                            </div>
                         	<%	}
							}
                        %>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2"></div>
                                            <div class="col-md-8">
                                                <div class="table-responsive table--no-card m-b-30">
                                                    <table class="table table-borderless table-striped table-earning">
                                                        <thead>
                                                            <tr>
                                                                <th>Mã sản phẩm</th>
                                                                <th>Tên sản phẩm</th>
                                                                <th>Đơn giá</th>
                                                                <th>Số lượng</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <%
	                                                        Object result1 = request.getAttribute("DanhSachSanPham");
	                        								if (result1 != null){
	                        									ResultSet rs= (ResultSet)result1;
	                        									while(rs.next())
	                        									{
	                        										int MaSP=rs.getInt("MaSP");
	                        										String TenSP=rs.getString("TenSP");
	                        										float DonGia=rs.getFloat("GiaBan");
	                        										int SoLuong1=rs.getInt("SoLuongBan");
                                                        %>
                                                            <tr>
                                                                <td><%=MaSP %></td>
                                                                <td><%=TenSP %></td>
                                                                <td><%=String.format("%,.0f", DonGia) +" VNĐ" %></td>
                                                                <td><%=SoLuong1 %></td>
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
                                    
                                    <div class="card-footer m-b-30">
                                        <a href="ShowDSDHNE" class="btn btn-primary" style="margin-right: 30px;     background-color: #d09d46!important;    border-color: #d09d46!important;">
                                            <i class="fa fa-check">Trở về</i>
                                        </a>
                                        
                                  
                                  <%
                                  	if(TrangThai==0)
                                  	{	
	                                    out.println("<a href=\"HuyDonHang?MaHD="+MaHD+"\" class=\"btn btn-primary\" style=\"background-color: #d09d46!important;    border-color: #d09d46!important;\">Hủy đơn hàng</a>");
									}%>

                                    </div>
                                </form>
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