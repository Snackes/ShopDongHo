<%@page import="ModelBean.SanPham"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<%@ include file="/Layout/Header.jsp"%>   
    <header>
        <div id="my-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#my-carousel" data-slide-to="0" class=""></li>
                <li data-target="#my-carousel" data-slide-to="1" class=""></li>
                <li data-target="#my-carousel" data-slide-to="2" class="active"></li>
            </ol>
            <div class="carousel-inner">
    			<div class=" item ">
    				<img src=" lib/images/photo1.jpeg ">
    				<div class=" container ">
    					<div class=" carousel-caption d-none d-md-block ">
    						<h1>Example headline.</h1>
    						<p>Note: If you're viewing this page via a <code>file://</code> URL, the " next " and " previous " Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
    						<p><a class=" btn btn-lg btn-primary " href=" # " role=" button ">Sign up today</a></p>
    					</div>
    				</div>
    			</div>
    			<div class=" item ">
    				<img src=" lib/images/photo2.jpeg ">
    				<div class=" container ">
    					<div class=" carousel-caption d-none d-md-block ">
    						<h1>Another example headline.</h1>
    						<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
    						<p><a class=" btn btn-lg btn-primary " href=" # " role=" button ">Learn more</a></p>
    					</div>
    				</div>
    			</div>
    			<div class=" item active ">
    				<img src="lib/images/photo3.jpeg " ">
                <div class="container">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>One more for good measure.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#my-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#my-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
    </header>
    <!---Page Content--->
    <div class="container">
        <!--Sản Phẩm nổi bật--->
        <p class="deMuc"> <span style="border-bottom: 2px #f69400 solid; ">Sản Phẩm Nổi Bật</span></p>
        <div class="row">
			<%
				Object result = request.getAttribute("layTT");
							if (result != null && result instanceof SanPham[]){
								SanPham[] sp = (SanPham[])result;
								for (int i = 0; i<sp.length; i++){
									int maSP = sp[i].getMaSP();
									String ten = sp[i].getTenSp();
									double giaBan =sp[i].getGiaBan();	
									out.println("<div class=\"col-lg-3\">");
										out.println("<div class=\"thumbnail-list-product\">");
											out.println("<div class=\"thumbnail-product\">");
											
											
												out.println("<div class=\"profilebox profilebox1\">");
												
							        				out.println("<div class=\"SocialIcons\">");
							                      		out.println("<a href=\"#\">");
							                                out.println("<i class=\"fas fa-cart-plus\">");
							                                out.println("</i>");
							                            out.println("</a>");
							                        	out.println("<a href=\"#\">");
							                                out.println("<i class=\"far fa-heart\">");
							                                out.println("</i>");
							                            out.println("</a>");
							                  		out.println("</div>");
							                  		
							                   	out.println("</div>");	
							                   						                   	
							                   	
							            		out.println("<div class=\"product-title\">");                 
							            			out.println("<a href=\"#\">"+ten+"<br />"+ giaBan+"VNĐ"+"</a>");
							                	out.println("</div>");	
							                	
							                	
							          		out.println("</div>");
							     		out.println("</div>");
									out.println("</div>");
								}
							}
			%>
            <div class="col-lg-3">
                <div class="thumbnail-list-product">
                    <div class="thumbnail-product">
                        <div class="profilebox profilebox1" style="background-image: url(\"lib/images/photo1.jpeg\")" >
                            <div class="SocialIcons">
                                <a href="#"><i class="fas fa-cart-plus"></i></a>
                                <a href="#"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        
                        <div class="product-title">     
                            <a href="#"> Đồng Hồ Omega JSHD0S <br>
             					Giá: 20.000.000đ
             				</a>           				
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-more">
            <ul class="pager">
                <li class="next"> <a href="#">Xem Thêm</a></li>
            </ul>
        </div>
        <!--end Sản Phẩm nổi bật--->
        <!--Sản Phẩm mới--->
        <p class="deMuc"><span style="border-bottom: 2px #f69400 solid">Sản Phẩm Mới</span></p>
        <div class="row">
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
                <li class="next"> <a href="#">Xem Thêm</a></li>
            </ul>
        </div>
        <div class="clear">
        </div>
        <!-- end Sản Phẩm mới--->
        <!--Carousel Thương hiệu-->
        <p class="deMuc"><span style="border-bottom: 2px #f69400 solid">Thương Hiệu Nổi Bật</span></p>
        <div id="trademark-carousel">
            <div class="hideLeft">
                <img src="lib/logo/seiko.png" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideLeft">
                <img src="lib/logo/tissot.png" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideLeft">
                <img src="lib/logo/bovet.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideLeft">
                <img src="lib/logo/dg.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideLeft">
                <img src="lib/logo/longines.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="prevLeftSecond">
                <img src="lib/logo/breitling.jpg">
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="prev">
                <img src="lib/logo/charriol.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="selected">
                <img src="lib/logo/omega.jpg">
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="next">
                <img src="logo/victorinox.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="nextRightSecond">
                <img src="logo/gucci.jpg">
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideRight">
                <img src="logo/zenith2.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideRight">
                <img src="logo/hermes.png" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideRight">
                <img src="logo/hublot.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideRight">
                <img src="logo/puma.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
            <div class="hideRight">
                <img src="logo/rolex.jpg" >
                <a href="#"><i class="fas fa-angle-double-down"></i></a>
            </div>
        </div>
        <!-- end Carousel Thương hiệu-->
    </div>
    <!--lisst-slider cho thang hoang-->
	<%@ include file="/Layout/Footer.jsp"%>  
</body>

</html>