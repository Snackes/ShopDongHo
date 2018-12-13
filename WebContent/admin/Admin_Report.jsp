<%@page import="java.sql.ResultSet"%>
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
    <link rel="stylesheet" href="lib/Css_admin/Admin_Report.css">
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
                <img src="lib/images/pic1.png" class="img-circle" alt="Cinque Terre" width="35" height="35">
                <li class="dropdown">
                    <a id="admin_name" href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="font-size: 15px; color:#fff;">Admin_Name</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="TrangChu">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
        <div class="navbar-default sidebar" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <p style="margin-top:20px"></p>
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
    <!--menu-->
    <!--end menu-->
    <div class="panel panel-default" id="page-wrapper">
        <div class="panel-heading" style="text-align: left; font-size: 24px;"><span>Thống kê</span></div>
        <div class="graphs panel-body">
            <!--DESIGN HERE-->
            <!--biểu đồ doanh thu/vốn-->
            <div class="row row-1-doanhthu">
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                    <script type="text/javascript">
                        google.charts.load('current', {'packages':['bar']});
                        google.charts.setOnLoadCallback(drawChart);

                        function drawChart() {
                            var data = google.visualization.arrayToDataTable([
                                ['Năm', 'Tổng thu nhập', 'Giá vốn'],
                                ['2014', 1000, 400],
                                ['2015', 1170, 460],
                                ['2016', 660, 1120],
                                ['2017', 1030, 540]
                            ]);

                            var options = {
                                chart: {
                                    title: 'Biểu đồ tổng chu chi',
                                    subtitle: 'Tổng thu nhập, Giá vốn: 2014-2017',
                                },
                                bars: 'horizontal', // Required for Material Bar Charts.
                                hAxis: {format: 'decimal'},
                                height: 300,
                                colors: ['#1b9e77', '#d95f02', '#7570b3']
                            };

                            var chart = new google.charts.Bar(document.getElementById('chart_div'));
                            chart.draw(data, google.charts.Bar.convertOptions(options));

                        }
                    </script>
                    <div id="chart_div"></div>
                </div>
            </div>
            <!--biểu đồ lượng sản phẩm bán ra-->
            <div class="row row-2-spBan">
                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                    <script type="text/javascript">
                        google.charts.load('current', {packages: ['corechart', 'line']});
                        google.charts.setOnLoadCallback(drawBasic);

                        function drawBasic() {

                            var data = new google.visualization.DataTable();
                            data.addColumn('number', 'X');
                            data.addColumn('number', 'Sản phẩm bán ra');
                            var data = google.visualization.arrayToDataTable([
                                ['Tháng', 'Sản phẩm bán ra'],
                                ['01',50],
                                ['02',80],
                                ['03',60],
                                ['04',90],
                                ['05',75],
                                ['06',100],
                                ['07',110],
                                ['08',95],
                                ['09',75],
                                ['10',80],
                                ['11',105],
                                ['12',100],
                            ]);

                            var options = {
                                title: 'Lượng sản phẩm bán ra trong một năm',
                                hAxis: {
                                    title: 'Tháng'
                                },
                                vAxis: {
                                    title: 'Số lượng (chiếc)'
                                }
                            };
                            var chart = new google.visualization.LineChart(document.getElementById('chart_div-2'));
                            chart.draw(data, options);
                        }
                    </script>
                    <div id="chart_div-2"></div>
                </div>
            </div>
            <!--bảng thống kê-->
            <div class="row row-3-bang-tk">
                <div class="col-lg-1 col-md-1"></div>
                <!--khách hàng tiềm năng-->
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                    <strong><span>Khách hàng tiềm năng</span></strong>
                    <table class="table table-bordered scroll">
                        <thead>
                            <tr>
                                <th>Tên khách hàng</th>
                                <th>Số lần mua</th>
                                <th>Tổng giá trị đơn hàng</th>
                            </tr>
                        </thead>
           	<%
           		Object kh = request.getAttribute("Funct_Admin_KHTN");
           		ResultSet khtn = null;
           		if(kh != null)
           		{
           			khtn = (ResultSet)kh;
           			while(khtn.next())
           			{
           				String tenkh = khtn.getString("tenkh");
           				int soluotmua = khtn.getInt("solanmua");
           				float tongtien = khtn.getFloat("tonggiatien");
           	%>
                        <tbody>
                            <tr>
                                <td><%=tenkh%></td>
                                <td><%=soluotmua%></td>
                                <td><%=String.format("%,.0f", tongtien)%></td>
                            </tr>
                        </tbody>
             <%	}	} %>
                    </table>
                </div>
                <div class="col-lg-1 col-md-1"></div>
                <!--sản phẩm bán chạy-->
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <strong><span>Sản phẩm bán chạy nhất</span></strong>
                    <table class="table table-bordered scroll">
                        <thead>
                            <tr>
                                <th>Tên sản phẩm</th>
                                <th>Số lượt mua</th>
                            </tr>
                        </thead>
                        
             <%
             	Object hs = request.getAttribute("Funct_Admin_DSSP_Hotsale");
             	ResultSet hotsale = null;
             	if(hs != null)
             	{
             		hotsale = (ResultSet)hs;
             		while(hotsale.next())
             		{
             			String tensp = hotsale.getString("tensp");
                 		int luotmua = hotsale.getInt("luotmua");
             			
             %>
                        <tbody>
                            <tr>
                                <td><%=tensp%></td>
                                <td><%=luotmua%></td>
                            </tr>
                        </tbody>
             <%		}	} %>
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