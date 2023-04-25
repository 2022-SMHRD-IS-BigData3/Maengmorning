<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<style>
	
  
    .single-banner
    {
    width:
    560.98px;
    height:
    320.55px;
    overflow:
    hidden;
    }
    .single-banner
    {
    width:
    570.00px;
    height:
    330.55px;
    overflow:
    hidden;
    }
    div>li1 {
    background-color
    :orange;
    }
	div >.container {
	margin-left: 520px;
	}



.nav-item > a{
  padding-left: 0;
}

.nav-item > a {
  margin-left: 0;
}


<!-- 버튼 -->
.col-lg-12{
margin-top: 10px;
margin-left: 1600px;
}

.logo {
width: 300px;

}

div>.container{
margin-left: 600px;
}

.nav-item>a{
margin-right: 1600px;

}



</style>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>메인</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
            rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">

        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">

                        <a href="./메인.jsp">
                            <img src="./img/로고.png" alt="">
                        </a>

                        <a href="./index.html">
                            <img src="./메인사진파일/로고.png" alt="">
                        </a>


                    </div>


                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <div class="input-group">
                                <input type="text" placeholder="검색">
                                <button type="button"><i class="ti-search"></i></button>
                            </div>
                        </div>
                    </div>



                    <div class="col-lg-3 text-right col-md-3">

                        <ul class="nav-right">
                            <li class="heart-icon">
                                <a href="로그인.jsp">
                                    <i class="icon_MSY_alt">로그인</i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">

                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>


                        <li><a href="#">중고거래</a> 
                            <ul class="dropdown">
                                <li><a href="#">외출용품</a></li>
                                <li><a href="https://www.toyplus.co.kr/goods/goods_list.php?cateCd=001001"> 장난감/도서</a>
                                </li>
                                <li><a href="https://wiisnt.co.kr/product/list.html?cate_no=114">의류</a></li>
                                <li><a href="#">가구</a></li>
                                <li><a href="#">침구류</a></li>
                                <li><a href="#"> 생활용품</a></li>
                                <li><a href="#">기타</a></li>
                            </ul>
                        </li>

                        <li><a href="#">커뮤니티</a>
                            <ul class="dropdown">
                                <li><a href="#">잡담</a></li>
                                <li><a href="#">그외</a></li>
                                <li><a href="#">등등</a></li>
                            </ul>
                        </li>

                        <li><a href="#">마이페이지</a>
                            <ul class="dropdown">
                                <li><a href="./장바구니.jsp">판매/구매목록</a></li>
                                <li><a href="#">매너온도</a></li>
                                <li><a href="#">개인정보 수정</a></li>
                                <li><a href="#">좋아요 목록</a></li>
                            </ul>
                        </li>

                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    
    

    <!-- Header End -->
    
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="img/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>작은글씨</span>
                            <h1>큰글씨</h1>
                            <p>간단한설명</p>
                            <a href="#" class="primary-btn">바로가기버튼</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
            <!-- 2번째사진 -->
            <div class="single-hero-items set-bg" data-setbg="img/hero-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>작은글씨</span>
                            <h1>큰글씨</h1>
                            <p>간단한설명</p>
                            <a href="#" class="primary-btn">바로가기버튼</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 중고거래 -->
    <div class="banner-section spad">
        <div class="container-fluid">
            
          <div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">중고거래</a></li>
                    </ul>
                </nav>
            </div>
        </div>
            
            


            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="banner-section spad">
        <div class="container-fluid">
		
		<div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">더보기</a></li>
                    </ul>
                </nav>
            </div>
        </div></div></div>
    
    

    

    <!-- 커뮤니티 -->

    <div class="banner-section spad">
        <div class="container-fluid">
		
		<div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">커뮤니티</a></li>
                    </ul>
                </nav>
            </div>
        </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="./img/강아지.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="banner-section spad">
        <div class="container-fluid">
		
		<div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">더보기</a></li>
                    </ul>
                </nav>
            </div>
        </div></div></div>
    

    <!-- Man Banner Section End -->


     <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Checkout</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Serivius</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Shopping Cart</a></li>
                            <li><a href="#">Shop</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Join Our Newsletter Now</h5>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>