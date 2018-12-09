<%@page import="ModelBean.SanPham"%>
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
    
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    
    
    <link rel="stylesheet" href="lib/css/sanpham.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
   
   
    
</head>

<body>
<%@ include file="/Layout/Header.jsp"%> 
    <!---CONTENT HERE-->
    
    <%
            	Object result = request.getAttribute("LayThongTinChiTiet");
            		SanPham sp=null;
            		if(result!=null)
            		{
            			 sp = (SanPham)result;
            			
            		}
            	Object cothebanquantam= request.getAttribute("CoTheBanQuanTam");
            	SanPham[] sanphamcothebanquantam=null;
            	if(cothebanquantam!=null)
            	{
            		 sanphamcothebanquantam= (SanPham[])cothebanquantam;
            		
            	}
            
            
     %>
    
    
    
    
    <div class="container">
        <div class="row product-info">
            <div class="col-lg-1  "></div>
            <div class="col-lg-5 col-md-6 col-sm-7 ">
                <div class="image-product">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="image-product-another">
                                <img class="img1" src="lib/images/<%=sp.getHinhAnh1() %>" data-zoom-image="lib/images/<%=sp.getHinhAnh1() %>" alt="">
                                <img class="img2" src="lib/images/<%=sp.getHinhAnh2() %>" data-zoom-image="lib/images/<%=sp.getHinhAnh2() %>" alt="">
                                <img class="img3" src="lib/images/<%=sp.getHinhAnh3() %>" data-zoom-image="lib/images/<%=sp.getHinhAnh3() %>" alt="">
                                <img class="img4" src="lib/images/<%=sp.getHinhAnh4() %>" data-zoom-image="lib/images/<%=sp.getHinhAnh4() %>" alt="">


                            </div>
                        </div>
                            <div class=" col-lg-10 col-md-10 col-sm-10">
                                <img class="main-image" src="lib/images/<%=sp.getHinhAnh1() %>"  alt="">

                            </div>
                    </div>
                </div>
            </div>
            
            
            
            
            <div class="col-lg-6 col-md-6 col-sm-5 ">
                        <div class="product-detail">
                            <p class="product-name" style="font-size: 26px;"><strong><%=sp.getTenSp().toString() %></strong></p>
                            <p class="product-price" style="font-size: 20px;"> Giá Chính Hãng: <%= String.format("%,.0f", sp.getGiaBan())%> VND</p>
                            <div class="product-count">
                                <span style="font-size: 20px;">Số Lượng: </span>
                                <div class="input-group numeric-updown">
                                    <input id="SoluongThem" type="text" class="form-control" value="1" name="SoLuongSP">
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
                                <a class="btn-themGioHang" href="AddCart">Thêm Vào Giỏ Hàng</a>
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
        <script>
		$('.btn-themGioHang').click(function(e) {
			alert("Thay đổi số lượng nè");	
		    e.preventDefault();
		    $.ajax({
		        url: 'AddCart',
		        type: 'Get',
		        data:{
	            	MaSP :<%=sp.getMaSP()%>,
	            	SoLuong : $('#SoluongThem').val()
		        },
		       
		    })
		    .done(function() {		    	
		    	 location.reload();
		    });
		});    
	</script>
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
                                    <div> <%=sp.getMaSP() %></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Tên Sản Phẩm</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getTenSp() %></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Giới Tính</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getGioiTinhSuDung() %></div>
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
                                    <div> <%=sp.getKieuMay() %></div>
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
                                    <div> <%=sp.getChatLieuKinh() %></div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <div><strong>Chất Liệu Vỏ</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getChatLieuVo() %></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Size Mặt Số</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getKichCo() %></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Chống Nước</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getDoChiuNuoc() %></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div><strong>Bảo Hành</strong></div>
                                </td>
                                <td>
                                    <div> <%=sp.getBaoHanh() %> </div>
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
                    <%
                    for(int i=0;i<sanphamcothebanquantam.length;i++)
                    {
                    	int MaSP = sanphamcothebanquantam[i].getMaSP();
                    	String TenSP = sanphamcothebanquantam[i].getTenSp();
                    	double GiaBan = sanphamcothebanquantam[i].getGiaBan();
                    	String HinhAnh1= sanphamcothebanquantam[i].getHinhAnh1();
                    %>
                    	
                    	<div class="col-lg-3">
                        <div class="thumbnail-list-product">
                            <div class="thumbnail-product">
                                <div class="profilebox profilebox1" style="background-image: url(lib/images/<%=HinhAnh1%> )">
                                    <div class="SocialIcons">
                                        <a href="#"><i class="fas fa-cart-plus"></i></a>
                                        <a href="#"><i class="far fa-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-title">
                                    <a href="ChiTietSanPham?MaSP=<%=MaSP%>"><%=TenSP %><br>
                        Giá: <%= String.format("%,.0f", GiaBan)%> VND
                     </a>
                                </div>
                            </div>
                        </div>
                    </div> 
                    	
                    	
                    <%} %>
                    
            
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
            <%@ include file="/Layout/Footer.jsp"%>
            <!--end footer-->
</body>
 <script src="lib/js/sanpham.js"></script>
     <script src="lib/js/jquery.elevatezoom.js" type="text/javascript"></script>

</html>