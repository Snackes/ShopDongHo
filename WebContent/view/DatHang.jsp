<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../lib/css/DatHang.css">
<body>
  	<%@ include file="/Layout/Header.jsp"%>
    <!---CONTENT HERE-->
    <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7">
                        <div id="TuVan"> 
                            <br />
                            <p>
                            Bạn đã có tài khoản? 
                            <a href="#">Ấn vào đây để đăng nhập</a>
                            </p>
                            <p>
                            Có mã ưu đãi? 
                            <a href="#">Nhấp vào đây để nhập mã của bạn</a>
                            </p>
                
                        </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5">
                </div>
            </div>
            <form class="form_ThongTinThanhToan">
                    <div class="row">
                        <div class="col-lg-7 col-md-7 col-sm-7">
                            <div class="div_ThongTinThanhToan">
                                <div class="form_DatHang">
                                    <strong>THÔNG TIN THANH TOÁN</strong><br />
                                    <label class="p-t-20" for="uname"><b>Họ và tên</b></label>
                                    <input id="uname" type="text" name="uname" placeholder="Họ và Tên" class="form-control" maxlength="256" required>
                
                                    <label for="address"><b>Địa chỉ</b></label>
                                    <input type="text" name="address" placeholder="Địa chỉ" class="form-control" maxlength="256" required>
                
                                    <label for="Address_city"><b>Tỉnh / Thành phố </b></label>
                                    <input type="text" name="Address_city" placeholder="Tỉnh / Thành phố" class="form-control" maxlength="256" required>
                
                                    <label for="mobile"><b>Số điện thoại</b></label>
                                    <input type="number" name="mobile" placeholder="Số điện thoại" class="form-control" maxlength="256" required>
                
                                    <label for="email"><b>Địa chỉ email</b></label>
                                    <input type="email" name="email" placeholder="Email" class="form-control" maxlength="256" required>                                 
                                </div>
                            </div>            
                            <div id="divTTBS">
                                <strong>THÔNG TIN BỔ SUNG</strong>
                                <p style="font-size: 15px">Ghi chú đơn hàng (tùy chọn)</p>
                                <textarea id="TextArea_ThongTinBoSung" rows="4" cols="80" placeholder="Ghi chú về đơn hàng, VD:Thời gian hay chỉ dẫn giao hàng chi tiết hơn"></textarea>
                            </div>
                        </div>
                
                        <div class="col-lg-5 col-md-5 col-sm-5">
                
                            <div class="div_ThanhToan">
                                <div id="divChinhKhung">
                                    <strong style="font-weight:bold">ĐƠN HÀNG CỦA BẠN</strong>
                                    <table class="table_SanPham_SeThanhToan" cellpadding="30px" cellspacing="20px">
                                        <thead class="table_head" cellpadding="30px" cellspacing="20px">
                                            <tr>
                                                <th class="TenSanPham">Sản phẩm</th>
                                                <th class="TongCong">Thành tiền</th>
                                            </tr>
                
                                        </thead>
                
                                        <tbody>
                                            <tr class="cart_item">
                                                <td class="TenSanPham p-r-10">
                                                    <span class="TenVaSoLuong"> Đồng hồ casio <b>x1</b>
                                                    </span>
                
                                                </td>
                                                <td class="TongCong">
                                                    <span class="tongTien"> 10
                                                        <span class="DonVi"> đ </span>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                
                
                                        <tfoot>
                                            <tr class="cart_subtotal">
                                                <th> Tổng cộng </th>
                                                <td>
                                                    <span class="tongTien"> 10</span>
                                                    <span class="DonVi"> đ </span>
                                                </td>
                                            </tr>
                                        </tfoot>
                
                
                                    </table>
                                    <div class="divChinhSach">
                                        <p style="font-style:oblique">Hình thức thanh toán: Thanh toán khi nhận hàng</p>
                                        <button href="#" class="btn btn-3">
                                            Đặt hàng </button>
                                        <p>Dữ liệu cá nhân của bạn sẽ được sử dụng để xử lý đơn đặt hàng của bạn,
                                            hỗ trợ trải nghiệm của bạn trên trang web này và cho các mục đích khác được mô tả trong
                                            privacy policy của chúng tôi.
                                        </p>
                                        <a href="#">chính sách riêng tư.</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </form>
        </div>

    <!---END CONTENT--->
	<%@ include file="/Layout/Footer.jsp"%>

</body>

</html>