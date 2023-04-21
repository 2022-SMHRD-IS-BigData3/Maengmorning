<!DOCTYPE html>
<html lang="zxx">

<style>
<<<<<<< HEAD
    <!-- 사진 
    -->
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



<!-- 버튼 -->
.col-lg-12{
margin-top: 10px;
margin-left: 1600px;
}

.logo {
width: 300px;

}



</style>
=======
	<!-- 사진 -->
    .single-banner {
         width: 560.98px;
         height: 320.55px;
         overflow: hidden;
     }
     .single-banner {
         width: 570.00px;
         height: 330.55px;
         overflow: hidden;
     }
   
     div>li1{
     background-color :orange;
     }
     
     <!-- 버튼 -->
     .col-lg-12{
         margin-top: 10px;
         margin-left: 1600px;
     }
 
     .logo {
         width: 300px;
         
     }
     
   
 
 </style>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/Maengmorning.git

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
                                <a href="#">
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
    
    

    <!-- Hero Section Begin -->
    <!-- 1번째사진 -->
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


    <!-- 아래까만거 -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/로고.png" alt=""></a>
                            <li1>Email: hello.colorlib@gmail.com</li1>
                        </div>


                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>팀장</h5>
                        <ul>
                            <li><a href="#">팀원</a></li>
                            <li><a href="#">팀원</a></li>
                            <li><a href="#">팀원</a></li>
                            <li><a href="#">팀원</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>정민규</h5>
                        <ul>
                            <li><a href="#">류이수</a></li>
                            <li><a href="#">이상원</a></li>
                            <li><a href="#">이도연</a></li>
                            <li><a href="#">맹성영</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>야 뭐먹을거냐고</h5>
                        <p>진정해,,</p>
                        <p>...</p>
                        <p>알아서해</p>
                        <p>아니 뭐 왜</p>

                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">

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