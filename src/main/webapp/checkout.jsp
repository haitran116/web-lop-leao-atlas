<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" 	content="Công ty Lốp LEAO - ATLAS Việt Nam | chuyên nhập khẩu và phân phối lốp ô tô made in ThaiLand">


	<!-- title -->
	<title>Lốp Leao Atlas Thailand nhập khẩu</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
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
	
	<button id="myBtn2" style="background:white;" onclick="chat_facebook()"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Messenger_logo_2018.svg/2048px-Facebook_Messenger_logo_2018.svg.png" title='Chát Messenger' width='40px'/></button>
    <script>
        function chat_facebook() {
            window.open("https://www.facebook.com/messages/t/846226765756531"); // Thay đổi đường dẫn tới trang bạn muốn mở
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
							<a href="index.jsp"> <img src="assets/img/logo.png" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="index.jsp">Trang
										chủ</a></li>
								<li><a href="Phantrang_servlet?page=1">Sản phẩm</a>
									<ul class="sub-menu">
										<li><a href="Phantrang_servlet?page=1&th=leao">Lốp Leao</a></li>
										<li><a href="Phantrang_servlet?page=1&th=atlas">Lốp Atlas</a></li>
										<li><a href="Phantrang_servlet?page=1&th=michelin">Lốp Michelin</a></li>
									</ul></li>
								<li><a href="#">Dịch vụ</a>
									<ul class="sub-menu">
										<li><a href="#">Thay lốp</a></li>
										<li><a href="#">Vá lốp</a></li>
										<li><a href="#">Cân bằng động</a></li>
									</ul></li>
								<li><a href="">Tin tức</a>
									<ul class="sub-menu">
										<li><a href="">Tin về lốp</a></li>
										<li><a href="">Kiến thức lốp</a></li>
									</ul></li>
								<li><a href="#">Bảo hành</a></li>
								<li><a href="contact.jsp">Liên hệ</a></li>
								<li><a href="about.jsp">Về chúng tôi</a></li>
								<li>
									<div class="header-icons">
										<a class="shopping-cart" href=""><i
											class="fas fa-shopping-cart"></i></a> <a
											class="mobile-hide search-bar-icon" href="#"><i
											class="fas fa-search"></i></a>
									</div>
								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" ><i
							class="fas fa-search"></i></a>
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
		  var url = "Loc_theo_size?sizelop=" + text_search;
	      window.location.href = url;
		}
	</script>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>LEAO - ATLAS</p>
						<h1>Đặt hàng thành công</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->

	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">Về chúng tôi</h2>
						<p>Công ty TNHH GBM Việt Nam. CHUYÊN NHẬP KHẨU VÀ PHÂN PHỐI
							LỐP Ô TÔ LEAO - THÁI LAN</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">Địa chỉ</h2>
						<ul>
							<li>Công ty TNHH TM và DV GBM Việt Nam</li>
							<li>Địa chỉ: Số 24 Khu Đấu Giá X3, Phường Cự Khối, Long
								Biên, Hà nội.</li>
							<li>Điện thoại: 02422119115</li>
							<li>Hotline: 0989131322</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Trang</h2>
						<ul>
							<li><a href="#">Trang chủ</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Shop</a></li>
							<li><a href="#">News</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box subscribe">
						<h2 class="widget-title">Subscribe</h2>
						<p>Subscribe to our mailing list to get the latest updates.</p>
						<form action="index.html">
							<input type="email" placeholder="Email">
							<button type="submit">
								<i class="fas fa-paper-plane"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->

	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>
						Copyrights &copy; 2023 - <a href="#">GBM</a>, All Rights Reserved.
					</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i
									class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	
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