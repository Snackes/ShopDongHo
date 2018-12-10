<%@page import="ModelBean.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="lib/css/ThongTinCaNhan.css">	
	
    
</head>

<body>
 <%@ include file="/Layout/Header.jsp"%>
 
  
 <!---CONTENT HERE-->
 <%
 	Object result = request.getAttribute("ThongTinKhachHang");
 		KhachHang kh =null;
 		if(result!=null)
 		{
 			kh = (KhachHang)result;
 		}
 
 %>
 
 
 
 
    <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a id="TrangChu" href="#">Trang chủ</a></li>
            <li class="breadcrumb-item active">Thông tin tài khoản</li>
        </ol>
        <div class="container" style="margin-top:50px;margin-bottom:50px;">
            <form id="MyForm" class="form-horizontal bv-form" name="frmProfiles_edit" action="ThongTinNguoiDung"  method="post">
                <div class="row">
                    <div class="col-md-9" style="margin-top:30px;">
                            
                           
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="fullname">Họ tên</label>
                                        <div class="col-sm-9">
                                            <input id="HoTen-TT" type="text" name="fullname" placeholder="Họ tên của bạn" class="form-control" 
                                           <%
                                           if(kh.getHoTen()!=null)
                                           {%>
                                        	   value="<%=kh.getHoTen()%>"
                                           <%}
                                           %>
                                            >
                                        </div>
                                    </div>
                                </div>
            
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="email">Email</label>
                                        <div class="col-sm-9">
                                            <input id="Email-TT" type="email" name="email" placeholder="Email" class="form-control" 
                                           <%
                                           if(kh.getEmail()!=null)
                                           {%>
                                        	   value="<%=kh.getEmail()%>"
                                           <%}
                                           %>
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="mobile">Điện thoại</label>
                                        <div class="col-sm-9">
                                            <input id="SDT-TT" name="mobile" placeholder="Điện thoại" class="form-control" 
                                             <%
                                           if(kh.getSDT()!=0)
                                           {%>
                                        	   value="<%=kh.getSDT()%>"
                                           <%}
                                           %>
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="address">Địa chỉ</label>
                                        <div class="col-sm-9">
                                            <input id="DiaChi-TT" type="text" name="address" placeholder="Địa chỉ" class="form-control"
                                             <%
                                           if(kh.getDiaChi()!=null)
                                           {%>
                                        	   value="<%=kh.getDiaChi()%>"
                                           <%}
                                           %>
                                            >
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
                                            <input id="MatKhauCu" type="password" name="MatKhauCu" placeholder="Mật khẩu cũ" class="form-control"
                                                 >
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="NewPass">Mật khẩu mới</label>
                                        <div class="col-sm-9">
                                            <input id="MatKhauMoi" type="password" name="MatKhauMoi" placeholder="Mật khẩu mới" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
            
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="Pass_Again">Nhập lại</label>
                                        <div class="col-sm-9">
                                            <input id="password_again" type="password" name="password_again" placeholder="Nhập lại mật khẩu mới" class="form-control" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="divThayDoi">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-10">
                        <p class="ThongBao"></p>
                            <button id="btnCapNhat" class="btn btn-3" type="submit" style="font-size:16px;">
                                Cập nhật
                            </button>
                        </div>
                    </div>
                </div>
            </form>
           
            
            
            <script>
                
                
               
                    $(".checkboxHienAn").click(function () {
                        $(".ThongTinDoiMatKhau").toggle(1000);
                    })
              
           
                $("#MyForm").validate({
                    rules: {
                    	MatKhauCu:{
                    		required: true,
                    		maxlength: 16
                    	},
                        MatKhauMoi: {
                        	required: true,
                    		maxlength: 16
                        },
                        password_again: {
                            equalTo: "#MatKhauMoi",
                            maxlength: 16
                        }
                    },
                    messages:{
                    	MatKhauCu: {
                    		required: "Không được bỏ trống",
                    		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự"
                    	},
                    	MatKhauMoi: {
                    		required: "Không được bỏ trống",
                    		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự"
                    	},
                    	password_again:{
                    		equalTo:"Mật khẩu không trùng nhau",
                    		maxlength: "Mật khẩu có độ dài tối đa 16 kí tự"
                    	}
                    }
                });
                    
                    
                    //ajaxx
                    
                    	 $('#btnCapNhat').click(function(e) {
                    		 e.preventDefault();
                        	 
 					    	
                    		 
                    			 if($('#squaredcheck2').prop('checked')==false)
						    		{
						    		 $.ajax( {
								            url: 'ThongTinNguoiDung',
								            type: 'POST',
								            data:{
								            	flagActionThongTinNguoiDung: 1,
								            	HoTen: $('#HoTen-TT').val(),
								            	DiaChi:$('#DiaChi-TT').val(),
								            	SDT:$('#SDT-TT').val(),
								            	EmailThongTin:$('#Email-TT').val()
								            	
								            },
								          
								           
								        }).done(function(data) {
								        	
								        	CallBoxThongBao(data);
								        });
						    		}
						    	else
						    		{
						    		if($("#MyForm").valid())
	                    			 {
						    			 $.ajax( {
									            url: 'ThongTinNguoiDung',
									            type: 'POST',
									            data:{
									            	flagActionThongTinNguoiDung: 2,
									            	HoTen: $('#HoTen-TT').val(),
									            	DiaChi:$('#DiaChi-TT').val(),
									            	SDT:$('#SDT-TT').val(),
									            	EmailThongTin:$('#Email-TT').val(),
									            	MatKhauCu:$('#MatKhauCu').val(),
									            	MatKhauMoi:$('#MatKhauMoi').val()
									            	
									            },
									          
									           
									        }).done(function(data) {
									        	
									        	CallBoxThongBao(data);
									        });
	                    			 }
						    		
						    		}
				    		
                    			 
                    		 
                        	 
                        	
    					    	
    					    	
    					    	
    					    	
    					    	 
    					    	
    							    		
    					    	
    					    	
    					    	
    					    	
    					        
    					       
    					       
    					    });
                    	 
                     
                    function CallBoxThongBao(data)
                    {
                    	if(data == "ThanhCong")
                    		{
                    		$('.ThongBao').text("Cập Nhật Thành Công");
                    		}
                    	else
                    		{
                    		if(data =="MatKhauMoiKhongDuocTrung")
                    			{
                    			$('.ThongBao').text("Mật Khẩu Mới Không Được Trùng!");
                    			}
                    		else
                    			{
                    			if(data=="MatKhauSai")
	                    			{
	                    				$('.ThongBao').text("Mật Khẩu Sai");
	                    			}
	                    		else
	                    			{
	                    				$('.ThongBao').text("Cập Nhật Thất Bại");
	                    			}
                    			}
                    		
                    		
                    		}
                    	
                    }
                    
                    
                    
                    
            </script>
            </div>
    </div>


    <!---END CONTENT--->

	<%@ include file="/Layout/Footer.jsp"%>
</body>

</html>