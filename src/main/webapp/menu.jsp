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

</head>
<body>
	<% 
		Dbconnect db = new Dbconnect();
		Get_data gdt = new Get_data(); 
		Chucnang cn = new Chucnang();		

		ArrayList<String> list_size = gdt.Get_Size();
		ArrayList<String> list_vanh = gdt.Get_Vanh();
		ArrayList<Hangxe> data_hangxe = db.Data_Hang_Xe_Size_Lop();
		
		ArrayList<String> list_hangxe = new ArrayList<>();
		ArrayList<String> list_tenxe = new ArrayList<>();
		
		for(Hangxe h: db.Data_Hang_Xe_Size_Lop()){
			list_hangxe.add(h.getHang());
			list_tenxe.add(h.getTenxe());
		}
	
		list_hangxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_hangxe));
		list_tenxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_tenxe));
		
		String number = (String) session.getAttribute("number_cart");
		if(number == null){
			number = "0";
		}
	%>	

	<%-- Lấy thông điệp từ request --%>
	<%
	    String thongbao = (String) request.getAttribute("thongbao");
	    if (thongbao != null && !thongbao.isEmpty()) {
	%>
	    <script>
	        // Hiển thị thông điệp kiểu alert
	        alert("<%= thongbao %>");
	    </script>
	<%
	    }
	%>



	<button id="myBtn2" style="background:white;" onclick="chat_facebook()"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Messenger_logo_2018.svg/2048px-Facebook_Messenger_logo_2018.svg.png" title='Chát Messenger' width='40px'/></button>
    <script>
        function chat_facebook() {
		    var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
		    
		    if (isMobile) {
		        // Đường dẫn URL Scheme của Messenger
		        var messengerURL = "fb-messenger://user-thread/846226765756531";
		        // Thay thế {user-id} bằng ID của người dùng bạn muốn mở cuộc trò chuyện
		
		        // Chuyển hướng đến URL Scheme của Messenger
		        window.location.href = messengerURL;
		    } else {
				// nếu trên máy tính thì mở link url
		    	window.open("https://www.facebook.com/messages/t/846226765756531");
    		}            
        }
    </script>
    
	<!--PreLoader-->
	<div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div>
	<!--PreLoader Ends-->
	
	<!-- header -->
	<div style="padding: 0px;" class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="home"> <img src="assets/img/logo.png" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="home">Trang
										chủ</a></li>
								<li><a href="leao-atlas-michelin">Sản phẩm</a>
									<ul class="sub-menu">
										<li><a href="leao-atlas-michelin?page=1&th=leao">Lốp Leao</a></li>
										<li><a href="leao-atlas-michelin?page=1&th=atlas">Lốp Atlas</a></li>
										<li><a href="leao-atlas-michelin?page=1&th=michelin">Lốp Michelin</a></li>
									</ul></li>
								<li><a href="">Kiến thức lốp</a>
									<ul class="sub-menu">
										<li><a href="chat-luong-lop-leao">Chất lượng lốp Leao</a></li>
										<li><a href="">Chất lượng lốp Atlas</a></li>
									</ul></li>
								<li><a href="baohanh">Bảo hành</a></li>
								<li><a href="lienhe">Liên hệ</a></li>
								<li><a href="vechungtoi">Về chúng tôi</a></li>
								<li>
									<div class="header-icons">
										<a class="shopping-cart" href="Click_Button_Cart?jsp=index"><i
											class="fas fa-shopping-cart"></i>()</a> <a
											class="mobile-hide search-bar-icon" href="#"><i
											class="fas fa-search"></i></a>
									</div>
								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" >
							<i class="fas fa-search"></i></a>
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Size lốp:</h3>
							<input id="text_timkiem" type="text" placeholder="VD: 215/60R16">
							<button onclick="click_timkiem()" type="submit">
								Tìm kiếm <i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search area -->

	<script type="text/javascript">
		function click_timkiem() {
		  var input = document.getElementById("text_timkiem");
		  var text_search = input.value;	
		  var url = "leao-atlas-michelin-loc-theo-size?sizelop=" + text_search;
	      window.location.href = url;
		}
	</script>

	<!-- home page slider -->
	<div class="homepage-slider">
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-1">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">CÔNG TY LỐP LEAO - ATLAS VIỆT NAM.</p>
								<h5 style="color: white;">CHUYÊN NHẬP KHẨU VÀ PHÂN PHỐI LỐP Ô TÔ - MADE IN THAILAND</h5>
								<div class="hero-btns">
									<a href="leao-atlas-michelin" class="boxed-btn">Xem ngay</a> <a
										href="lienhe" class="bordered-btn">Liên hệ</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-center">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Liên hệ</p>
								<h5 style="color: white;">HOTLINE: 0989131322 - MS.LAN: 0982909289 - MS.LIỄU: 0942999832</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="single-homepage-slider homepage-bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-center">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Leao Tire</p>
								<h3>100% KHÁCH HÀNG HÀI LÒNG</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single home slider -->
		<div class="single-homepage-slider homepage-bg-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1 text-right">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Atlas Tire</p>
								<h3>ĐỘ ỒN THẤP, ÊM ÁI & BỀN BỈ TRÊN MỌI CUNG ĐƯỜNG</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end home page slider -->

	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-shipping-fast"></i>
						</div>
						<div class="content">
							<h3>Miễn phí Shipping</h3>
							<p>Với tất cả đơn hàng</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-phone-volume"></i>
						</div>
						<div class="content">
							<h3>Hỗ trợ 24/7</h3>
							<p>Tất cả các ngày trong tuần</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div
						class="list-box d-flex justify-content-start align-items-center">
						<div class="list-icon">
							<i class="fas fa-sync"></i>
						</div>
						<div class="content">
							<h3>Kiểm hàng</h3>
							<p>Được kiểm tra hàng trước khi nhận</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end features list section -->

</body>
</html>