<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>제품상세페이지</title>

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

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                    <div class="mail-service">
                        <i class=" fa fa-envelope"></i>
                        관리자 이메일
                    </div>
                    <div class="phone-service">
                        <i class=" fa fa-phone"></i>
                        관리자 번호
                    </div>
                </div>
                <div class="ht-right">
                    <a href="#" class="login-panel"><i class="fa fa-user"></i>Login</a>
                    <div class="lan-selector">
                        <select class="language_drop" name="countries" id="countries" style="width:300px;">
                            <option value='yt' data-image="img/flag-1.jpg" data-imagecss="flag yt" data-title="English">
                            </option>
                            English</option>
                            <option value='yu' data-image="img/flag-2.jpg" data-imagecss="flag yu"
                                data-title="Bangladesh">German </option>
                        </select>
                    </div>
                    <div class="top-social">
                        <a href="#"><i class="ti-facebook"></i></a>
                        <a href="#"><i class="ti-twitter-alt"></i></a>
                        <a href="#"><i class="ti-linkedin"></i></a>
                        <a href="#"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <form action="#" class="input-group">
                                <input type="text" placeholder="What do you need?">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">
                            <li class="heart-icon"><a href="#">
                                    <i class="icon_heart_alt"></i>
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="cart-icon"><a href="#">
                                    <i class="icon_bag_alt"></i>
                                    <span>3</span>
                                </a>
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="si-pic"><img src="img/select-product-1.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="si-pic"><img src="img/select-product-2.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>total:</span>
                                        <h5>$120.00</h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="#" class="primary-btn view-card">VIEW CARD</a>
                                        <a href="#" class="primary-btn checkout-btn">CHECK OUT</a>
                                    </div>
                                </div>
                            </li>
                            <li class="cart-price">이건뭐임?</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
       <form action=""> 
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>All departments</span>
                        <ul class="depart-hover">
                            <li class="active"><a href="#">Women’s Clothing</a></li>
                            <li><a href="#">Men’s Clothing</a></li>
                            <li><a href="#">Underwear</a></li>
                            <li><a href="#">Kid's Clothing</a></li>
                            <li><a href="#">Brand Fashion</a></li>
                            <li><a href="#">Accessories/Shoes</a></li>
                            <li><a href="#">Luxury Brands</a></li>
                            <li><a href="#">Brand Outdoor Apparel</a></li>
                        </ul>
                    </div>
                </div>
               </form> 
              <form action="">
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
               </form>
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
                        <a href="./shop.html">Shop</a>
                        <span>Detail</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- 카테고리 작성-->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="filter-widget">
                        <h4 class="fw-title">카테고리</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">외출용품</a></li>
                            <li><a href="#">목욕용품</a></li>
                            <li><a href="#">유아용품</a></li>
                            <li><a href="#">장난감2</a></li>
                            <li><a href="#">장난감3</a></li>
                            <li><a href="#">장난감4</a></li>
                            <li><a href="#">장난감5</a></li>
                            <li><a href="#">장난감6</a></li>
                        </ul>
                    </div>

                    <!--태그 작성하는 곳-->
                    <div class="filter-widget">
                        <h4 class="fw-title">태그</h4>
                        <div class="fw-tags">
                            <a href="#">저장된태그</a>
                            <a href="#">저장된태그</a>
                            <a href="#">저장된태그</a>
                            <a href="#">저장된태그</a>
                            <a href="#">저장된태그</a>
                            <a href="#">저장된태그</a>
                        </div>
                    </div>
                </div>
              
             <form action="/board" method="post">
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                <!--제품 사진 등록하는 곳-->
                                <img class="product-big-img"
                                    src="${imgurl}"
                                    alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <div class="product-thumbs">
                                <div class="producw제품설명t-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="img/product-single/product-1.jpg"><img
                                            src="https://momplace.co.kr/wp-content/uploads/2021/06/%EC%A0%96%EB%B3%91_%EB%8D%94%EB%B8%94%ED%95%98%ED%8A%B8.webp"
                                            alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-2.jpg"><img
                                            src="img/product-single/product-2.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-3.jpg"><img
                                            src="img/product-single/product-3.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="img/product-single/product-3.jpg"><img
                                            src="img/product-single/product-3.jpg" alt=""></div>
                                </div>
                            </div>
                        </div>
                      
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <h4>${title }</h4>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <p>판매자 : ${sellid}</p>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    <p>${title }</p>
                                    <h4>${price}</h4>
                                </div>
							

                                <div class="quantity">
                                    <a href="#" class="primary-btn pd-cart">판매자 쪽지 보내기</a> <br>
                                </div>
                                <div>
                                    <a href="#" class="primary-btn pd-cart">구매하기</a>
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
               </form>
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
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <h5>상세정보</h5>
                                                <p>젖병 팝니다 새상품입니다
                                                    <br>
                                                    네고 가능하니 연락주세요 ~
                                                    <br>
                                                    가격은 45만원입니다.
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="specification-table">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="customer-review-option">
                                        <h4>리뷰</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">

                                                    <h5>Brandon Kelley <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="img/product-single/avatar-2.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Roy Banks <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>관련커뮤니티</h2>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="product-item">
                                    <div class="pi-text">
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                        <li><a href="#">게시글1 dddddddddddddddddd</a></li>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <!-- Related Products Section End -->

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