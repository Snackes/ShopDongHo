<%@page import="java.util.ArrayList"%>
<%@page import="ModelBean.Cart"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Shop online</title>
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
        <script src="lib/vendor/jquery/jquery.min.js"></script>
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="lib/css/GioHang.css">
        <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
        <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    
    </head>
    
    <body>
       	<%@ include file="/Layout/Header.jsp"%>  
        
        <!---CONTENT HERE-->
        <!--list giỏ hàng-->
        <div class="container dsgiohang">
                <div class="row">
                    <div class="col-lg-11 col-md-9 col-sm-7 col-xs-7">
                        <h2>Giỏ Hàng</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Sản phẩm</th>
                                    <th>Thương hiệu</th>
                                    <th>Giới tính</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            	Cart GH=new Cart();
                            	if(session.getAttribute("Cart") != null)
                            		GH=(Cart)(session.getAttribute("Cart"));
                                   	for(int i=0;i<GH.getItem().size();i++){
                            		out.println("<tr>");
                            			out.println("<td class=\"tdSPGioHang\">");
                            				out.println("<button type=\"button\" class=\"btn btn-default btn-sm\"> Xoá </button>");
                            					out.println("</td>");
                            						out.println("<td class=\"tdSPGioHang\">" +GH.getItem().get(i).getSp().getTenSp()+ "</td>");
                            						out.println("<td class=\"tdSPGioHang\">"+GH.getItem().get(i).getSp().getMaTH()+"</td>");
                                    				out.println("<td class=\"tdSPGioHang\">"+GH.getItem().get(i).getSp().getGiaBan()+"</td>");
                                    				out.println("<td class=\"tdSPGioHang\">");
                                    					out.println("<input type=\"number\" name=\"so-luong\" min=\"1\" max=\"20\">");
                                        				out.println("<img src=\"lib/images/reload.png\" class=\"img-circle\" alt=\"Cinque Terre\">");
                                        			out.println("</td>");
                                        		out.println("<td class=\"tdSPGioHang\">");
                                        out.println("</td>");
                                    out.println("</tr>");
                            	}
                            %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>
        <!--bảng giá-->
        <div class="container-right sumcost">
            <div class="row">
                <div class="col-lg-11 col-md-9 col-sm-7 col-xs-7">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Thành tiền:</td>
                                <td><!--Thanhtien--></td>
                            </tr>
                            <tr>
                                <td>Phí vận chuyển:</td>
                                <td><!--Phi--></td>
                            </tr>
                            <tr>
                                <td>Tổng chi phí:</td>
                                <td><!--TongPhi--></td>
                              </tr>
                          </tbody>
                     </table>
                     <button type="button" class="btn btn-warning btn-lg" id="thanhtoan_bt">Tiến hành thanh toán</button>
                </div>
            </div>
        </div>
        <!--Điều hướng-->
        <div class="container-bot dieuhuong">
            <button type="button" class="btn btn-link">←Tiếp tục mua hàng</button>
            <button type="button" class="btn btn-link">Làm trống giỏ hàng</button>
        </div>
        <!---END CONTENT--->
        <!-- Footer -->
        <%@ include file="/Layout/Footer.jsp"%>  
        <!--end footer-->
        
    </body>
    
    </html>