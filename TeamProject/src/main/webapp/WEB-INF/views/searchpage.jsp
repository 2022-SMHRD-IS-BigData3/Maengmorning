<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="kr.mang.model.ProductlistVO"%>
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
    <title>중고거래목록</title>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>

<style>
/* 검색창 */
.nav-right a{
         color: black;
     }
    .search-container {
        display: flex;
        justify-content: center;
      }
      
      input[type=text] {
        padding: 6px;
        margin-top: 8px;
        font-size: 17px;
        border: none;
        border-bottom: 2px solid #ccc;
      }
      
      .search-button {
        background-color: rgb(230, 177, 0);
        border: none;
        border-radius: 3px;
        padding: 5px;
        margin-top: 8px;
        margin-left: -5px;
        cursor: pointer;
      }
      
      .search-button:hover {
        background-color: #ccc;
      }

      input#search {
        width: 400px;
      }

      button.search-button {
        width: 40px;
        height: 40px;
      }

    #registration{
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
     
     .col-lg-12{
         margin-top: 10px;
         margin-left: 1700px;
     }
 
     .logo {
         width: 300px;
         
     }
     .product-shop.spad {
        padding-top: 0px;
    }
    
    /* 상단바 위아래 선 코드 */
    header .nav-item {
    border-bottom: 2px solid rgb(204, 201, 201); /* 아래 선 */
    border-top: 2px solid rgb(204, 201, 201); /* 위 선 */
    }
    h4 {
    border-bottom: 2px solid rgb(204, 201, 201); /* 아래 선 */
    padding-bottom: 10px;
    }
    .productShopDetail, .communityShopDetail {
        margin-left: 1050px;
        margin-top: 20px;
    }

    .nav-item,
    .hero-section,
    .row {
      max-width: 1200px;
      margin: 0 auto;

      .nav-item>a {
        padding-left: 0;
      }

      .nav-item>a {
        margin-left: 0;
        
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
                <div class="row justify-content-center">
                    <!-- 중앙 정렬 추가 -->
                    <div class="col-lg-2 col-md-2">
                        <a href="./main.do">
                            <img src="./img/로고.png" alt="">
                        </a>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <!-- 중앙 정렬 및 크기 변경 -->
                        <div class="search-container">
                            <form action="./ProductSearch.do">
                      <input class="border" id="search" type="text" placeholder="검색" name="search">
                      <button type="submit" class="search-button"><i class="fas fa-search" style="color: azure;"></i></button>
                    </form>
                        </div>
                    </div>
                    <div class="col-lg-2 text-right col-md-2">
                        <!-- 중앙 정렬 및 크기 변경 -->
                        <ul class="nav-right">
                            <c:if test="${empty member}">
                                <a href="./Gologin.do">로그인</a>
                                <a href="./Gojoin.do">회원가입</a>
                            </c:if>

                            <c:if test="${!empty member}">
                                <a>${member.nickName}님 환영합니다 '◡'✿ </a>
                                <a href="Gologout.do">| 로그아웃</a>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">


                    <header>
                        <nav>
                            <ul>
                                <li><a href="./main.do">Home</a></li>
                                <li><a href="./ProductList.do">중고거래</a>
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
                                <li><a href="BoardList.do">커뮤니티</a>
                                    <ul class="dropdown">
                                        <li><a href="#">정보공유</a></li>
                                        <li><a href="#">자유게시판</a></li>
                                    </ul>
                                </li>
                                <li><a href="MyList.do">마이페이지</a>
                                    <ul class="dropdown">
                                        <li><a href="#">판매/구매목록</a></li>
                                        <li><a href="#">매너온도</a></li>
                                        <li><a href="#">개인정보 수정</a></li>
                                        <li><a href="#">좋아요 목록</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </header>



                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>

    </header>

    <!-- Header End -->


    <!-- 작은 위치 -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10">
                    <div class="breadcrumb-text">
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <span>중고거래</span>
                    </div>
                </div>
            </div>


            <br>

            <!-- 카테고리/ 태그 -->
            <div class="container">
                <div class="row" width="auto" id = "row2">
                    <div class="col-lg-3 col-md-6" id="cate" >
                        <div class="filter-widget">
                            <h4 class="fw-title">Categories</h4>
                            <ul class="filter-catagories">
                                <li><a href="#">외출용품</a></li>
                                <li><a href="#">장난감/도서</a></li>
                                <li><a href="#">의류</a></li>
                                <li><a href="#">가구</a></li>
                                <li><a href="#">침구류</a></li>
                                <li><a href="#">생활용품</a></li>
                                <li><a href="#">기타</a></li>
                            </ul>
                        </div>
                    </div>


                    <!-- 물품목록 
       dao productlist기능 이용, productVO에 있는 변수 활용 -->
               <div style="width: 800px;">
                    <div class="col-lg-9 order-1 order-lg-2">
                        <c:if test="${!empty member}">
                            <form action="./GoProductinput.do">
                                <div class="row">

                                    <div class="col-lg-7 col-md-7">
                                        <div class="select-option">
                                            <select class="sorting">
                                                <option value="">최신순</option>
                                                <option value="">인기순</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-lg-5 col-md-5 text-right">
                                        <button id="registration">물품 등록</button>
                                    </div>

                                </div>

                            </form>
                        </c:if>
                    </div>
                    <div class="pi-pic">
                        <div class="icon">
                            <i class="icon_heart_alt"></i>
                        </div>
                    </div>
                    
                    
               <div class="row">
                    <c:forEach items="${list}" var="item" varStatus="status">

                        <div class="col-sm-5 mb-3">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <img src="./uploads/${imglist[status.index].file_name}" alt="이미지" width="250px" height="250px" align="center">
                                        <a href="ProductDetail.do?items_id=${item.items_id}">
                                        <h5 id="title">
                                            ${item.title}
                                        </h5>
                                    </a>
                                    <div class="product-price">
                                        ${item.price}원<br>
                                    </div>
                                    <a class="area">${area[status.index].area }</a>

                                </div>
                            </div>
                        </div>
                        <c:if test="${status.count % 2 == 0}">
            </div><div class="row">
        </c:if>
                        
                    </c:forEach>
               </div>
               </div>
                    <!-- Product Shop Section End -->

                    <div class="footer">
                        <br><br><br><br>


                   
                </div>
            </div>
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