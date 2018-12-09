<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="../lib/vendor/bootstrap/css/bootstrap.min.css">
    <script src="../lib/vendor/jquery/jquery.min.js"></script>
    <script src="../lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../lib/css/index.css">
    <link rel="stylesheet" href="../lib/vendor/fontawesome/css/all.css">
    <script src="lib/js/index.js"></script>
    <link rel="stylesheet" href="../lib/css/modal.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Krub" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Philosopher" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Archivo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
    <script src="../lib/vendor/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="../lib/css/locsanpham.css">
    <script src="../lib/js/locsanpham.js"></script>

</head>

<body>   
    <%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
    <div class=" container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 listCheckBox">
                <!--Lisst checkBox lọc--->
                <div class="list-group">
                   	<p style="font-size: 26px;">Khoảng giá</p>
                    <div class="list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="Duoi1trieu">Dưới 1 triệu
                        </label>
                    </div>
                    <div class="list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="1den2trieu">Từ 1-2 triệu
                        </label>
                    </div>
                    <div class="list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="2den7trieu">Từ 2-7 triệu
                        </label>
                    </div>
                    <div class="list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="7den15trieu">Từ 7-15 triệu
                        </label>
                    </div>
                    <div class="list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="15den30trieu">Từ 15-30 triệu
                        </label>
                    </div>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Thương Hiệu</p>
                    <div style=" height: 220px; overflow-y: auto; overflow-x: hidden;">
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input class="common-selector" type="checkbox" value="Omega">Omega
                            </label>
                        </div>
                    </div>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Giới Tính</p>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector " type="radio" value="Nam">Nam
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="Nu">Nữ
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="radio" value="Unisex">Unisex
                        </label>
                    </div>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Chất Liệu Dây</p>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="DayCaoSu">Dây Cao Su
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="DayDa">Dây Da
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="DayInox">Dây Inox
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="DayVai">Dây Vải
                        </label>
                    </div>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Loại Máy</p>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="Automatic">Automatic
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input class="common-selector" type="checkbox" value="Pin">Pin
                        </label>
                    </div>
                </div>
                <!---end list checkbox-->
            </div>
            <div class=" col-lg-9 col-md-9 col-sm-9">
                
                    <ul class="pagination">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>                
                <!--list san pham-->
                <div class="row" style="clear: right;">
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

                <!---end list san pham-->
                 <ul class="pagination">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
            	</ul>
            </div>
        </div>
    </div>
    <!---END CONTENT--->
    <%@ include file="/Layout/Footer.jsp"%>
</body>

</html>