<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
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
    <link rel="stylesheet" href="../lib/css/index.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="../lib/vendor/fontawesome/css/all.css">
    <script src="../lib/js/index.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Krub" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Philosopher" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Archivo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
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
                                    <a  id="shopping-cart" href="ShowCart"><i  class="fas fa-shopping-cart" ></i></a>
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
    <div class="row">
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
    </div>
</body>
</html>