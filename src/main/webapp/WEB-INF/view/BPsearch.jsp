<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%List<ListVO> ListPro = (List<ListVO>)request.getAttribute("ListPro"); %>
<%@page import="java.util.List"%>
<%@page import="vo.ListVO"%>
<!doctype html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>조회</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/pp/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/pp/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/pp/assets/libs/css/style.css">
    <link rel="stylesheet" href="/pp/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="/pp/assets/vendor/bootstrap-select/css/bootstrap-select.css">
    <link rel="stylesheet" href="/pp/assets/vendor/datepicker/tempusdominus-bootstrap-4.css" />
</head>

<body>
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">조회 </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Bootstrap Select</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- bootstrap select -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card ">
                        <form method="post" action="/pp/OrderList.do">
                            <h5 class="card-header">조회</h5>
                            <div class="card-body">
                                <h5 class="card-title">유형 </h5>
                                <select name="DocStatus" class="selectpicker">
                                	<option value="O">미결</option>           
                                	<option value="C">완료</option>           
                                </select>
                            </div>
                            <div class="card-body border-top">
                               <h5 class="card-title">고객 </h5>
                                <select name="CardCode" class="selectpicker">
                                <%for(int i=0; i<ListPro.size(); i++){		
									%>
									<option value="<%=ListPro.get(i).getCardCode() %>">
										<%=ListPro.get(i).getCardCode() %>
									</option>
								<% }%>
                                </select>
                            </div>
                            <div class="card-body border-top">
		                        <h5 class="card-title">날짜 </h5>
		                        <input type="text" id="startDate" name="startDate" > ~ 
		                        <input type="text" id="endDate" name="endDate"> 
		                    </div>
		                    <input type="submit" value="검색">
		                </form>                            
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- bootstrap select -->
                    <!-- ============================================================== -->
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/pp/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/pp/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/pp/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/pp/assets/libs/js/main-js.js"></script>
    <script src="/pp/assets/vendor/bootstrap-select/js/bootstrap-select.js"></script>
    <script src="/pp/assets/vendor/datepicker/moment.js"></script>
    <script src="/pp/assets/vendor/datepicker/tempusdominus-bootstrap-4.js"></script>
    <script src="/pp/assets/vendor/datepicker/datepicker.js"></script>    
</body>
</html>