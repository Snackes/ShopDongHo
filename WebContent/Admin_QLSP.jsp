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
    <link rel="stylesheet" href="./lib/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="./lib/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="./lib/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./Css/Admin_QLSP.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="./lib/fontawesome/css/all.css">
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
                <img src="./images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35">
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
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Quản lí sản phẩm</span></div>
        <div class="graphs panel-body">
            <!--DESIGN HERE-->
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#ChiTietSP">Chi tiết sản phẩm</a></li>
                <li><a data-toggle="tab" href="#ThemSP">Thêm sản phẩm mới</a></li>
                <li><a data-toggle="tab" href="#NhapHang">Nhập hàng</a></li>
            </ul>
            <div class="tab-content tab-nghiepvu">
                <!--tab chi tiết sản phẩm-->
                <div class="tab-pane active" id="ChiTietSP">
                    <!--des here-->
                    <!--Thanh tìm kiếm-->
                    <div class="tim-kiem">
                        <label for="text-search" style="float:left">Tìm kiếm</label>
                        <input type="text" class="form-control" id="text-search" placeholder="Search" style="width:200px; float: left;">
                        <button class="btn btn-default" type="submit" style="float: left"><span class="glyphicon glyphicon-search"></span></button>
                    </div>
                    <!--Danh sách sản phẩm-->
                    <div class="table-responsive danh-sach-sp" style="clear:both">
                        <table class="table table-hover">
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
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="row nut-chuc-nang">
                                            <button type="button" class="btn btn-default btn-sm" id="sua-bt">Sửa</button>
                                            <button type="button" class="btn btn-default btn-sm">Xoá</button>
                                        </div>
                                    </td>
                                    <td>MaSP</td>
                                    <td>TenSP</td>
                                    <td>ThuongHieu</td>
                                    <td>KieuMay</td>
                                    <td>GioiTinh</td>
                                    <td>DoChiuNuoc</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <script>
                        $(document).ready(function(){
                            $("#sua-bt").click(function(){
                                $("#tab-sua-chitiet").toggle();
                            })
                        })
                    </script>
                    <!--nút chức năng-->
                    <!--Sửa chi tiết-->
                    <form class="form-inline form-tt">
                        <div class="sua-chi-tiet" id="tab-sua-chitiet" style="display:none">
                            <div class="row-1-editTT">
                                <!--text thông tin-->
                                <div class="text-tt col-lg-8 col-md-8 col-sm-8">

                                    <div class="colum-1-tt col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label for="maSP">Mã sản phẩm:</label>
                                            <input type="text" class="form-control" id="maSP" placeholder="Mã sản phẩm"
                                                name="maSP" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="tenSP">Tên sản phẩm:</label>
                                            <input type="text" class="form-control" id="tenSP" placeholder="Tên sản phẩm"
                                                name="tenSP" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="ThuongHieu">Thương hiệu:</label>
                                            <input type="text" class="form-control" id="ThuongHieu" placeholder="Thương hiệu"
                                                name="ThuongHieu" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="KieuMay">Kiểu máy:</label>
                                            <input type="text" class="form-control" id="KieuMay" placeholder="Kiểu máy"
                                                name="KieuMay" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="GioiTinh">Giới tính:</label>
                                            <input type="text" class="form-control" id="GioiTinh" placeholder="Số lượng"
                                                name="GioiTinh" required>
                                        </div>
                                    </div>
                                    <!--div class="col-lg-1 col-md-1 col-sm-1"></div-->
                                    <div class="colum-2-tt col-lg-6 col-md-6 col-sm-6">
                                        <div class="form-group">
                                            <label for="ChatLieuKinh">Chất liệu kính:</label>
                                            <input type="text" class="form-control" id="ChatLieuKinh" placeholder="Chất liệu kính"
                                                name="ChatLieuKinh" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="ChatLieuDay">Chất liệu dây:</label>
                                            <input type="text" class="form-control" id="ChatLieuDay" placeholder="Chất liệu dây"
                                                name="ChatLieuDay" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="DoChiuNuoc">Độ chịu nước:</label>
                                            <input type="text" class="form-control" id="DoChiuNuoc" placeholder="Độ chịu nước"
                                                name="DoChiuNuoc" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="SoLuong">Số Lượng:</label>
                                            <input type="number" class="form-control" id="SoLuong" placeholder="Số lượng"
                                                name="SoLuong" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="GiaBan">Giá bán:</label>
                                            <input type="number" min="0" class="form-control" id="GiaBan" placeholder="Số lượng"
                                                name="GiaBan" required>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-1 col-md-1 col-sm-1"></div>
                                <!--hình ảnh-->
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <h4>Hình ảnh:</h4>
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                            <li data-target="#myCarousel" data-slide-to="3"></li>
                                        </ol>
                                        <!--pic insert here-->
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <img src="#" alt="Name Pic" style="width:100%;">
                                            </div>
                                        </div>
                                        <!--left, right control-->
                                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                            <span class="glyphicon glyphicon-chevron-left"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                            <span class="glyphicon glyphicon-chevron-right"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                    <!--chức năng upload-->
                                    <div class="row-chucnang">
                                        <button type="button" class="btn btn-default btn-md" id="upload-bt">Upload ảnh</button>

                                    </div>
                                </div>
                            </div>
                            <!--nút chức năng-->
                            <div class="row-2-BT" style="clear:both">
                                <button type="submit" class="btn btn-info btn-md" id="luu-bt">Lưu</button>
                                <button type="submit" class="btn btn-default btn-md" id="huy-bt">Huỷ</button>
                                <!--
                                <script>
                                    $(document).ready(function () {
                                        $("#luu-bt").click(function () {
                                            $("#tab-sua-chitiet").toggle(function () { alert("Đã lưu thông tin sản phẩm") });
                                        })
                                    })
                                    $(document).ready(function () {
                                        $("#huy-bt").click(function () {
                                            $("#tab-sua-chitiet").toggle();
                                        })
                                    })
                                </script>
                                -->
                            </div>
                        </div>
                    </form>
                </div>
                <!--tab thêm sản phẩm mới-->
                <div class="tab-pane" id="ThemSP">
                    <!--des here-->
                    thêm sp
                </div>
                <!--tab nhập thêm sản phẩm-->
                <div class="tab-pane" id="NhapHang">
                    <!--des here-->
                    nhập hàng
                </div>
            </div>
            <!--End des-->
        </div>
    </div>
    <!--End Dash-->

</body>
</html>