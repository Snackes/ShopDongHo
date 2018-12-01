<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../lib/css/DonHangCuaToi.css">
</head>
<body>
  	<%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
    <div class="container">
        <div class="container">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a id="TrangChu" href="#">Trang chủ</a></li>
                <li class="breadcrumb-item active">Danh sách đơn hàng</li>
            </ol>
        </div>
        <section class="cart bgwhite p-t-70 p-b-100">
            <div class="container">
                <!-- Cart item -->
                <div class="container-table-cart pos-relative">
                    <div class="wrap-table-shopping-cart bgwhite">
                        <table class="tableDH">
                            <tr class="table-head">
                                <th class="column-1">Thông tin đơn hàng</th>
                                <th class="column-2">Danh sách sản phẩm</th>
                                <th class="column-3">Thông tin người dùng</th>
                                <th class="column-4 p-l-70">Trạng thái</th>
                                <th class="column-5">Tổng Tiền</th>
                                <th class="column-6">Thao tác</th>
                            </tr> 
                            <tr class="table-row">
                            	<td  class="column-1 TTND">
                                    <div class="row">
                                        <strong>Mã đơn hàng: DH1</strong>
                                    </div>
                                    <div class="row">
                                        <span>Thứ 5, ngày 20/11/2018 17:30</span>
                                    </div>
                                </td>
                                <td class="column-2">
                                    <div class="cart-img-product b-rad-4 o-f-hidden">
                                        <img src="image/Dac_Nhan_Tam.png" alt="IMG-PRODUCT">
                                        <span>Đồng Hồ Omega JSHD0S 
											<br/>			Giá: 20.000.000đ
										</span>
                                    </div>
                                </td>
                                <td  class="column-3 TTND">
                                    <div class="row">
                                        <span>Võ Huy Hoàng</span>
                                    </div>
                                    <div class="row">
                                        <span>Thủ đức thành phố hồ chí minh</span>
                                    </div>
                                    <div class="row">
                                        <span>SĐT: 01636330469</span>
                                    </div>
                                    <div class="row">
                                        <span>Email: huyhoangpro1001@gmail.com</span>
                                    </div>
                                </td>
                                <td class="column-4">
                                    <div class="flex-w bo5 of-hidden w-size17">
                                        <span>Đơn hàng mới </span>
                                    </div>
                                </td>
                                <td class="column-5">96.000 VNĐ</td>
                                <td class="column-6">
                                    <a href="#"> Hủy đơn hàng</a>
                                </td>
                            </tr>
    
                            <tr id="Row2" class="table-row">
                               <td  class="column-1 TTND">
                                    <div class="row">
                                        <strong>Mã đơn hàng: DH1</strong>
                                    </div>
                                    <div class="row">
                                        <span>Thứ 5, ngày 20/11/2018 17:30</span>
                                    </div>
                                </td>
                                <td class="column-2">
                                   	<div class="row">
                                   	    <img src="image/sach-kheo-an-noi-se-co-duoc-thien-ha.jpg" alt="IMG-PRODUCT">
                                    	<span>	Đồng Hồ Omega JSHD0S <br/>	Giá: 20.000.000đ</span>
                                    </div>
                                </td>
                                <td class="column-3 TTND">
                                        <div class="row">
                                            <span>Võ Huy Hoàng</span>
                                        </div>
                                        <div class="row">
                                            <span>Thủ đức thành phố hồ chí minh</span>
                                        </div>
                                        <div class="row">
                                            <span>SĐT: 01636330469</span>
                                        </div>
                                        <div class="row">
                                            <span>Email: huyhoangpro1001@gmail.com</span>
                                        </div>
                                    </td>
                                <td class="column-4">
                                    <div class="flex-w bo5 of-hidden w-size17">
                                        Đã được giao
                                    </div>
                                </td>
                                <td class="column-5">160,000 VNĐ</td>
                                <td class="column-6">
                                        <a href="#">Mua thêm</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <%@ include file="/Layout/Footer.jsp"%>
</body>
</html>