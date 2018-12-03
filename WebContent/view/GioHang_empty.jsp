<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Giỏ hàng trống</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="lib/css/GioHang_empty.css">

</head>

<body>
    	<%@ include file="/Layout/Header.jsp"%>   
    <!---CONTENT HERE-->

    <div class="container dsgiohang">
            <div class="row">
                <div class="col-lg-11 col-md-9 col-sm-7 col-xs-3">
                    <h2>Giỏ Hàng</h2>
                    <p>Giỏ hàng của bạn trống!</p>
                </div>
            </div>
    </div>
    <div class="container-bot dieuhuong">
            <button type="button" class="btn btn-link">←Tiếp tục mua hàng</button>
    </div>

    <!---END CONTENT--->
    	<%@ include file="/Layout/Footer.jsp"%>   
    <!--end footer-->
    
</body>

</html>