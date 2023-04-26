<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>마이페이지</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
            rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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


	.table {
  margin-top: -45px;
}
    #registration {
        display: inline-block;
        font-size: 16px;
        color: #636363;
        padding: 5px 15px;
        border: 1px solid #ebebeb;
        margin-right: 5px;
        margin-bottom: 9px;
        border-radius: 2px;
    }

    .single-banner {
        width: 570.98px;
        height: 330.55px;
        overflow: hidden;
    }

    .single-banner {
        width: 570.00px;
        height: 330.55px;
        overflow: hidden;
    }

    .col-lg-12 {
        margin-top: 10px;
        margin-left: 1700px;
    }

    .logo {
        width: 300px;

    }

    /* 스타일링 */
    .post-info {
        border-bottom: 1px solid #ccc;
        margin-bottom: 20px;
        padding-bottom: 20px;
    }

    .post-info h1 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .post-info p {
        font-size: 14px;
        color: #777;
        margin: 0;
    }

    .post-content {
        font-size: 16px;
        line-height: 1.5;
    }

    .content_img {
        margin-bottom: 20px;
    }

    div .comment input {
        width: 500px;
    }

    table {

        border-collapse: collapse;
        width: 100%;
    }

    a.nickname {
        font-weight: 700;
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

                        <a href="./index.html">
                            <img src="./img/로고.png" alt="">
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
                <div class="col-lg-10">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- 카테고리/ 태그 -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    
                    <div class="filter-widget">
                    <h4 class="fw-title">카테고리</h4>
                    <ul class="filter-catagories">
                        <li><a href="#">개인정보수정</a></li>
                        <li><a href="#">판매/구매목록</a></li>
                        <li><a href="#">찜목록</a></li>
                        <li><a href="#">매너온도</a></li>
                    </ul>
                </div>

                </div>
                
                <div class="col-lg-8 order-1 order-lg-2">
               
                    <div class="product-show-option">
                        <div class="row">
                            
                        </div>
                    </div>

                    <!-- 게시판 글 -->
                   
                   <nav id="Productdetail.do">
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                           <!--제품 사진 등록하는 곳
                           detail에서 가져온 데이터 등록 (list에서 가져오면 안됨. 덩어리가 안나옴.(아마도 계속안나온 이유가 이거인듯?))-->
                                <img class="product-big-img"
                                    src="${detail.imgurl}"
                                    alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <div class="product-thumbs">
                                <div class="producw제품설명t-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="img/product-single/product-1.jpg"><img
                                            src="${detail.imgurl}"
                                            alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-2.jpg"><img
                                            src="${detail.imgurl}" alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-3.jpg"><img
                                            src="${detail.imgurl}" alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-3.jpg"><img
                                            src="${detail.imgurl}" alt=""></div>
                                </div>
                            </div>
                        </div>
                      
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <h4>${detail.title}</h4>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <p>판매자 : ${detail.sellerid}</p>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p>${detail.title}</p>
                                    <h4>${detail.price}</h4>
                                </div>
							

                                <div class="quantity">
                                    <a href="#" class="primary-btn pd-cart">판매자 쪽지 보내기</a> <br>
                                </div>
                                <div>
                                    <a href="결제페이지.jsp" class="primary-btn pd-cart">구매하기</a>
                                </div>
                                <ul class="pd-tags">
                                    <li><span>카테고리</span>: 유아용품</li>
                                    <div>
                                        <ul>
                                            <li><span>태그</span> <a href="#">#젖병</a> <a href="#">#새제품</a> <a
                                                    href="#">#사주세요</a></li>
                                        </ul>
                                    </div>
                                </ul>
                                <div class="pd-share">
                                    <div class="p-code"></div>

                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
               </nav>
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">상세페이지</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">고객리뷰</a>
                                </li>
                            </ul>
                        </div>
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   </div>
                   </div>
                   </div>
                   </div>
                   
                   
                   
                   
                   
                   
                   
                   
                    
                    
                    
                    
                    
                    
                    
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/로고.png" alt=""></a>
                            <li>Email: hello.colorlib@gmail.com</li>
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