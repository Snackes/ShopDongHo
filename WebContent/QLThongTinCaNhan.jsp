<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Quản lí thông tin cá nhân</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Css/index.css">
    <link rel="stylesheet" href="Css/ThongTinCaNhan.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="vendor/fontawesome/css/all.css">
    <script src="JS/index.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".checkboxHienAn").click(function () {
                $(".ThongTinDoiMatKhau").toggle(1000);
            })
        })
    </script>

</head>

<body>
    <!--taọ nav fixedtop-->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <div class="navbar-header">
                        <!--nút thu gọn navbar khi frame thay đổi-->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!---nhãn-->
                        <a class="navbar-brand" href="#"><span style="font-size: 42px; color:#fff; margin-left: 
                        20px;">TUMBỜ</span></a>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8">
                    <div class="collapse navbar-collapse " id="mynavbar">
                        <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-6">
                                <div class="input-group col-lg-12 search-bar">
                                    <input type="text" class="form-control" placeholder="Tìm Kiếm">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-1 col-md-1 col-lg-1">
                                <ul class=" nav navbar-nav ">
                                    <a id="shopping-cart" href="#"><i class="fas fa-shopping-cart"></i></a>
                                </ul>

                            </div>
                            <div class="col-sm-5 col-md-5 col-lg-5">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a class="btnDangNhap" href="#" onclick="document.getElementById('formDangNhap').style.display='block'"
                                            style="width: auto; color: #fff;"><span class="glyphicon glyphicon-log-in"></span>
                                            Đăng Nhập</a></li>
                                </ul>
                                <!---Form Đăng Nhập-->
                                <div id="formDangNhap" class="modal">
                                    <form class="modal-content animate" action="">
                                        <div class="imgContainer">
                                            <span class="close" onclick="document.getElementById('formDangNhap').style.display='none'"
                                                title="Đóng">x</span>




                                        </div>
                                        <div class="container input-formDangNhap">
                                            <label for="uname" style="color:#fff;"><b>Tên Tài Khoản</b></label>
                                            <input class="input-text" type="text" placeholder="Nhập Tên Tài Khoản" name="uname">
                                            <label for="psw" style="color:#fff;"><b>Mật Khẩu</b></label>
                                            <input class="input-text" type="text" placeholder="Nhập Mật Khẩu" name="pws">
                                            <button class="buttonForm" type="submit">Đăng Nhập</button>
                                            <br>

                                            <label style="color:#fff;">
                                                <input type="checkbox" checked="checked" name="remember"> Nhớ Mật Khẩu
                                            </label>

                                        </div>
                                        <div class="container input-formQuenmk">



                                            <a href="" class="psw">Quên Mật Khẩu</a>
                                            <a href="" class="dangKi">Đăng Kí</a>

                                        </div>

                                    </form>

                                </div>
                                <!--End Form Đăng Nhập-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- tạo nav không fixedtop-->
    <nav class="navbar navbar-default" id="nav-notfixed" role="navigation">
        <div class="container-fluid">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="row">
                <div class="col-sm-2 col-md-3 col-lg-3"></div>
                <div class="col-sm-8 col-md-7 col-lg-6">
                    <ul class="nav navbar-nav " id="mainnavigation">
                        <li class="dropdown dropdown-large">
                            <a href="#" class="tieuDe">Trang Chủ</a>
                        </li>
                        <li class="dropdown dropdown-large dropdown-hover">
                            <a href="#" class="tieuDe">Sản Phẩm</a>
                            <ul class="dropdown-menu dropdown-menu-large row">
                                <li class=" col-lg-3">
                                    <ul>

                                        <li><a href="#">Nam</a></li>
                                        <li><a href="#">Nữ</a></li>
                                        <li><a href="#">Cặp Đôi</a></li>
                                    </ul>
                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li class="dropdown-header">Loại Máy</li>
                                        <li><a href="#">Pin</a></li>
                                        <li><a href="#">Tự Động</a></li>
                                        <li><a href="#">Năng Lượng</a></li>
                                    </ul>

                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li class="dropdown-header">Chất Liệu</li>
                                        <li><a href="#">Dây Da</a></li>
                                        <li><a href="#">Dây Inox</a></li>

                                    </ul>

                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li class="dropdown-header">Khoảng Gía</li>
                                        <li><a href="#">Dưới 1 triệu</a></li>
                                        <li><a href="#">Từ 1-2 triệu</a></li>
                                        <li><a href="#">Từ 2-7 triệu</a></li>
                                        <li><a href="#">Từ 7-15 triệu</a></li>
                                        <li><a href="#">Từ 15-30 triệu</a></li>
                                    </ul>

                                </li>
                            </ul>


                        </li>
                        <li class="dropdown dropdown-large dropdown-hover">
                            <a href="#" class="tieuDe">Thương Hiệu</a>
                            <ul class="dropdown-menu dropdown-menu-large row">
                                <li class=" col-lg-3">
                                    <ul>
                                        <li><a href="#">SEIKO</a></li>
                                        <li><a href="#">ROLEX</a></li>
                                        <li><a href="#">OMEGA</a></li>
                                        <li><a href="#">CHARRIOL</a></li>
                                    </ul>
                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li><a href="#">VICTORINOX</a></li>
                                        <li><a href="#">BREITLING</a></li>
                                        <li><a href="#">GUCCI</a></li>
                                        <li><a href="#">LONGINESS</a></li>
                                    </ul>

                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li><a href="#">D&G</a></li>
                                        <li><a href="#">BOVET</a></li>
                                        <li><a href="#">TISSOT</a></li>
                                        <li><a href="#">ZENITH</a></li>

                                    </ul>

                                </li>
                                <li class="col-lg-3">
                                    <ul>
                                        <li><a href="#">HERMES</a></li>
                                        <li><a href="#">HUBLOT</a></li>
                                        <li><a href="#">PUMA</a></li>
                                        <li><a href="#">ROLEX</a></li>
                                    </ul>

                                </li>
                            </ul>


                        </li>
                        <li class="dropdown dropdown-large">
                            <a href="#" class="tieuDe">Liên Hệ</a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-2 col-md-2 col-lg-3"></div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>

    <!---CONTENT HERE-->
       <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a id="TrangChu" href="#">Trang chủ</a></li>
            <li class="breadcrumb-item active">Thông tin tài khoản</li>
        </ol>
        <div class="container">
            <form id="MyForm" class="form-horizontal bv-form" name="frmProfiles_edit" id="frmProfiles_edit" method="post">
                <div class="row">
                    <div class="col-md-9">
                            <p></p>
                            <div class="row form-group">
                                <label class="control-label col-sm-3" for="username">Tên đăng nhập:</label>
                                <div class="col-sm-9">
                                    <label class="control-label">bui123</label>
                                </div>
                            </div>
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="fullname">Họ tên</label>
                                        <div class="col-sm-9">
                                            <input id="fullname" type="text" name="fullname" placeholder="Họ tên của bạn" class="form-control"
                                                data-bv-field="fullname" required>
                                            <i class="form-control-feedback" data-bv-icon-for="fullname" style="display: none;"></i>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="email">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email" name="email" placeholder="Email" class="form-control" maxlength="256"
                                                data-bv-field="email" required><i class="form-control-feedback" data-bv-icon-for="email"
                                                style="display: none;"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="mobile">Điện thoại</label>
                                        <div class="col-sm-9">
                                            <input type="number" name="mobile" placeholder="Điện thoại" class="form-control"
                                                maxlength="256" data-bv-field="mobile" required><i class="form-control-feedback"
                                                data-bv-icon-for="mobile" style="display: none;"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="address">Địa chỉ</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="address" placeholder="Địa chỉ" class="form-control" maxlength="256"
                                                data-bv-field="address" required><i class="form-control-feedback" data-bv-icon-for="address"
                                                style="display: none;"></i>
                                            <small data-bv-validator="stringLength" data-bv-validator-for="address" class="help-block"
                                                style="display: none;">This value is not valid</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-3">
                        <ul class="nav_account" id="DivTong_DM_QLThongTin">
                            <li class="active">
                                <a href="#">
                                    <i id="iconTTTK" class="fas fa-info-circle">
                                    </i> Thông tin tài khoản
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i id="iconQLDH" class="fa fa-bars" aria-hidden="true"></i> Quản lý đơn hàng
                                </a>
                            </li>
                            <li>
                                <a href="#"><i id="iconDX" class="fas fa-sign-in-alt"></i>Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-9" id="DivTongDoiMatKhau">
                        <div class="row">
                            <div class="col-md-6" id="checkbox1">
                                <input class="checkboxHienAn" type="checkbox" id="squaredcheck2" name="check" >
                                <label for="squaredcheck2"><span>Thay đổi mật khẩu</span></label>
                            </div>
                        </div>
            
                        <div class="ThongTinDoiMatKhau">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="passCu">Mật khẩu cũ</label>
                                        <div class="col-sm-9">
                                            <input id="OldPass" type="text" name="OldPass" placeholder="Mật khẩu cũ" class="form-control"
                                                maxlength="256" data-bv-field="passCu" >
                                            <i class="form-control-feedback" data-bv-icon-for="passCu" style="display: none;"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="NewPass">Mật khẩu mới</label>
                                        <div class="col-sm-9">
                                            <input id="password" type="text" name="password" placeholder="Mật khẩu mới" class="form-control"
                                                maxlength="256" data-bv-field="NewPass"><i class="form-control-feedback"
                                                data-bv-icon-for="NewPass" style="display: none;"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
            
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="Pass_Again">Nhập lại</label>
                                        <div class="col-sm-9">
                                            <input id="password_again" type="text" name="password_again" placeholder="Nhập lại mật khẩu mới" class="form-control"
                                                maxlength="256" data-bv-field="Pass_Again"><i class="form-control-feedback"
                                                data-bv-icon-for="Pass_Again" style="display: none;" ></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="divThayDoi">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-3">
                                Cập nhật
                            </button>
                        </div>
                    </div>
                </div>
            </form>
            <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
            <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
            
            
            
            <script>
                // just for the demos, avoids form submit
                jQuery.validator.setDefaults({
                    debug: true,
                    success: "valid"
                });
                $("#MyForm").validate({
                    rules: {
                        password: "required",
                        password_again: {
                            equalTo: "#password"
                        }
                    }
                });
            </script>
            </div>
    </div>

    <!---END CONTENT--->

    <!--footer-->
    <!-- Footer -->
    <div class="page-footer ">
        <div style="background-color: #f69400;" class="">
            <div class="container">
                <!-- Grid row-->
                <div class="row ">
                    <!-- Grid column -->
                    <div class="col-md-6 col-lg-4  ">
                        <h5>Get connected with us on social networks!</h5>
                    </div>
                    <!-- Grid column -->
                    <!-- Grid column -->
                    <div class=" col-md-0 col-lg-4 "></div>
                    <div class="col-md-6 col-lg-4 so-icon">
                        <!-- Facebook -->
                        <a class="ic" href="#">
                            <i class="fab fa-facebook-square"></i>
                        </a>
                        <!-- Twitter -->
                        <a class="ic" href="#">
                            <i class="fab fa-twitter-square"></i>
                        </a>
                        <!-- Google +-->
                        <a class="ic" href="#">
                            <i class="fab fa-google-plus-square"></i>
                        </a>
                        <!--Linkedin -->
                        <a class="ic" href="#">
                            <i class="fab fa-linkedin"></i>
                        </a>
                        <!--Instagram-->
                        <a class="ic" href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row-->
            </div>
        </div>
        <!-- Footer Links -->
        <div class="container ">
            <!-- Grid row -->
            <div class="row ">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3">
                    <!-- Content -->
                    <h3 class="text-uppercase font-weight-bold" style="color:#fff;">TUMBỜ</h3>
                    <p style="color:#fff;">TUMBỜ là nhà phân phối đồng hồ chính hãng uy tín bậc nhất Đông Nam Á.</p>
                </div>
                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h4 class="text-uppercase font-weight-bold" style="color:#fff;">Nhà tài trợ</h4>
                    <p>
                        <a href="#!">VinGroup</a>
                    </p>
                    <p>
                        <a href="#!">FLC Group</a>
                    </p>
                    <p>
                        <a href="#!">Sanna Khánh Hòa</a>
                    </p>
                    <p>
                        <a href="#!">Ngân Hàng</a>
                    </p>
                </div>
                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h4 class="text-uppercase font-weight-bold" style="color:#fff;">Nhà sáng lập</h4>
                    <p>
                        <a href="#!">Phùng Đại Hiệp</a>
                    </p>
                    <p>
                        <a href="#!">Võ Huy Hoàng</a>
                    </p>
                    <p>
                        <a href="#!">Nguyễn Anh Sang</a>
                    </p>

                </div>
                <!-- Grid column -->
                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h4 class="text-uppercase font-weight-bold" style="color:#fff;">Liên Lạc</h4>
                    <p style="color:#fff;">
                        <i class="fa fa-home mr-3"></i> Sìa Gòn, Việt Nam</p>
                    <p style="color:#fff;">
                        <i class="fa fa-envelope mr-3"></i> tumbờ@gmail.com</p>
                    <p style="color:#fff;">
                        <i class="fa fa-phone mr-3"></i> + 01 234 567 88</p>
                    <p style="color:#fff;">
                        <i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
        <!-- Footer Links -->
        <!-- Copyright -->
        <div style="color:#fff;">© 2018 Copyright:
            <a href=""> tumbo.com</a>
        </div>
        <!-- Copyright -->
    </div>
    <!-- Footer -->
    <!--end footer-->

</body>

</html>