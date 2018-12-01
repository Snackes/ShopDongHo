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
    <link rel="stylesheet" href="../lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="../lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="../lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/css/sanpham.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="../lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="../lib/js/sanpham.js"></script>
    <script src="../lib/js/index.js"></script>
    <script src="../lib/js/jquery.elevatezoom.js" type="text/javascript"></script>
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
                                    <a  id="shopping-cart" href="#"><i  class="fas fa-shopping-cart" ></i></a>
                                </ul>
                            </div>
                            <div class="col-sm-5 col-md-5 col-lg-5">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a class="btnDangNhap" href="#" data-toggle="modal" data-target="#myModal1"style="width: auto; color: #fff;" ><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
                                </ul>
                                <!---Form Đăng Nhập-->
                                <div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                           
                                            <div class="modal-body">
                                                <a style="float: right;" href="" data-dismiss="modal">X</a>
                                                <p style="font-size: 20px; text-align: left; clear: right;">Tên Tài Khoản</p>
                                                <form role="form" action='#' method="post">
                                                    <input type="text" class="form-control" placeholder="Username">
                                                    <p style="font-size: 20px; text-align: left;">Mật Khẩu</p>
                                                    <form role="form" action='#' method="post">
                                                        <input type="password" class="form-control" placeholder="Username">
                                                        <label style="color:#000;">
                                                            <input type="checkbox" checked="checked" name="remember"> Nhớ Mật Khẩu
                                                        </label>
                                            </div>
                                            <div class="modal-footer">
                                                <a href="" style="float: left;"> Quên mật khẩu</a>
                                                <button type="submit" class="btn btn-default" data-dismiss="modal">Đăng Nhập</button>
                                                <button type="button" class="btn btn-default" id="signin">Đăng Kí</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!--End Form Đăng Nhập-->
                                <!--form đăng kí-->
                                <div class="modal" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <p style="font-size: 20px; ">Đăng Kí</p>
                                            </div>
                                            <div class="modal-body">
                                                
                                                
                                                    <input type="email" class="form-control" placeholder="Nhập Email">
                                                    <br>
                                                
                                                
                                                    <input type="text" class="form-control" placeholder="Tên Tài Khoản">
                                                    <br>
                                                
                                                    <input type="password" class="form-control" id="pwd" placeholder="Mật Khẩu" name="pwd">
                                                    <br>
                                                    <input type="password" class="form-control" id="pwd" placeholder="Xác Nhận Mật Khẩu" name="pwd">
                                                    <br>
                                                    <button type="button" class="btn btn-default">Đăng Kí</button>
                                                    

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- endform đăng kí-->
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
                            <a href="#" class="tieuDe" >Sản Phẩm</a>
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
        <div class="row product-info">
            <div class="col-lg-1  "></div>
            <div class="col-lg-5 col-md-6 col-sm-7 ">
                <div class="image-product">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="image-product-another">
                                <img class="img1" src="lib/images/product1.png" data-zoom-image="lib/images/product1.png" alt="">
                                <img class="img2" src="lib/images/product2.png" data-zoom-image="/product2.png" alt="">
                                <img class="img3" src="lib/images/product.jpg" data-zoom-image="lib/images/product.jpg" alt="">
                                <img class="img4" src="lib/images/product.jpg" data-zoom-image="lib/images/product.jpg" alt="">


                            </div>
                        </div>
                            <div class=" col-lg-10 col-md-10 col-sm-10">
                                <img class="main-image" src="lib/images/product1.png"  alt="">

                            </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-5 ">
                        <div class="product-detail">
                            <p class="product-name" style="font-size: 26px;"><strong>ĐỒNG HỒ GÌ GÌ ĐÓ ahsdgashdgasdkajsdkajshd</strong></p>
                            <p class="product-price" style="font-size: 20px;"> Gía Chính Hãng: 200.000.000đ</p>
                            <div class="product-count">
                                <span style="font-size: 20px;">Số Lượng: </span>
                                <div class="input-group numeric-updown">
                                    <input type="text" class="form-control" value="1">
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default btn-up" type="button">
                                            <i class=" fa fa-caret-up"></i>
                                        </button>
                                        <button class="btn btn-default btn-down" type="button">
                                            <i class=" fa fa-caret-down"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="product-like">
                                <span style="font-size: 20px;">Thích: <a href=""><i class="far fa-heart"></i><i class="fas fa-heart"></i></a></span>
                                <span class="product-like-count" style="font-size: 20px;">200</span>
                            </div>
                            <div class="product-btn" style="font-size: 20px;">
                                <a class="btn-themGioHang" href="">Thêm Vào Giỏ Hàng</a>
                                <a class="btn-muaNgay" href="">Mua Ngay</a>
                                
                            </div>
                            <div class="product-social" style="font-size: 20px;">
                                <span>Chia Sẻ: </span>
                                <a href=""><i class="fab fa-facebook-square"></i></a>
                                <a href=""><i class="fab fa-google-plus-square"></i></a>
                                <a href=""><i class="fab fa-twitter-square"></i></a>
                            </div>
                        </div>
            </div>
        </div>
                <!---Thông số kĩ thuật-->
                <div class="row" >
                    <div class="thongSoKiThuat">
                    <table class="table table-striped table-thongSoKiThuat">
                        <tbody>
                            
                            <tr>
                                <td>
                                    <div><strong>Mã Sản Phẩm</strong></div>
                                </td>
                                <td>
                                    <div> SAX122222</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Thương Hiệu</strong></div>
                                </td>
                                <td>
                                    <div> Casio</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Xuất Xứ</strong></div>
                                </td>
                                <td>
                                    <div>Nhật Bản</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Loại Máy</strong></div>
                                </td>
                                <td>
                                    <div> Automatic</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Loại Dây</strong></div>
                                </td>
                                <td>
                                    <div> Inox</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Loại Kính</strong></div>
                                </td>
                                <td>
                                    <div> Mineral Crystal</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Màu Mặt Số</strong></div>
                                </td>
                                <td>
                                    <div> Vàng</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Dạng Mặt Số</strong></div>
                                </td>
                                <td>
                                    <div> Vuông</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Size Mặt Số</strong></div>
                                </td>
                                <td>
                                    <div> 45mm</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Chống Nước</strong></div>
                                </td>
                                <td>
                                    <div> 10atm</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Bảo Hành</strong></div>
                                </td>
                                <td>
                                    <div> Bảo hành chính hãng 1 năm, pin 18 tháng </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    
                </div>
                <!--Có Thể bạn Quan Tâm-->
                <div class="row">
                    <div>
                        <p style=" font-size: 26px;margin-top: 30px; "><span style=" border-bottom: 2px #f69400 solid; ">Có Thể Bạn Quan Tâm</span></p>
                    </div>
            <div class="col-lg-3">
                <div class="thumbnail-list-product">
                    <div class="thumbnail-product">
                        <div class="profilebox profilebox1">
                            <div class="SocialIcons">
                                <a href="#"><i class="fas fa-cart-plus"></i></a>
                                <a href="#"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-title">
                            <a href="#">Đồng Hồ Omega JSHD0S <br>
                Giá: 20.000.000đ
             </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="thumbnail-list-product">
                    <div class="thumbnail-product">
                        <div class="profilebox profilebox1">
                            <div class="SocialIcons">
                                <a href="#"><i class="fas fa-cart-plus"></i></a>
                                <a href="#"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-title">
                            <a href="#">Đồng Hồ Omega JSHD0S <br>
                Giá: 20.000.000đ
             </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="thumbnail-list-product">
                    <div class="thumbnail-product">
                        <div class="profilebox profilebox1">
                            <div class="SocialIcons">
                                <a href="#"><i class="fas fa-cart-plus"></i></a>
                                <a href="#"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-title">
                            <a href="#">Đồng Hồ Omega JSHD0S <br>
                Giá: 20.000.000đ
             </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="thumbnail-list-product">
                    <div class="thumbnail-product">
                        <div class="profilebox profilebox1">
                            <div class="SocialIcons">
                                <a href="#"><i class="fas fa-cart-plus"></i></a>
                                <a href="#"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-title">
                            <a href="#">Đồng Hồ Omega JSHD0S <br>
                Giá: 20.000.000đ
             </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-more">
            <ul class="pager">
                <li class="next"> <a href="#" style="font-size: 18px;">Xem Thêm</a></li>
            </ul>
        </div>
                <!--End Có Thể BẠN quan Tâm-->
                
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
                                <h5 >Get connected with us on social networks!</h5>
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
                                <a  href="#!">VinGroup</a>
                            </p>
                            <p>
                                <a  href="#!">FLC Group</a>
                            </p>
                            <p>
                                <a  href="#!">Sanna Khánh Hòa</a>
                            </p>
                            <p>
                                <a  href="#!">Ngân Hàng</a>
                            </p>
                        </div>
                        <!-- Grid column -->
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h4 class="text-uppercase font-weight-bold" style="color:#fff;">Nhà sáng lập</h4>
                            <p>
                                <a  href="#!">Phùng Đại Hiệp</a>
                            </p>
                            <p>
                                <a  href="#!">Võ Huy Hoàng</a>
                            </p>
                            <p>
                                <a  href="#!">Nguyễn Anh Sang</a>
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
                    <a  href=""> tumbo.com</a>
                </div>
                <!-- Copyright -->
            </div>
            <!-- Footer -->
            <!--end footer-->
</body>

</html>