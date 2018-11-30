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
    <link rel="stylesheet" href="../lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="../lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="../lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/Css_admin/Admin_QLDH.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="../lib/vendor/fontawesome/css/all.css">
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
                <img src="../lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35">
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
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Quản lí đơn hàng</span></div>
            <div class="graphs panel-body">
                <!--DESIGN HERE-->
                <!--table - Đơn hàng chưa xác nhận-->
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-11 don-hang-chua-xacnhan">
                    <strong><span style="float:left">Đơn hàng đợi xác nhận</span></strong>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Tổng tiền</th>
                                <th>Khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>maDH</td>
                                <td>SP</td>
                                <td>SL</td>
                                <td>TT</td>
                                <td>KH</td>
                                <td>SDT</td>
                                <td>DC</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="row-2-BT" style="clear:both; float: right;">
                        <button type="button" class="btn btn-info btn-md">Xác nhận đơn hàng</button>
                        <button type="button" class="btn btn-default btn-md">Huỷ đơn hàng</button>
                    </div>
                </div>
                <!--table - đơn hàng đã xác nhận/đang giao-->
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-11 don-hang-da-xacnhan">
                    <strong><span style="float:left">Đơn hàng đã xác nhận/Đang giao</span></strong>
                    <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Mã đơn hàng</th>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th>Khách hàng</th>
                                    <th>Số điện thoại</th>
                                    <th>Địa chỉ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>maDH</td>
                                    <td>SP</td>
                                    <td>SL</td>
                                    <td>TT</td>
                                    <td>KH</td>
                                    <td>SDT</td>
                                    <td>DC</td>
                                </tr>
                            </tbody>
                    </table>
                    <div class="row-2-BT" style="clear:both; float: right;">
                        <button type="button" class="btn btn-info btn-md">Giao hàng thành công</button>
                        <button type="button" class="btn btn-default btn-md">Huỷ đơn hàng</button>
                    </div>
                </div>
                <!--Đơn hàng giao thành công-->
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-11 don-hang-giao-thanhcong">
                    <strong><span style="float:left">Đơn hàng giao dịch thành công</span></strong>
                    <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Mã đơn hàng</th>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th>Khách hàng</th>
                                    <th>Số điện thoại</th>
                                    <th>Địa chỉ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>maDH</td>
                                    <td>SP</td>
                                    <td>SL</td>
                                    <td>TT</td>
                                    <td>KH</td>
                                    <td>SDT</td>
                                    <td>DC</td>
                                </tr>
                            </tbody>
                    </table>
                </div>
                <!--table - đơn hàng bị huỷ-->
                <div class="col-lg-10 col-md-10 col-sm-11 col-xs-11 don-hang-huy">
                        <strong><span style="float:left">Đơn hàng bị huỷ</span></strong>
                        <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Mã đơn hàng</th>
                                        <th>Sản phẩm</th>
                                        <th>Số lượng</th>
                                        <th>Tổng tiền</th>
                                        <th>Khách hàng</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>maDH</td>
                                        <td>SP</td>
                                        <td>SL</td>
                                        <td>TT</td>
                                        <td>KH</td>
                                        <td>SDT</td>
                                        <td>DC</td>
                                    </tr>
                                </tbody>
                        </table>
                </div>
                <!--End des-->
            </div>
    </div>
    <!--End Dash-->

</body>
</html>