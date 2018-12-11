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
            <div class="col-lg-3 col-md-3 col-sm-3 listCheckBox">
                <!--Lisst checkBox lọc--->
                <div class="list-group">
	                <form id="radio">
		                <fieldset>
		                   	<p style="font-size: 26px;">Khoảng giá</p>
		                    <div class="list-group-item">
		                        <label>                   
		                            <input id="checkboxKhoangGia1" name="radio" class="common-selector" type="radio" value="Duoi1trieu">
		                            <a class="MucGia"  href="BoLocSanPham?KhoangGia=1">Dưới 1 triệu</a>
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="checkboxKhoangGia2"  name="radio" class="common-selector" type="radio" value="1den2trieu">
		                            <a class="MucGia" href="BoLocSanPham?KhoangGia=2">Từ 1-2 triệu</a>
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="checkboxKhoangGia3" name="radio" class="common-selector" type="radio" value="2den7trieu">
		                            <a class="MucGia" href="BoLocSanPham?KhoangGia=3">Từ 2-7 triệu</a>
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="checkboxKhoangGia4"  name="radio" class="common-selector" type="radio" value="7den15trieu">
		                            <a class="MucGia" href="BoLocSanPham?KhoangGia=4">Từ 7-15 triệu</a>
		                        </label>
		                    </div>
		                    <div class="list-group-item">
		                        <label>
		                            <input id="checkboxKhoangGia5"  name="radio" class="common-selector" type="radio" value="15den30trieu">
		                            <a class="MucGia" href="BoLocSanPham?KhoangGia=5">Trên 15 triệu</a>
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
                                <a class="MucGia" href="BoLocSanPham?ThuongHieu1=1">SEIKO</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox2" class="common-selector" type="checkbox" value="ROLEX">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu2=2">ROLEX</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox3" class="common-selector" type="checkbox" value="OMEGA">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu3=3">OMEGA</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox4" class="common-selector" type="checkbox" value="VICTORINOX">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu4=4">VICTORINOX</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox5" class="common-selector" type="checkbox" value="BREITLING">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu5=5">BREITLING</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox6" class="common-selector" type="checkbox" value="GUCCI">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu6=6">GUCCI</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox7" class="common-selector" type="checkbox" value="D&G">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu7=7">D&G</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox8" class="common-selector" type="checkbox" value="BOVET">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu8=8">BOVET</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox9 class="common-selector" type="checkbox" value="TISSOT">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu9=9">TISSOT</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox10" class="common-selector" type="checkbox" value="HERMES">
                           		<a class="MucGia" href="BoLocSanPham?ThuongHieu10=10">HERMES</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox11" class="common-selector" type="checkbox" value="HUBLOT">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu11=11">HUBLOT</a>
                            </label>
                        </div>
                        <div class="list-group-item">
                            <label>
                                <input id="checkbox12" class="common-selector" type="checkbox" value="PUMA">
                            	<a class="MucGia" href="BoLocSanPham?ThuongHieu12=12">PUMA</a>
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
		                            <input id="CheckBoxNam" name="radio" class="common-selector " type="radio" value="Nam">
		                            <a class="MucGia" href="BoLocSanPham?GioiTinhSuDung=Nam">Nam</a>
		                        </label>
		                    </div>
		                    <div class=" list-group-item">
		                        <label>
		                            <input id="CheckBoxNu" name="radio" class="common-selector" type="radio" value="Nu">
		                            <a class="MucGia" href="BoLocSanPham?GioiTinhSuDung=Nữ">Nữ</a>
		                        </label>
		                    </div>
		                    <div class=" list-group-item">
		                        <label>
		                            <input id="CheckBoxUnisex" name="radio" class="common-selector" type="radio" value="Unisex">
		                            <a class="MucGia" href="BoLocSanPham?GioiTinhSuDung=Unisex">Unisex</a>
		                        </label>
		                    </div>
	                    </fieldset>
                    </form>
                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Chất Liệu Dây</p>
                    <div class=" list-group-item">
                        <label>
                        	<a class="MucGia" href="BoLocSanPham?LoaiDay1=da">
	                            <input id="CheckBoxDa" class="common-selector" type="checkbox">
	                        	Dây da
	                        </a>
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                        	<a class="MucGia" href="BoLocSanPham?LoaiDay2=Kim Loại">
                            	<input id="CheckBoxKimLoai" class="common-selector" type="checkbox">
                        		Dây Kim loại
                        	</a>
                        </label>
                    </div>

                </div>
                <div class="list-group">
                    <p style="font-size: 26px;">Kiểu máy</p>

                    <div class=" list-group-item">
                        <label>
                        <a class="MucGia" href="BoLocSanPham?KieuMay1=Pin">
                            <input id="CheckBoxPin" class="common-selector" type="checkbox">
                        	Pin
                        </a>
                        </label>
                    </div>
                    <div class=" list-group-item">
                        <label>
                        <a class="MucGia" href="BoLocSanPham?KieuMay2=Automatic">
                            <input id="CheckBoxAutomatic" class="common-selector" type="checkbox">
                        	Automatic</a>
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
		                	Object result=request.getAttribute("LocSanPham");
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
            
          	<%
          		//Các checkbox thương hiệu
          		HttpSession session1 = request.getSession();
            	if(session1.getAttribute("ThuongHieu1")!=null)
          	 	{%>
                	document.getElementById("checkbox1").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu2")!=null)
          	 	{%>
                	document.getElementById("checkbox2").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu3")!=null)
          	 	{%>
                	document.getElementById("checkbox3").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu4")!=null)
          	 	{%>
                	document.getElementById("checkbox4").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu5")!=null)
          	 	{%>
                	document.getElementById("checkbox5").checked = true;
            	<%}
            	if(session1.getAttribute("ThuongHieu6")!=null)
          	 	{%>
                	document.getElementById("checkbox6").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu7")!=null)
          	 	{%>
                	document.getElementById("checkbox7").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu8")!=null)
          	 	{%>
                	document.getElementById("checkbox8").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu9")!=null)
          	 	{%>
                	document.getElementById("checkbox9").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu10")!=null)
          	 	{%>
                	document.getElementById("checkbox10").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu11")!=null)
          	 	{%>
                	document.getElementById("checkbox11").checked = true;
            	<%}
            	
            	if(session1.getAttribute("ThuongHieu12")!=null)
          	 	{%>
                	document.getElementById("checkbox12").checked = true;
            	<%}
            	
            	//Giới tính
            	if(session1.getAttribute("GioiTinhSuDung")!=null)
          	 	{
            		String gioiTinh=(String)(session1.getAttribute("GioiTinhSuDung"));
          	 		if(gioiTinh.equals("Nam"))
          	 		{%>
                		document.getElementById("CheckBoxNam").checked = true;
            		<%}
          	 		if(gioiTinh.equals("Nữ"))
          	 		{%>
                		document.getElementById("CheckBoxNu").checked = true;
          	 		<%}
          	 		if(gioiTinh.equals("Unisex"))
          	 		{%>
                		document.getElementById("CheckBoxUnisex").checked = true;
          	 		<%}
            	}
            	//Kiểu máy
            	if(session1.getAttribute("KieuMay1")!=null)
          	 	{%>
	            	document.getElementById("CheckBoxPin").checked = true;
            	<%}
            	else{
            		
            	}
            	
            	if(session1.getAttribute("KieuMay2")==null)
          	 	{%>
	            	document.getElementById("CheckBoxAutomatic").checked = false;
            	<%}
            	else{%>
            		document.getElementById("CheckBoxAutomatic").checked = true;
            	<%}
            	
            	
            	
				//Loại dây
				if(session1.getAttribute("LoaiDay1")!=null)
          	 	{%>
	            	document.getElementById("CheckBoxDa").checked = true;
            	<%}
            	if(session1.getAttribute("LoaiDay2")!=null)
          	 	{%>
	            	document.getElementById("CheckBoxKimLoai").checked = true;
            	<%}

            	//Khoảng giá
            	
            	if(session1.getAttribute("KhoangGia")!=null)
            	{
            		int KhoangGia=Integer.parseInt(session1.getAttribute("KhoangGia").toString());
          	 		if(KhoangGia==1)
          	 		{%>
                    	document.getElementById("checkboxKhoangGia1").checked = true;
          	 		<%}
          	 		if(KhoangGia==2)
          	 		{%>
                    	document.getElementById("checkboxKhoangGia2").checked = true;
          	 		<%}
          	 		if(KhoangGia==3)
          	 		{%>
                    	document.getElementById("checkboxKhoangGia3").checked = true;
          	 		<%}
          	 		if(KhoangGia==4)
          	 		{%>
                    	document.getElementById("checkboxKhoangGia4").checked = true;
          	 		<%}
          	 		if(KhoangGia==5)
          	 		{%>
                    	document.getElementById("checkboxKhoangGia5").checked = true;
          	 		<%}
            	}
            	%>
        </script>
        
        <script>
    	$('#CheckBoxAutomatic').change(function(){
	            if (this.checked==true){
	            	alert("vô nè");
	            	<%
	            	session.setAttribute("KieuMay2","Automatic");
	            	%>
	    		    $.ajax({
	    		        url: 'BoLocSanPham',
	    		        type: 'post',
	    		        data:{
	    		        	KieuMay2 :null,//không có cũng đc
	    		        },
	    		       
	    		    })
	    		    .done(function() {		
	    		    	location.reload();
	            	
	   		    });
	            }
	            else{
	            	
	            	alert("bỏ nè");
	            	<%
	            	session.setAttribute("KieuMay2",null);
	            	%>
	    		    $.ajax({
	    		        url: 'BoLocSanPham',
	    		        type: 'post',
	    		        data:{
	    		        	KieuMay2 :null,
	    		        },
	    		       
	    		    })
	    		    .done(function() {	
	    		    	//location.replace('http://localhost:8080/WebBanDongHo/BoLocSanPham');
	            		location.reload();
	   		    });
	            }
	        });
        </script>
        
        
        
        
               
    <%@ include file="/Layout/Footer.jsp"%>
</body>

</html>