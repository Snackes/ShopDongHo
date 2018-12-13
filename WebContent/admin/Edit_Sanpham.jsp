<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ModelBean.SanPham"%>
<%@page import="ModelBean.ThuongHieu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông tin sản phẩm</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="lib/Css_admin/Admin_QLSP.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>
<body>

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="panel-heading" style="font-size: 25px;"><strong>Chi tiết sản phẩm</strong></div>
            <div class="panel-body">
                <div class="row-1 thongtin-sp" style="margin-top:50px">
                    <div class="col-lg-6 col-md-6 edit-sp">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="float:left; font-size:18px">
                        <table class="table ttct-sp">
                            <thead>
                                <tr>
                                <th>Thông tin sản phẩm:</th>
                                <th>
                                    <button type="submit" class="btn btn-default btn-sm luu-btn" id="luu-btn">Lưu</button>
                                </th>
                                </tr>
                            </thead>
                  <%
                  		Object tt = request.getSession().getAttribute("Funct_Admin_CTSanPham");
                  		ResultSet ctsp = null;
                  		if(tt != null)
                  		{
                  			ctsp = (ResultSet)tt;
                  			while(ctsp.next())
                  			{
                  				int masp = ctsp.getInt("masp");
                  				String tensp = ctsp.getString("tensp");
                  				String thuonghieu = ctsp.getString("thuonghieu");
                  				String kieumay = ctsp.getString("kieumay");
                  				String gioitinh = ctsp.getString("gioitinh");
                  				String kichco = ctsp.getString("kichco");
                  				String chatlieuvo = ctsp.getString("chatlieuvo");
                  				String chatlieukinh = ctsp.getString("chatlieukinh");
                  				String chatlieuday = ctsp.getString("chatlieuday");
                  				String dochiunuoc = ctsp.getString("dochiunuoc");
                  				String baohanh = ctsp.getString("baohanh");
                  				int soluong = ctsp.getInt("soluong");
                  				double giaban = ctsp.getDouble("giaban");
                  				int sale = ctsp.getInt("sale");
                  				String anh1 = ctsp.getString("anh1");
                  				String anh2 = ctsp.getString("anh2");
                  				String anh3 = ctsp.getString("anh3");
                  				String anh4 = ctsp.getString("anh4");
                  				
                  %>
                            <tbody>
                                <tr>
                                    <td style="float:left">Mã sản phẩm:</td>
                                    <td><textarea class="masp-text" rows="1" disabled><%=masp%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Tên sản phẩm:</td>
                                    <td><textarea class="tensp-text" rows="1"><%=tensp%></textarea></td>
                                </tr>
                                <tr>
                  <%
                     	Object dsth = request.getSession().getAttribute("Funct_Admin_DSThHieu");
                        ThuongHieu[] ds_th = null;
                        if(dsth != null)
                        {
                        	ds_th = (ThuongHieu[])dsth;
                        }
                  %>
                                    <td style="float:left">Thương hiệu:</td>
                                    <td>
                                    <select class="thuonghieu-text">
               					<%
            						for(int i=0;i<ds_th.length;i++)
            						{
            							int MaThH = ds_th[i].getMaTH();
            							String TenThH = ds_th[i].getTenThuongHieu();
            							if(TenThH.equals(thuonghieu))
            							{
               					%>
                                        <option value="<%=MaThH%>" selected><%=TenThH%></option>
                                <%		}else
                                		{
                                %>
                                		<option value="<%=MaThH%>"><%=TenThH%></option>
                                <%		}	}	%>
                                    </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="float:left">Kiểu máy:</td>
                                    <td><textarea class="kieumay-text" rows="1"><%=kieumay%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Giới tính:</td>
                                    <td><textarea class="gioitinh-text" rows="1"><%=gioitinh%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Kích cỡ:</td>
                                    <td><textarea class="kickco-text" rows="1"><%=kichco%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Chất liệu vỏ:</td>
                                    <td><textarea class="chatlieuvo-text" rows="1"><%=chatlieuvo%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Chất liệu kính:</td>
                                    <td><textarea class="chatlieukinh-text" rows="1"><%=chatlieukinh%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Chất liệu dây:</td>
                                    <td><textarea class="chatlieuday-text" rows="1"><%=chatlieuday%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Độ chịu nước:</td>
                                    <td><textarea class="dochiunuoc-text" rows="1"><%=dochiunuoc%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Bảo hành:</td>
                                    <td><textarea class="baohanh-text" rows="1"><%=baohanh%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Số lượng:</td>
                                    <td><textarea class="soluong-text" rows="1"><%=soluong%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Giá bán:</td>
                                    <td><textarea class="giaban-text" rows="1"><%=String.format("%.0f", giaban)%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Sale of:</td>
                                    <td><textarea class="saleoff-text" rows="1"><%=sale%></textarea></td>
                                </tr>
                                <tr>
                                    <td style="float:left">Hình ảnh:</td>
                                </tr>
                                <tr>
                                    <td><img class="img-responsive" src="lib/images/<%=anh1%>" alt="anh1" width="100" height="100"></td>
                                    <td><img class="img-responsive" src="lib/images/<%=anh2%>" alt="anh2" width="100" height="100"></td>
                                </tr>
                                <tr>
                                    <td><img class="img-responsive" src="lib/images/<%=anh3%>" alt="anh3" width="100" height="100"></td>
                                    <td><img class="img-responsive" src="lib/images/<%=anh4%>" alt="anh4" width="100" height="100"></td>
                                </tr>
                            </tbody>
                 <%	}	} %>
                        </table>
                        </div>
                    </div>
                    <!--    -->
                    <div class="col-lg-6 col-md-6 upload-pic">
                    	<div class="row">
                    		<span style="float:left; margin-bottom: 20px">Tải ảnh lên</span>
                    	</div>
						<form class="form-inline form-tt">
                            <div class="colum-1-tt col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group">
                                    <lable for="anh1">Ảnh 1:</label>
                                    <input type="file" name="anh1" id="anh1">
                                </div>
                                <div class="form-group">
                                    <lable for="anh2">Ảnh 2:</label>
                                    <input type="file" name="anh2" id="anh2">
                                </div>
                                <div class="form-group">
                                    <lable for="anh3">Ảnh 3:</label>
                                    <input type="file" name="anh3" id="anh3">
                                </div>
                                <div class="form-group">
                                    <lable for="anh4">Ảnh 4:</label>
                                    <input type="file" name="anh4" id="anh4">
                                </div>
                            </div>
                        </form>
                        <button type="submit" class="btn btn-default btn-sm upload-pic" id="upload-pic">Upload</button>
                    </div>
                </div>
                
                <script type="text/javascript">
                //sự kiện lưu thông tin sau khi sửa chữa
    				$(function () {
        				$('#luu-btn').click(function (e) {
                    		var masp = $.trim($(".masp-text").val());
                    		var tensp = $.trim($(".tensp-text").val());
                    		var thuonghieu = $.trim($(".thuonghieu-text option:selected").val());
                    		var kieumay = $.trim($(".kieumay-text").val());
                    		var gioitinh = $.trim($(".gioitinh-text").val());
                    		var kichco = $.trim($(".kickco-text").val());
                    		var chatlieuvo = $.trim($(".chatlieuvo-text").val());
                    		var chatlieukinh = $.trim($(".chatlieukinh-text").val());
                    		var chatlieuday = $.trim($(".chatlieuday-text").val());
                    		var dochiunuoc = $.trim($(".dochiunuoc-text").val());
                    		var baohanh = $.trim($(".baohanh-text").val());
                    		var soluong = $.trim($(".soluong-text").val());
                    		var giaban = $.trim($(".giaban-text").val());
                    		var sale = $.trim($(".saleoff-text").val());
            				$.ajax({
                    			type: 'GET',
                    			url: 'Action_Edit',
                    			data: {
                             		MaSP : masp,
                             		TenSP : tensp,
                             		ThH : thuonghieu,
                             		Kieumay : kieumay,
                             		Gioitinh : gioitinh,
                             		Kichco : kichco,
                             		Vo : chatlieuvo,
                             		Kinh : chatlieukinh,
                             		Day : chatlieuday,
                             		Chiunuoc : dochiunuoc,
                             		Baohanh : baohanh,
                             		Soluong : soluong,
                             		Giaban : giaban,
                             		Sale : sale,
                    				FLAG : 0
                    			},
                    			success : function(response){
                    				alert(response);
                    				window.history.back();
                    			}
                			})
        				});
    				});
                
    				$(function () {
        				$('#upload-pic').click(function (e) {
                    		var masp = $.trim($(".masp-text").val());
							var anh1 = $.trim($("#anh1").val().split(/(\\|\/)/g).pop());
							var anh2 = $.trim($("#anh2").val().split(/(\\|\/)/g).pop());
							var anh3 = $.trim($("#anh3").val().split(/(\\|\/)/g).pop());
							var anh4 = $.trim($("#anh4").val().split(/(\\|\/)/g).pop());
            				$.ajax({
                    			type: 'GET',
                    			url: 'Action_Edit',
                    			data: {
                             		MaSP : masp,
									Anh1 : anh1,
									Anh2 : anh2,
									Anh3 : anh3,
									Anh4 : anh4,
                    				FLAG : 1
                    			},
                    			success : function(response){
                    				alert(response);
                    				window.history.back();
                    			}
                			})
        				});
    				});
                	
                </script>
                
            </div>
    </div>

</body>
</html>