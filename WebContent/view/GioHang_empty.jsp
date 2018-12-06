<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Giỏ hàng trống</title>
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="lib/css/GioHang_empty.css">

</head>

<body>
    <%@ include file="/Layout/Header.jsp"%>   
    <!---CONTENT HERE-->

    <div class="container dsgiohang">
            <div class="row">
            	<div class="col-md-5"></div>
            	
            	<div class="col-md-7">
                    <p>Giỏ hàng của bạn trống...!</p>
                    <img src="lib/images/empty-cart.png"></img>
                </div>
            </div>
    </div>
    <div class="container-bot dieuhuong"  style="text-align: left; font-size: 20px;">
        <a href="ShowSanPhamMoi" type="button" class="btn btn-link">←Tiếp tục mua hàng</a>
    </div>

    <!---END CONTENT--->
    	<%@ include file="/Layout/Footer.jsp"%>   
    <!--end footer-->
    
</body>

</html>