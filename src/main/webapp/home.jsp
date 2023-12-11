<%@page import="model.Hangxe"%>
<%@page import="controller.Chucnang"%>
<%@page import="model.Lopxe"%>
<%@page import="dao.Get_data"%>
<%@page import="conect_data.Dbconnect"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description"
		content="Công ty Lốp LEAO - ATLAS Việt Nam | Lốp ô tô LEAO ATLAS Thailand nhập khẩu | Vỏ xe hơi LEAO ATLAS | chuyên nhập khẩu và phân phối lốp ô tô made in ThaiLand">
	
	<!-- title -->
	<title>Lốp ô tô LEAO ATLAS Thailand nhập khẩu | Vỏ xe hơi LEAO ATLAS</title>
	
	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link
		href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
		rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
	
	<link rel="stylesheet" href="assets/css/btnface.css">
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<jsp:include page="loc-lop.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>
</body>
</html>