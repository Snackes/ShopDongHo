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
    <title>Nhập sản phẩm</title>
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
                <div class="panel-heading" style="font-size: 25px;"><strong>Nhập hàng</strong></div>
                    <div class="panel-body">
                        <div class="row-1 thongtin-sp" style="margin-top:50px">
                            <div class="col-lg-6 col-md-6 edit-sp">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="float:left; font-size:18px">
                                <table class="table ttct-sp">
                                    <thead>
                                        <tr>
                                        <th id="date"></th>
                                        <div>
                                            <button type="submit" class="btn btn-default btn-sm sua-btn" id="add-btn">Thêm</button>
                                        </div>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="float:left">Tên sản phẩm:</td>
                                            <td><textarea class="tensp-text" rows="1"></textarea></td>
                                        </tr>
                                        
                                		<tr>
                  <%
                     	Object dsth = request.getAttribute("Funct_Admin_DSThHieu");
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
               				%>

                                		<option value="<%=MaThH%>"><%=TenThH%></option>
                                		
                            <%	}	%>
                                    </select>
                                    </td>
                                </tr>
                                        
                                        <tr>
                                            <td style="float:left">Số lượng nhập:</td>
                                            <td><textarea class="soluong-text" rows="1"></textarea></td>
                                        </tr>
                                        <tr>
                                            <td style="float:left">Giá vốn:</td>
                                            <td><textarea class="giavon-text" rows="1"></textarea></td>
                                        </tr>    
                                    </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 done-btn">
                            	<button type="submit" class="btn btn-info btn-sm submit-btn">Hoàn thành đơn hàng</button>
                            </div>
                        </div>
                        <div class="row-2">
                            <table class="table table-condensed scroll">
                                <thead>
                                    <tr>
                                        <th>Mã sản phẩm</th>
                                        <th>Tên sảm phẩm</th>
                                        <th>Số lượng nhập</th>
                                        <th>Giá vốn</th>
                                    </tr>
                                </thead>
        			<%
        				Object ct = request.getAttribute("Funct_Admin_CTHDN");
        				ResultSet ct_hdn = null;
        				if(ct != null)
        				{
        					ct_hdn = (ResultSet)ct;
        					while(ct_hdn.next())
        					{
        						int masp = ct_hdn.getInt("masp");
        						String tensp = ct_hdn.getString("tensp");
        						int soluong = ct_hdn.getInt("soluong");
        						float giavon = ct_hdn.getFloat("giavon");
        			%>
                    			<tbody>
                        			<tr>
                            			<td><%=masp%></td>
                            			<td><%=tensp%></td>
                            			<td><%=soluong%></td>
                            			<td><%=String.format("%,.0f", giavon)%></td>
                        			</tr>
                    			</tbody>
       				<%	}	} %>
                            </table>
                        </div>

                    <script type="text/javascript">
                        var d = new Date();
                        document.getElementById("date").innerHTML = d;
                        
                        
        				$(function () {
            				$('#add-btn').click(function (e) {
            					if($.trim($(".tensp-text").val()) != "" && $.trim($(".soluong-text").val()) != "" && $.trim($(".giavon-text").val()) != "")
            					{
                        			var tensp = $.trim($(".tensp-text").val());
                        			var thuonghieu = $.trim($(".thuonghieu-text option:selected").val());
                        			var soluong = $.trim($(".soluong-text").val());
                        			var giavon = $.trim($(".giavon-text").val());
                					$.ajax({
                        				type: 'POST',
                        				url: 'Do_Import',
                        				data: {
                                 			Tensp : tensp,
                                 			ThH : thuonghieu,
                                 			Soluong : soluong,
                                 			Giavon : giavon,
                        					FLAG : 1
                        				},
                        				success : function(response){
                        					alert(response);
                        					location.href = location.href + "?action=doImport";
                        				}
                    				})
            					}
            					else
            						alert("Chưa nhập đủ thông tin !");
            				});
        				});
        				
        				$(function () {
            				$('.submit-btn').click(function (e) {
								alert("Done !");
								//window.history.back();
								location.href = "Admin_QLSP_Controll";
        				});
        				});
                    
                    </script>

                    </div>
            </div>

</body>
</html>