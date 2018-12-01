<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../lib/css/ThongTinCaNhan.css">	
	<script src="../lib/vendor/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".checkboxHienAn").click(function () {
                $(".ThongTinDoiMatKhau").toggle(1000);
            })
        })
    </script>
</head>

<body>
 <%@ include file="/Layout/Header.jsp"%>
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
                                            <input id="fullname" type="text" name="fullname" placeholder="Họ tên của bạn" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="email">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email" name="email" placeholder="Email" class="form-control" maxlength="256" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group required has-feedback">
                                        <label class="control-label col-sm-3" for="mobile">Điện thoại</label>
                                        <div class="col-sm-9">
                                            <input type="number" name="mobile" placeholder="Điện thoại" class="form-control" maxlength="256"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="address">Địa chỉ</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="address" placeholder="Địa chỉ" class="form-control" maxlength="256" required>
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
                                            <input id="password" type="text" name="password" placeholder="Mật khẩu mới" class="form-control" maxlength="256">
                                        </div>
                                    </div>
                                </div>
                            </div>
            
            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row form-group has-feedback">
                                        <label class="control-label col-sm-3" for="Pass_Again">Nhập lại</label>
                                        <div class="col-sm-9">
                                            <input id="password_again" type="text" name="password_again" placeholder="Nhập lại mật khẩu mới" class="form-control" maxlength="256">
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

	<%@ include file="/Layout/Footer.jsp"%>
</body>

</html>