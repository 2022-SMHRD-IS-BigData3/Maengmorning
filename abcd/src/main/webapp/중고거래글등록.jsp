<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>중고거래글등록</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

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

<style>
    div .leave-comment {
        margin-top: 100px;
        margin-bottom: 100px;
    }

    div .category-option {
        margin-bottom: 30px;
        margin-left: 15px;
    
    }

    div .logo {
        height: 100px;
        width: 100px;
        margin-bottom: 25px;
    }

    div .sorting {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div .option {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div #area, .area {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div #price, .price {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }
    
    
     div>li1{
     background-color :orange;
     }
</style>

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
                                <li><a href="#"> 장난감/도서</a></li>
                                <li><a href="#">의류</a></li>
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
                                <li><a href="#">판매/구매목록</a></li>
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

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">중고거래</a>
                        <span>물품등록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="col-lg-12" align="center">
        <div class="col-lg-6">
            <div class="contact-form">
                <div class="leave-comment">
                    <h4>물품등록</h4>
                    <div class="logo">
                        <a class="picture" href="#">
                            <img src="img/free-icon-camera-685655.png" alt="">
                        </a>
                    </div>
                    <form action="#" class="comment-form">
                        <div class="row">
                            <div class="col-lg-12">
                                <input type="text" placeholder="글 제목">
                            </div>
                                <div class="category-option">
                                    <select class="sorting">
                                        <option value="">외출용품</option>
                                        <option value="">장난감/도서</option>
                                        <option value="">의류</option>
                                        <option value="">가구</option>
                                        <option value="">침구류</option>
                                        <option value="">생활용품</option>
                                        <option value="">기타</option>
                                    </select>
                                </div>
                                <div class="area">
                                    <input id="area" type="text" placeholder="거래지역">
                                </div>
                                <div class="price">
                                    <input id="price" type="text" placeholder="가격 작성">
                                </div>

                            <div class="col-lg-12">
                                <textarea placeholder="글 내용"></textarea>
                            <div class="col-lg-12">
                               <input type="text" placeholder="태그 작성">
                            </div>
                                <button type="submit" class="site-btn">등록</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>





















    <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->

    <!-- Footer Section Begin -->
    <!-- 아래까만거 -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#" ><img src="img/로고.png" alt=""></a>
                        	<li1>Email: mag@gmail.com</li1>
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