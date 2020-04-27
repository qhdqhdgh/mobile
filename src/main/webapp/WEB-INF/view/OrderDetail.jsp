<%@page import="vo.OrderVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%OrderVO OrderDetail = (OrderVO)request.getAttribute("OrderDetail"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>상세조회</title>
<link rel="stylesheet" href="/pp/assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="/pp/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
<link rel="stylesheet" href="/pp/assets/libs/css/style.css">
<link rel="stylesheet" href="/pp/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
</head>
<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.do"><img class="logo-img" src="/pp/assets/images/logo6.png" alt="logo" width="160px"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/settings-icon.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">${LoginUser.MBUSER}</h5>
                                </div>
                                <a class="dropdown-item" href="logout.do"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="index.do" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>Dashboard <span class="badge badge-success">6</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-fw fa-table"></i>조회</a>
                                <div id="submenu-5" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="BPsearch.do">판매 주문확인</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">OrderDetail </h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">E-coommerce</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">E-Commerce Product Invoice</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <div class="card-header p-4">
                                	<div class="float-left"> 
	                                    <h3 class="mb-0">문서번호</h3>
	                                   	 <%=OrderDetail.getDocNum() %>
                                   	 </div>
                                    <div class="float-right"> 
	                                    <h3 class="mb-0">라인번호 #<%=OrderDetail.getVisOrder() %></h3>
	                                   	 전기일: <%=OrderDetail.getDocDate() %>
                                   	 </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-4">
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">품목번호</h3>                                            
                                            <div><%=OrderDetail.getItemCode() %></div> 
                                        </div>
                                        <br><br><br><br>
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">품목명</h3>                                            
                                            <div><%=OrderDetail.getItemName() %></div> 
                                        </div>
                                        <br><br><br><br>
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">창고코드</h3>                                            
                                            <div><%=OrderDetail.getWhsCode() %></div> 
                                        </div>
                                        <br><br><br><br>
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">창고명</h3>                                            
                                            <div><%=OrderDetail.getWhsName() %></div> 
                                        </div>
                                        <br><br><br><br>
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">수량</h3>                                            
                                            <div><%=OrderDetail.getQuantity() %></div> 
                                        </div>
                                        <br><br><br><br>
                                        <div class="col-sm-6">
                                            <h3 class="text-dark mb-1">현재고</h3>                                            
                                            <div><%=String.format("%,d", OrderDetail.getOnHand()) %></div> 
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-lg-4 col-sm-5">
                                        </div>
                                        <div class="col-lg-4 col-sm-5 ml-auto">
                                            <table class="table table-clear">
                                                <tbody>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">단가</strong>
                                                        </td>
                                                        <td class="right"><%=String.format("%,d", OrderDetail.getPrice()) %></td><td>&#8361;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">공급가액</strong>
                                                        </td>
                                                        <td class="right"><%=String.format("%,d", OrderDetail.getLineTotal()) %></td><td>&#8361;</td>
                                                    </tr>                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white">
                                    <p class="mb-0">2983 Glenview Drive Corpus Christi, TX 78476</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <div class="footer">
		           <div class="container-fluid">
		                <div class="row">
		                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
		                         Copyright © 2020 BSGOne All rights reserved. By <a href="#">BSG</a>.
		                    </div>
		                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
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
            <!-- end wrapper  -->
            <!-- ============================================================== -->
        </div>
    </div>
        <!-- ============================================================== -->
        <!-- end main wrapper  -->
        <!-- ============================================================== -->
        <!-- Optional JavaScript -->
        <!-- jquery 3.3.1 -->
        <script src="/pp/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <!-- bootstap bundle js -->
        <script src="/pp/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
        <!-- slimscroll js -->
        <script src="/pp/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
        <!-- main js -->
        <script src="/pp/assets/libs/js/main-js.js"></script>
</body>
</html>