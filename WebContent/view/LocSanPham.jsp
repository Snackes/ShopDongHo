<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@page import="ModelBean.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="lib/css/locsanpham.css">
    <script src="lib/js/locsanpham.js"></script>

</head>

<body>   
    <%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
    <div class=" container">
        <div class="row">
            <div id="Filter" class="col-lg-3 col-md-3 col-sm-3 listCheckBox">
                <!--Lisst checkBox lọc--->
                <div class="list-group">
	                <form id="radio">
		                <fieldset>
		                   	<p style="font-size: 26px;">Khoảng giá</p>
		                    <div class="list-group-item">
		                        <label>                   
		                            <input id="radio1"  name="radio" class="common-selector" type="radio" value="Duoi1trieu" >
		                            Dưới 1 triệu
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="radio2"  name="radio" class="common-selector" type="radio" value="1den2trieu">
		                           Từ 1-2 triệu
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="radio3" name="radio" class="common-selector" type="radio" value="2den7trieu">
		                            Từ 2-7 triệu
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="radio4"  name="radio" class="common-selector" type="radio" value="7den15trieu">
		                            Từ 7-15 triệu
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="radio5"  name="radio" class="common-selector" type="radio" value="15den30trieu">
		                            Trên 15 triệu
		                        </label>
		                    </div>
		                 </fieldset>
	                </form>
                </div>
                <style>
                	.MucGia{
                		text-decoration: none;
                		color: black;
                	}
                	.MucGia:hover {
						text-decoration: none;
						color: 
					}
                </style>
                <div class="list-group"">
                    <p style="font-size: 26px;">Thương Hiệu</p>
                    <div style=" height: 220px; overflow-y: auto; overflow-x: hidden;">
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox1" class="common-selector" type="checkbox" value="SEIKO">
                                SEIKO
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox2" class="common-selector" type="checkbox" value="ROLEX">
                            	ROLEX
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox3" class="common-selector" type="checkbox" value="OMEGA">
                            	OMEGA
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox4" class="common-selector" type="checkbox" value="VICTORINOX">
                            	VICTORINOX
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox5" class="common-selector" type="checkbox" value="BREITLING">
                            	BREITLING
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox6" class="common-selector" type="checkbox" value="GUCCI">
                            	GUCCI
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox7" class="common-selector" type="checkbox" value="D&G">
                            	D&G
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox8" class="common-selector" type="checkbox" value="BOVET">
                            	BOVET
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox9 class="common-selector" type="checkbox" value="TISSOT">
                            	TISSOT
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox10" class="common-selector" type="checkbox" value="HERMES">
                           		HERMES
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox11" class="common-selector" type="checkbox" value="HUBLOT">
                            	HUBLOT
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox12" class="common-selector" type="checkbox" value="PUMA">
                            	PUMA
                            </label>
                        </div>
                    </div>
                </div>
                <div class="list-group">
               		<form id="radio">
			        	<fieldset>
		                    <p style="font-size: 26px;">Giới Tính</p>
		                    <div class=" list-group-item">
		                        <label>
		                            <input id="radio6" name="radio" class="common-selector " type="radio" value="Nam">
		                            Nam
		                        </label>
		                    </div>
		                    <div class=" list-group-item">
		                        <label>
		                            <input id="radio7" name="radio" class="common-selector" type="radio" value="Nu">
		                            Nữ
		                        </label>
		                    </div>
		                    <div class=" list-group-item">
		                        <label>
		                            <input id="radio8" name="radio" class="common-selector" type="radio" value="Unisex">
		                            Unisex
		                        </label>
		                    </div>
	                    </fieldset>
                    </form>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Chất Liệu Dây</p>
                    <div class=" list-group-item">
                        <label>
	                   		<input id="checkbox13" class="common-selector" type="checkbox">
	                       	Dây da
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input id="checkbox14" class="common-selector" type="checkbox">
                        	Dây Kim loại
                        </label>
                    </div>

                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Kiểu máy</p>

                    <div class=" list-group-item">
                        <label>
                            <input id="checkbox15" class="common-selector" type="checkbox">
                        	Pin
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                            <input id="checkbox16" class="common-selector" type="checkbox">
                        	Automatic
                        </label>
                    </div>
                </div>
                <!---end list checkbox-->
            </div>
            <div id="dcmn" class=" col-lg-9 col-md-9 col-sm-9">
                
                    <ul class="pagination">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>                
                <!--list san pham-->
                <div id="rowSP" class="row" style="clear: right;">
                <%
                	
                	if(request.getAttribute("KetQuaTK")!=null)
                	{
                		Object result=request.getAttribute("KetQuaTK");
                    	if(result !=null)
                    	{
                    		SanPham[] listsp = (SanPham[])result;
                    		for(int i=0;i<listsp.length;i++)
                    		{
                    			int MaSP=listsp[i].getMaSP();
                    			String TenSP=listsp[i].getTenSp();
                    			Double GiaBan =listsp[i].getGiaBan();
                    			String HinhAnh1=listsp[i].getHinhAnh1();

                 %>


                        <div class="col-lg-3">
                            <div class="thumbnail-list-product">
                                <div class="thumbnail-product">
                                    <div class="profilebox profilebox1" style="background: url(lib/images/<%=HinhAnh1%>)">
                                        <div class="SocialIcons">
                                            <a href="#"><i class="fas fa-cart-plus"></i></a>
                                            <a href="#"><i class="far fa-heart"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-title">
                                        <a href="ChiTietSanPham?MaSP=<%=MaSP%>"><%=TenSP %><br>
                    						Giá: <%=String.format("%,.0f", GiaBan) %>
                 						</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                  <%
                        	}
                		}
                	}
                	else
                	{
		                	Object result=request.getSession().getAttribute("LocSanPham");
		                	if(result !=null)
		                	{
		                		SanPham[] listsp = (SanPham[])result;
		                		for(int i=0;i<listsp.length;i++)
		                		{
		                			int MaSP=listsp[i].getMaSP();
		                			String TenSP=listsp[i].getTenSp();
		                			Double GiaBan =listsp[i].getGiaBan();
		                			String HinhAnh1=listsp[i].getHinhAnh1();
		
		                %>
		
		
		                    <div class="col-lg-3 temp">
		                        <div class="thumbnail-list-product">
		                            <div class="thumbnail-product">
		                                <div class="profilebox profilebox1" style="background: url(lib/images/<%=HinhAnh1%>)">
		                                    <div class="SocialIcons">
		                                    	<a data-MaSP=<%=MaSP%> class="btnAddCart"><i class="fas fa-cart-plus"></i></a>
		                                        <a href="#"><i class="far fa-heart"></i></a>
		                                    </div>
		                                </div>
		                                <div class="product-title">
		                                    <a href="ChiTietSanPham?MaSP=<%=MaSP%>"><%=TenSP %><br>
		                						Giá: <%=String.format("%,.0f", GiaBan) %>
		             						</a>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    
		                    <%
								}
                			}
               		}
             %>
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
            
        <script>
		
	
		$('.btnAddCart').click(function(e) {
		    e.preventDefault();
		    $.ajax({
		        url: 'AddCart',
		        type: 'get',
		        dataType: 'text',
		        data:{
		        	MaSP : $(this).attr("data-MaSP")
		        },
		        
		       
		    })
		    .done(function(data) {	

		    	CallBoxThongBao(data);

		    });
		});   
		
		
	    function CallBoxThongBao(data) {
	    	
	    	if(data=="0")
	    		
	    		{
	    		 swal({
	    		      title: "", 
	    		      text: "Thêm thành công", 
	    		      type: "success",
	    		      showCancelButton: false
	    		    }, function() {
	    		    	location.reload();
	    		    });
	    		
	    		}
	    	else
	    		{
	    			alert("Không đủ số lượng...!");
	    			//$('#ThongBaoDangNhap').text("Sản phẩm hết hàng");
	    		}
	    	
	   
	  }
	    
	</script>
       <script>
       		//lọc ở đây
       		$("#Filter").change(function(){
       			var duoi1trieu = 0;
       			var tu1_2trieu = 0;
       			var tu2_7trieu = 0;
       			var tu7_15trieu = 0;
       			var tren15trieu = 0;
       			
       			var SEIKO = 0;
       			var ROLEX = 0;
       			var OMEGA = 0;
       			var VICTORINOX = 0;
       			var BREITLING = 0;
       			var GUCCI = 0;
       			var D_G = 0;
       			var BOVET = 0;
       			var TISSOT = 0;
       			var HERMES = 0;
       			var HUBLOT = 0;
       			var PUMA = 0;
       			
       			var NAM = 0;
       			var Nu = 0;
       			var UNISEX = 0;
       			
       			var DayDa = 0;
       			var DayKimLoai = 0;
       			
       			var Pin = 0;
       			var Automatic = 0;
       			
       			if ($('#radio1').is(":checked"))
       			{
       				duoi1trieu = 1;
       			}
       			if ($('#radio2').is(":checked"))
       			{
       				tu1_2trieu = 1;
       			}
       			if ($('#radio3').is(":checked"))
       			{
       				tu2_7trieu = 1;
       			}
       			if ($('#radio4').is(":checked"))
       			{
       				tu7_15trieu = 1;
       			}
       			if ($('#radio5').is(":checked"))
       			{
       				tren15trieu = 1;
       			}
       			if ($('#radio6').is(":checked"))
       			{
       				NAM = 1;
       			}
       			if ($('#radio7').is(":checked"))
       			{
       				Nu = 1;
       			}
       			if ($('#radio8').is(":checked"))
       			{
       				UNISEX = 1;
       			}
       			if ($('#checkbox1').is(":checked"))
       			{
       				SEIKO = 1;
       			}
       			if ($('#checkbox2').is(":checked"))
       			{
       				ROLEX = 1;
       			}
       			if ($('#checkbox3').is(":checked"))
       			{
       				OMEGA = 1;
       			}
       			if ($('#checkbox4').is(":checked"))
       			{
       				VICTORINOX = 1;
       			}
       			if ($('#checkbox5').is(":checked"))
       			{
       				BREITLING = 1;
       			}
       			if ($('#checkbox6').is(":checked"))
       			{
       				GUCCI = 1;
       			}
       			if ($('#checkbox7').is(":checked"))
       			{
       				D_G = 1;
       			}
       			if ($('#checkbox8').is(":checked"))
       			{
       				BOVET = 1;
       			}
       			if ($('#checkbox9').is(":checked"))
       			{
       				TISSOT = 1;
       			}
       			if ($('#checkbox10').is(":checked"))
       			{
       				HERMES = 1;
       			}
       			if ($('#checkbox11').is(":checked"))
       			{
       				HUBLOT = 1;
       			}
       			if ($('#checkbox12').is(":checked"))
       			{
       				PUMA = 1;
       			}
       			if ($('#checkbox13').is(":checked"))
       			{
       				DayDa = 1;
       			}
       			if ($('#checkbox14').is(":checked"))
       			{
       				DayKimLoai = 1;
       			}
       			if ($('#checkbox15').is(":checked"))
       			{
       				Pin = 1;
       			}
       			if ($('#checkbox16').is(":checked"))
       			{
       				Automatic = 1;
       			}
       			
       			//var temp=$('#dcmn').html();
	       		 $.ajax( {
	                 url: 'BoLocSanPham',
	                 type: 'POST',
	                 dataType: 'text',
	                 data:{
	                	 flagActionLocSanPham : 1,
	                	 duoi1trieu : duoi1trieu,
	            		 tu1_2trieu : tu1_2trieu,
	            		 tu2_7trieu : tu2_7trieu,
	            		 tu7_15trieu : tu7_15trieu,
	            		 tren15trieu : tren15trieu,
	            		 SEIKO : SEIKO,
	            		 ROLEX : ROLEX,
	            		 OMEGA : OMEGA,
	            		 VICTORINOX : VICTORINOX,
	            		 BREITLING : BREITLING,
	            		 GUCCI : GUCCI,
	            		 D_G : D_G,
	            		 BOVET : BOVET,
	            		 TISSOT : TISSOT,
	            		 HERMES : HERMES,
	            		 HUBLOT : HUBLOT,
	            		 PUMA : PUMA,
	            		 NAM : NAM,
	            		 Nu : Nu,
	            		 UNISEX : UNISEX,
	            		 DayDa : DayDa,
	            		 DayKimLoai : DayKimLoai,
	            		 Pin : Pin,
	            		 Automatic : Automatic
	                 	
	                 },
	             }).done(function() {	            	
	            	 //location.href=location.href+"?action=filter";
	            	 $('#dcmn').load(location.href+"?action=filter"+" #rowSP, .pagination");
	             });
    		});
       		
        </script>
        
        
        
               
    <%@ include file="/Layout/Footer.jsp"%>
</body>

</html>