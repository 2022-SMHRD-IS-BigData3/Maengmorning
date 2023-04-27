<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
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

    #Product_Style {
        margin-top: 50px;
        margin-bottom: 100px;
        width: 900px;
    }

    div.logo {
        height: 100px;
        width: 100px;
    }
    
    .Product_Style_td {
        margin-right: 20px;
    
    }

    .ProductTitle, div.nice-select.sorting, .ProductArea, .ProductPrice, .ProductTag {
        width: 675px;
    }

    .ProductText {
        width: 675px;
        height: 400px;
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

                        <a href="./Gomain.do">
                            <img src="./img/로고.png" alt="">
                        </a>

                            <a href="./Gomain.do">
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
                                <a href="./Gologin.do">
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
                       
                       
                        <li><a href="./Goproductlist.do">중고거래</a>
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
                        
                        <li><a href="./Goboardlist.do">커뮤니티</a>
                            <ul class="dropdown">
                                <li><a href="#">잡담</a></li>
                                <li><a href="#">그외</a></li>
                                <li><a href="#">등등</a></li>
                            </ul>
                        </li>

                        <li><a href="./Gomypage.do">마이페이지</a>
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
                        <a href="./Gomain.do"><i class="fa fa-home"></i> Home</a>
                        <a href="./Goproductlist.do">중고거래</a>
                        <span>물품등록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

      <form action="./GoProductinput.do" method="post" enctype="multipart/form-data" class="comment-form">
    <table id="Product_Style" align="center">
        <tr class="border-bottom">
          <th colspan="2" >
            <h4>물품등록</h4>
          </th>
        </tr>

        <tr class="border-bottom">
          <td class="Product_Style_td">상품이미지</td>
          <td>
            <div class="logo">
                <img src="img/free-icon-camera-685655.png" alt="">
              <!--   <input name="imgurl" type="file" class="form-control" id="imgurl">-->
            </div>
            <div class="input-group mb-3">
               <input name="file_name" type="file" class="form-co/ntrol" id="file_name"> 
               
              </div>
          </td>
        </tr>
   

        <tr class="border-bottom">
          <td>글 제목</td>
          <td>
            <div>
                <input id="title" name="title" type="text" placeholder="글 제목">
                
            </div>
          </td>
        </tr>

        <tr class="border-bottom">
          <td>카테고리</td>
          <td>
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
          </td>
        </tr>

        <tr class="border-bottom">
            <td>거래지역</td>
            <td>
                <div class="area">
                    <input id="area" name="area" type="text" placeholder="거래지역">
                </div> 
            </td>
          </tr>

        <tr class="border-bottom">
            <td>상품가격</td>
            <td>
                <div class="price">
                   <input id="price" name="price" type="text" placeholder="가격 작성">
                </div>
            </td>
          </tr>

        <tr class="border-bottom">
            <td>상품설명</td>
            <td>
                <div>
                    <textarea id="items_state" name="items_state" class="ProductText" placeholder="여러 장의 상품 사진과 구입연도, 브랜드, 사용감, 하자유무 등 구매자에게 꼭 필요한 정보를 포함해주세요. (10자 이상)"></textarea>  
                </div>
            </td>
          </tr>

        <tr class="border-bottom">
            <td>상품태그</td>
            <td>
                <div>
                    <input class="tag_id" type="text" placeholder="연관태그를 꼭 입력해 주세요. (최대 5개)">
                 </div>
            </td>
          </tr>
        
        <tr class="border-bottom" align="center">
            <td colspan="2">
               <input type="submit" class="btn btn-primary btn-sm px-3 gap-3" value="등록">
            </td>
        </tr>
        

      </table>
	</form>



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
                            Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script> All rights reserved |
                            This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                href="https://colorlib.com" target="_blank">Colorlib</a>
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