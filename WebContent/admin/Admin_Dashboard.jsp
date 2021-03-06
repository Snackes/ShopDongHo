<%@page import="java.util.ArrayList"%>
<%@page import="ModelBean.SanPham"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lí Shop</title>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="lib/vendor/bootstrap/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src="lib/vendor/jquery/jquery.min.js"></script>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script src="lib/vendor/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="lib/Css_admin/Admin_Dashboard.css">
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->
    <link rel="stylesheet" href="lib/vendor/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <!--Google Chart-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

</head>
<body>
    <!--Tạo nav fix top-->
    <nav class="top1 navbar navbar-default navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span style="font-size: 42px; color:#fff; margin-left: 20px;">TUMBỜ</span></a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
                <!--img src="lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35"-->
                <span class="glyphicon glyphicon-user"></span>
                <li class="dropdown">
                    <a id="admin_name" href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="font-size: 15px; color:#fff;">Admin_Name</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="menu-drop"><a href="TrangChu">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        <div class="navbar-default sidebar" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <p style="margin-top: 20px"></p>
                        <a id="dash" href="Admin_Dash_Controll"><span class="glyphicon glyphicon-home" style="margin-right: 5px;"></span>Trang chính</a>
                        <a id="qlsp" href="Admin_QLSP_Controll"><span class="glyphicon glyphicon-gift" style="margin-right: 5px;"></span>Quản lí sản phẩm</a>
                        <a id="qldh" href="Admin_QLDH_Control"><span class="glyphicon glyphicon-list-alt" style="margin-right: 5px;"></span>Quản lí đơn hàng</a>
                        <a id="qltk" href="Admin_QLKH_Controll"><span class="glyphicon glyphicon-user" style="margin-right: 5px;"></span>Quản lí tài khoản người dùng</a>
                        <a id="report" href="Admin_Report_Controll"><span class="glyphicon glyphicon-stats" style="margin-right: 5px;"></span>Thống kê</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--End nav-->

    <!--Dashboard-->
    <div class="panel panel-default" id="page-wrapper">
            <div class="graphs panel-body">
                <!--DESIGN HERE-->
                <!--Hàng 1, nút truy cập nhanh-->
                <div class="row row-1-quickBT">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 visited">
                        <span class="glyphicon glyphicon-globe fa-2x"></span>
                        <h4><strong>10000</strong></h4>
                        <h6><span>Lượt truy cập</span></h6>
                    </div>
                <%
                	Object giaodichthanhcong = request.getAttribute("Proc_Admin_Tong_Giaodich");
				%>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 buyed">
                        <span class="glyphicon glyphicon-shopping-cart fa-2x"></span>
                        <h4><strong><%=giaodichthanhcong%></strong></h4>
                        <h6><span>Giao dịch thành công</span></h6>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 rate">
                        <span class="glyphicon glyphicon-star fa-2x"></span>
                        <h4><strong>2000</strong></h4>
                        <h6><span>Đánh giá, bình chọn</span></h6>
                    </div>
                <%
                	Object sokh = request.getAttribute("Proc_Admin_Tinhtong_KH");
				%>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 user">
                        <span class="glyphicon glyphicon-user fa-2x"></span>
                        <h4><strong><%=sokh%></strong></h4>
                        <h6><span>Khách hàng đăng ký tài khoản</span></h6>
                    </div>
                </div>
                <!--Hàng 2, Biểu đồ thống kê doanh thu-->
                <div class="row row-2-Chart">
                    <!--Phần biểu đồ-->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bieudo-doanhthu">
                        <script type="text/javascript">
                            google.charts.load('current', {'packages':['line', 'corechart']});
                            google.charts.setOnLoadCallback(drawChart);
                        
                            function drawChart() {

                                var button = document.getElementById('change-chart');
                                var chartDiv = document.getElementById('chart_div');
                        
                                var data = new google.visualization.DataTable();
                                data.addColumn('date', 'Tháng');
                                data.addColumn('number', "Tổng thu nhập");
                                data.addColumn('number', "Tổng lượng sản phẩm bán ra");
                            //Giá trị từng cột
                                data.addRows([
                                    [new Date(2018, 1),  10000,  100],
                                    [new Date(2018, 2),  11000,  102],
                                    [new Date(2018, 3),  21000,  200],
                                    [new Date(2018, 4),  9000,   90],
                                    [new Date(2018, 5),  16000,  160],
                                    [new Date(2018, 6),  18000,  180],
                                    [new Date(2018, 7),  17000,  170],
                                    [new Date(2018, 8),  16500,  165],
                                    [new Date(2018, 9),  14000,  140],
                                    [new Date(2018, 10), 15000,  150],
                                    [new Date(2018, 11), 14500,  145],
                                    [new Date(2018, 12), 15500,  155]
                                ]);
                        
                                var materialOptions = {
                                    chart: {
                                        title: 'Tổng doanh thu và lượng sản phẩm bán ra trong một năm'
                                    },
                                    width: 950,
                                    height: 450,
                                    series: {
                                  // Gives each series an axis name that matches the Y-axis below.
                                    0: {axis: 'Temps'},
                                    1: {axis: 'Daylight'}
                                    },
                                    axes: {
                                  // Adds labels to each axis; they don't have to match the axis names.
                                    y: {
                                        Temps: {label: 'Đồng (VNĐ)'},
                                        Daylight: {label: 'Sản phẩm'}
                                    }
                                    }
                                };
                        
                              /*var classicOptions = {
                                title: 'Average Temperatures and Daylight in Iceland Throughout the Year',
                                width: 900,
                                height: 500,
                                // Gives each series an axis that matches the vAxes number below.
                                series: {
                                  0: {targetAxisIndex: 0},
                                  1: {targetAxisIndex: 1}
                                },
                                vAxes: {
                                  // Adds titles to each axis.
                                  0: {title: 'Temps (Celsius)'},
                                  1: {title: 'Daylight'}
                                },
                                hAxis: {
                                  ticks: [new Date(2014, 0), new Date(2014, 1), new Date(2014, 2), new Date(2014, 3),
                                          new Date(2014, 4),  new Date(2014, 5), new Date(2014, 6), new Date(2014, 7),
                                          new Date(2014, 8), new Date(2014, 9), new Date(2014, 10), new Date(2014, 11)
                                         ]
                                },
                                vAxis: {
                                  viewWindow: {
                                    max: 30
                                  }
                                }
                              };*/

                                function drawMaterialChart() {
                                    var materialChart = new google.charts.Line(chartDiv);
                                    materialChart.draw(data, materialOptions);
                                    button.innerText = 'Change to Classic';
                                    button.onclick = drawClassicChart;
                                }
                        
                                function drawClassicChart() {
                                    var classicChart = new google.visualization.LineChart(chartDiv);
                                    classicChart.draw(data, classicOptions);
                                    button.innerText = 'Change to Material';
                                    button.onclick = drawMaterialChart;
                                }

                                drawMaterialChart();
                            }
                            
                            $(window).resize(function(){
                                drawChart();
                            });
                        </script>
                        <div id="chart_div"></div>
                    </div>
                    <!--end biểu đồ-->
                </div>
                <!--Hàng 3, danh sách về sản phẩm-->
            <% 
            	Object outofstock = request.getAttribute("Funct_Admin_DSSP_OutofStock");
            	SanPham[] sp_outstock = null;
            	if(outofstock != null)
            	{
            		sp_outstock = (SanPham[])outofstock;
            	}
            %>
                <div class="row row-3-table">
                    <div class="col-lg-1 col-md-1 col-sm-1"></div>
                    <!--Sản phẩm sắp hết hàng-->
                    <div class="col-lg-5 col-md-5 col-sm-11 col-xs-12 outstock-table">
                        <a href="Admin_QLSP_Controll"><span style="font-size: 20px; color: black;">Sản phẩm cần nhập thêm số lượng</span></a>
                        
                        <table class="table table-striped scroll" id="san-pham-het-hang">
                            <thead>
                                <tr>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng còn lại</th>
                                </tr>
                            </thead>
                            
            <% 
            	for(int i=0;i<sp_outstock.length;i++)
            	{
            		int MaSP = sp_outstock[i].getMaSP();
            		String TenSP = sp_outstock[i].getTenSp();
            		int Soluongconlai = sp_outstock[i].getSoLuongHienTai();
            
            %>
                            <tbody>
                                <tr>
                                    <td><%=MaSP%></td>
                                    <td><%=TenSP%></td>
                                    <td><%=Soluongconlai%></td>
                                </tr>
                            </tbody>
             <% } %>
                        </table>
                    </div>
                    
                    <div class="col-lg-1 col-md-1"></div>
                    <!--Sản phẩm bán chạy-->
                    
             <%
             	Object res = request.getAttribute("Funct_Admin_DSSP_Hotsale");
             	ResultSet ds_hotsale = null;
             	if(res != null)
             	{
             		ds_hotsale = (ResultSet)res;
             	}
             %>
                    <div class="col-lg-4 col-md-4 col-sm-11 col-xs-12 best-seller">
                        <span style="color:black; font-size:20px;">Sản phẩm bán chạy</span>
                        <table class="table table-striped scroll" id="san-pham-banchay">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Lượt mua</th>
                                </tr>
                            </thead>
             <%
             	while(ds_hotsale.next())
             	{
             		String tensp = ds_hotsale.getString("tensp");
             		int luotmua = ds_hotsale.getInt("luotmua");
             %>
                            <tbody>
                                <tr>
                                    <td><%=tensp%></td>
                                    <td><%=luotmua%></td>
                                </tr>
                            </tbody>
             <% } %>
                        </table>
                    </div>
                    <div class="col-lg-1 col-md-1"></div>
                </div>
                <!--End des-->
            </div>
    </div>
    <!--End Dash-->

</body>
</html>