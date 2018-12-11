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
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="lib/css/index.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <script src="lib/js/index.js"></script>
    <link rel="stylesheet" href="lib/css/modal.css">
    <script src="lib/vendor/sweet/sweetalert.min.js"></script>
    <link rel="stylesheet" href="lib/vendor/sweet/sweetalert.css">
     <script src="lib/vendor/jquery-validate/jquery.validate.min.js"></script>
  <script src="lib/vendor/jquery-validate/additional-methods.min.js"></script>
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
                        <a class="navbar-brand" href="TrangChu"><span style="font-size: 42px; color:#fff; margin-left: 
                        20px;">TUMBỜ</span></a>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8">
                    <div class="collapse navbar-collapse " id="mynavbar">
                        <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-6">
	                            <form action="TimKiemTheoTenSanPham" method="get">
	                                <div class="input-group col-lg-12 search-bar">
	                                    <input name="ChuoiTK" type="text" class="form-control" placeholder="Tìm Kiếm">
	                                    <div class="input-group-btn">
	                                        <button class="btn btn-default" type="submit">
	                                            <i class="glyphicon glyphicon-search"></i>
	                                        </button>
	                                    </div>
	                                </div>
	                            </form>
                            </div>
                            
                            <div class="col-sm-1 col-md-1 col-lg-1">
                                <ul class=" nav navbar-nav ">
                                    <a style="text-decoration:none;" id="shopping-cart" href="ShowCart">
                                    <%
	                                   String SoLuong="";
	                                   if(request.getSession().getAttribute("SLIConGH")!=null)
	                                   		SoLuong=(request.getSession().getAttribute("SLIConGH")).toString();
	                                %>
                                    <i style=" display: inline;" class="fas fa-shopping-cart"><span class="newbadge" style="z-index: 100;"><%=SoLuong %></span></i>

	                                    
                                    </a>
                                </ul>
                            </div>
                            <style>
                            .newbadge {
                            		
								    background-color: rgb(236, 173, 37);
								    border-radius: 10px;
								    color: white;
								    
								    font-size: 12px;
								    line-height: 1;
								    padding: 3px 7px;
								    text-align: center;
								    vertical-align:  text-top;
								    white-space: nowrap;
								  }
                            </style>
                            <div class="col-sm-5 col-md-5 col-lg-5">
                                <ul class="nav navbar-nav navbar-right">
                                    <!--<li><a class="btnDangNhap" href="#" data-toggle="modal" data-target="#myModal1"style="width: auto; color: #fff;" ><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>-->
                                    <div class="dropdown">
	                                    <button style="margin-top:5px;margin-right:5px;background-color:#282629;border:1px solid #ffffff;color:#fff" class="btn  dropdown-toggle" type="button" data-toggle="dropdown">
	                                    
	                                    <%
	                                    if(session.getAttribute("MaKH")!=null)
	                                    {
	                                    	out.println(session.getAttribute("TenTK"));
	                                    }
	                                    %>
	                                    
	                                    <i class="fas fa-user"></i>
	                                    <span class="caret"></span>
	                                    </button>
	                                    <ul class="dropdown-menu">
	                                    <%
	                                    if(session.getAttribute("MaKH")==null)
	                                    {%>
	                                    	<li><a class="btnDangNhap" href="#" data-toggle="modal" data-target="#myModal1"style="width: auto; color: #000;" ><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
	                                    <%}
	                                    else
	                                    {
	                                    	if(session.getAttribute("Admin")!=null)
	                                    	{%>
	                                    		<li><a href="Admin_Dash_Controll">Quản lí Website</a></li>
	                                    		<li><a class="btnDangXuat">Đăng Xuất</a></li>
	                                    	<% }
	                                    	else
	                                    	{%>
	                                    		<li><a href="ThongTinNguoiDung">Thông Tin Tài Khoản</a></li>
	                                    		<li><a style="cursor: pointer;" class="btnDangXuat">Đăng Xuất</a></li>
	                                    		
	                                    	<% }
	                                    }
	                                    %>
	                                    
	                                    </ul>
                                    </div>
                                </ul>
                           </div>
                                
                                <!---Form Đăng Nhập-->
                                <div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                           <form id="form-DN" role="form" action='Header' method="post">
                                            <div class="modal-body">
                                            	
                                            	<a style="float: right;margin-bottom:20px;" href="" data-dismiss="modal">X</a>
                                            	<br>
                                                
                                                
                                                    <input type="text" class="form-control" placeholder="Tên Tài Khoản" id="TenTaiKhoan" name="TenTaiKhoan">
                                                    <br>
                                                        <input type="password" class="form-control" placeholder="Mật Khẩu" id="MatKhau" name="MatKhau">
                                                        <br>
                                                        <label id="ThongBaoDangNhap"></label>
                                                        <br>
                                                        <label style="color:#000;">
                                                            <input type="checkbox" checked="checked" name="remember"> Nhớ Mật Khẩu
                                                        </label>
                                                  
                                            </div>
                                            <div class="modal-footer footermodal">
                                                <a href="" style="float: left;"> Quên mật khẩu</a>
                                                <button id="btnDNhap" type="submit" class="btn btn-default" data-dismiss="modal">Đăng Nhập</button>
                                                <!-- Gửi flagAction về -->
                                            
                                                <button type="button" class="btn btn-default" id="signin" >Đăng Kí</button>
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
                                            <a class="close" style="float: right;" href="" data-dismiss="modal">X</a>
                                            	<br>
                                                <p style="font-size: 20px; ">Đăng Kí</p>
                                            </div>
                                            <div class="modal-body">
                                            	
                                                <form id="form-DK" role="form" action='Header' method="post">
                                                    <input type="email" class="form-control" placeholder="Nhập Email" id="EmailDK" name="EmailDK">
                                                    <br>
                                                
                                                
                                                    <input type="text" class="form-control" placeholder="Tên Tài Khoản" id="TenTaiKhoanDK" name="TenTaiKhoanDK">
                                                    <br>
                                                
                                                	<input type="password" class="form-control"  placeholder="Mật Khẩu"  id="MatKhauDK" name="MatKhauDK">
                                                	<br>
                                                	<input type="password" class="form-control"  placeholder="Xác Nhận Mật Khẩu"  id="MatKhauXacNhan" name="MatKhauXacNhan">
                                                	<br>
                                                	<label id="ThongBaoDangKi"></label>
                                                	<br>
                                                	<button id="btnDangKi"  type="submit" class="btn btn-default btn-dk"  >Đăng Kí</button>
                                                </form>

                                            </div>
                                            
                                            
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
                                <a href="TrangChu" class="tieuDe">Trang Chủ</a>
                            </li>
                            <li class="dropdown dropdown-large dropdown-hover">
                                <a href="#" class="tieuDe" >Sản Phẩm</a>
                                <ul class="dropdown-menu dropdown-menu-large row">
                                    <li class=" col-lg-3">
                                        <ul>
                                        	<li class="dropdown-header">Giới tính</li>
                                            <li><a href="BoLocSanPham?GioiTinhSuDung=Nam">Nam</a></li>
                                            <li><a href="BoLocSanPham?GioiTinhSuDung=Nữ">Nữ</a></li>
                                            <li><a href="BoLocSanPham?GioiTinhSuDung=Unisex">Cặp Đôi</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li class="dropdown-header">Kiểu máy</li>
                                            <li><a href="BoLocSanPham?KieuMay1=Pin">Pin</a></li>
                                            <li><a href="BoLocSanPham?KieuMay2=automatic">Tự Động</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li class="dropdown-header">Chất Liệu</li>
                                            <li><a href="BoLocSanPham?LoaiDay1=Da">Dây Da</a></li>
                                            <li><a href="BoLocSanPham?LoaiDay2=Kim Loại">Dây Kim loại</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li class="dropdown-header">Khoảng giá</li>
                                            <li><a href="BoLocSanPham?KhoangGia=1">Dưới 1 triệu</a></li>
                                            <li><a href="BoLocSanPham?KhoangGia=2">Từ 1-2 triệu</a></li>
                                            <li><a href="BoLocSanPham?KhoangGia=3">Từ 2-7 triệu</a></li>
                                            <li><a href="BoLocSanPham?KhoangGia=4">Từ 7-15 triệu</a></li>
                                            <li><a href="BoLocSanPham?KhoangGia=5">Trên 15 triệu</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown dropdown-large dropdown-hover">
                                <a href="#" class="tieuDe">Thương Hiệu</a>
                                <ul class="dropdown-menu dropdown-menu-large row">
                                    <li class=" col-lg-3">
                                        <ul>
                                            <li><a href="BoLocSanPham?ThuongHieu1=1">SEIKO</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu2=2">ROLEX</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu3=3">OMEGA</a></li>                                            
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li><a href="BoLocSanPham?ThuongHieu4=4">VICTORINOX</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu5=5">BREITLING</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu6=6">GUCCI</a></li>                                            
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li><a href="BoLocSanPham?ThuongHieu7=7">D&G</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu8=8">BOVET</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu9=9">TISSOT</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3">
                                        <ul>
                                            <li><a href="BoLocSanPham?ThuongHieu10=10">HERMES</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu11=11">HUBLOT</a></li>
                                            <li><a href="BoLocSanPham?ThuongHieu12=12">PUMA</a></li>
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
    <script>
    
    jQuery.validator.addMethod("alphanumeric", function(value, element) {
        return this.optional(element) || /^\w+$/i.test(value);
    }, "Letters, numbers, and underscores only please");
    
    $("#form-DK").validate({
        rules: {
        	EmailDK: "required",
        	TenTaiKhoanDK:{
        		required: true,
        		minlength:8,
        		alphanumeric: true
    	
        	},
        	MatKhauDK:{
        		required: true,
        		maxlength: 16
        	},
            
            MatKhauXacNhan:{
            	required: true,
        		maxlength: 16,
            	equalTo: "#MatKhauDK"
            }
            
        },
        messages:{
        	EmailDK: "Vui lòng nhập đúng Email",
        	TenTaiKhoanDK:{
        		required:"Không được bỏ trống",
        		minlength:"Tên tài khoản phải có trên 8 kí tự",
        		alphanumeric:"Không được có các kí tự đặc biệt"
        	},
        	MatKhauDK: {
        		required: "Không được bỏ trống",
        		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự"
        	},
        	MatKhauXacNhan:{
        		required: "Không được bỏ trống",
        		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự",
        		equalTo:"Xác nhận lại mật khẩu"
        	}
        	
        }
    });
    
    $('#btnDangKi').click(function(e) {
    	
    	
        e.preventDefault();
        if($("#form-DK").valid())
        	{
            $.ajax( {
                url: 'Header',
                type: 'GET',
                data:{
                	flagAction: 2,
                	Email : $('#EmailDK').val(),
                	TenTaiKhoanDK : $('#TenTaiKhoanDK').val(),
                	MatKhauDK : $('#MatKhauDK').val(),
                	MatKhauXacNhan : $('#MatKhauXacNhan').val()
                	
                },
              
               
            }).done(function(data) {
            	
            	CallBoxDangKi(data);
            });

        	}
       
    });
    
    
    $("#form-DN").validate({
        rules: {
        	TenTaiKhoan:{
        		required:true,
        		minlength:8,
        		alphanumeric: true
    
        	},
            MatKhau:{
            	required: true,
        		maxlength: 16
            }
            
        },
        messages:{
        	TenTaiKhoan: {
        		required: "Không được bỏ trống",
        		minlength:"Tên tài khoản phải có trên 8 kí tự",
        		alphanumeric:"Không được có kí tự đặc biệt"
        	},
        	MatKhau:{
        		required: "Không được bỏ trống",
        		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự"
        	}
        	
        }
    });
    
    
    
    $('#btnDNhap').click(function(e) {
    	
    	
        e.preventDefault();
        e.stopPropagation();
        if($("#form-DN").valid())
        	{
        	  $.ajax( {
                  url: 'Header',
                  type: 'GET',
                  dataType: 'text',
                  data:{
                  	flagAction: 1,
                  	TenTaiKhoan : $('#TenTaiKhoan').val(),
                  	MatKhau : $('#MatKhau').val()
                  },
                 
                 
              }).done(function(data) {
              	
              	
              		CallBoxDangNhap(data);
              		
              	
              });
        	}
      
        
    });
    //
    function CallBoxDangNhap(data) {
    	
    	if(data == "ThanhCong")
    		
    		{
    		 swal({
    		      title: "", 
    		      text: "Đăng Nhập Thành Công", 
    		      type: "success",
    		      showCancelButton: false
    		    }, function() {
    		    	location.reload();
    		    });
    		
    		}
    	else
    		{
    		$('#ThongBaoDangNhap').text("Tài khoản Hoặc Mật Khẩu Không Đúng");
    		
    		
    		// swal({
    		      //title: "", 
    		     // text: "Tài khoản Hoặc Mật Khẩu Không Đúng", 
    		      //text: "If you click 'OK', you will be redirected to " , 
    		     // type: "warning",
    		     // showCancelButton: false
    		  //  }, function() {
    		      // Redirect the user
    		    	//location.reload();
    		  //  });
    		}
    	
   
  }
    
    
    
    
    ///
    
    $('.btnDangXuat').click(function(e) {
    	
    	
        e.preventDefault();
        $.ajax( {
            url: 'Header',
            type: 'GET',
            data:{
            	flagAction: 5
            	
            },
          
           
        }).done(function(data) {
        	
        	location.reload();
        });
       
    });
   
    function CallBoxDangKi(data) {
    	if(data == "ThanhCong")
    		{
    		$('#ThongBaoDangKi').text("Đăng Kí Thành Công");
    		setTimeout(function () {
    			$('#myModal2').modal('hide');
    			$('#myModal1').modal('show');
    			
    		    
    		  }, 1000);
    		}
    	else
    		{
    		if(data == "TaiKhoanTonTai")
				{
    			$('#ThongBaoDangKi').text("Tài Khoản Này Đã Tồn Tại");
				}
			else
				{
				//mmk trung
				$('#ThongBaoDangKi').text("MK TRUNG");
				}
    		
    		}
    		
    	
    }
    
    </script>
</body>
</html>