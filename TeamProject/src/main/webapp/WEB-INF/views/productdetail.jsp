<%@page import="kr.mang.model.ProductlistVO"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>제품상세정보</title>

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
	 p{
      	font-size: 20px;
      	font-weight: bold;
      	color: black;
      }
      
      p1{
      	font-size: 20px;
      	font-weight: bold;
      	color: #003399;
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

    /* 검색창 */
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
    
      h4 {
        margin-bottom: 20px;
        margin-top: 30px;
        font-weight: 700;
      }
      h2 {
        margin-bottom: 20px;
        font-weight: 600;
      }
      #Product_Detail {
        width: 700px;
      }
      .tdTitle{
        width: 150px;
        color: gray;
        font-weight: 700;
      }
      .tdText {
        width: 200px;
        font-weight: 700;
      }
     
      .ProductHeader td {
        padding-top: 10px;
        padding-bottom: 20px;
      }
      button {
        margin-left: 5px;
        margin-right: 5px;
      }
      .ProductText {
        margin-top: 20px;
      }
    .ProductText td {
        padding-top: 20px;
        width: 900px;
    } 
    .Community {
        border-collapse: collapse;
        width: 100%;
    }
    .CommunityTitle {
        padding-top: 20px;
    }

    .CommunityTitle td{
        
    }

    .th, .td {
        text-align: left;
        padding: 8px;
      }
    
    .Community th, .Community td{
        text-align: left;
        padding: 8px;
    }

    .Community th {
        background-color: #e7ab3c;
        color: white;
      }
    .Community tr:nth-child(even) {
        background-color: #f2f2f2;
      }
    .Community tr:hover {
        background-color: #ddd;
      }
    p.community1 {
    font-size: 30px;
    }
    
</style>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
    
    
    
    
    
        <div class="container">
         <!-- Header Section Begin -->
    <header class="header-section">
        
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">

                        <a href="./main.do">
                            <img src="./img/로고.png" alt="">
                        </a>

                            <a href="./main.do">
                                <img src="./메인사진파일/로고.png" alt="">
                            </a>
                     

                    </div>

                    <div class="col-lg-7 col-md-6"> <!-- 중앙 정렬 및 크기 변경 -->
                <div class="search-container">
                    <form action="/search">
                      <input class="border" id="search" type="text" placeholder="검색" name="search">
                      <button type="submit" class="search-button"><i class="fas fa-search" style="color: azure;"></i></button>
                    </form>
                  </div>
            </div>
                    <div class="col-lg-3 text-right col-md-3">
                        
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
                <div class="nav-depart">
                    
                </div>
                <nav class="nav-menu mobile-menu">
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
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">중고거래</a>
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
                            <li><a href="#">장난감/도서</a></li>
                            <li><a href="#">의류</a></li>
                            <li><a href="#">가구</a></li>
                            <li><a href="#">침구류</a></li>
                            <li><a href="#">생활용품</a></li>
                            <li><a href="#">기타</a></li>
                        </ul>
                    </div>

                   </div>

                <!-- 중고거래 글 내용 -->
                <div class="col-lg-9">
                    <div class="row">

                        <div class="col-lg-6">
                                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                           <img alt="Product Image" src="./uploads/${detail.file_name}">
                                        </div>
                                        
                                    </div>
            
                                   
                                </div>
                        </div>
                        
                        <div>
                        <br>
                            <table>
                                <tr>
                                    <td id=detailTitle>
                                    <p class = "fw-title">${detail.title}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <p1>가격 : ${detail.price}원</p1>
                                    </td>
                                </tr>

                            </table>

                            <table class="ProductHeader">
                                <tr>
                                    <td class="tdTitle">- 판매자 : ${detail.user_id}</td>
                                    <td class="tdText"></td>
                                </tr>
                                <tr>
                                    <td class="tdTitle">- 거래지역 : ${prodetail.area}</td>
                                    <td class="tdText"></td>
                                </tr>
                                <tr>
                                    <td class="tdTitle">- 카테고리</td>
                                    <td class="tdText">의류</td>
                                </tr>
                                <tr>
                                    <td class="tdTitle">- 상품태그</td>
                                    <td class="tdText">${detail.tag_id}</td>
                                </tr>
                            </table>
                            <div align ="left">
                                <button type="button" class="btn btn-secondary btn-lg btn-danger">❤︎찜</button>
                                <button class="btn btn-secondary btn-lg btn btn-danger" type="button" onclick="window.open('./Gomessage.do', '_blank', 'width=600,height=600')">✉쪽지</button>
                                <button class="btn btn-secondary btn-lg btn btn-danger" type="button" onclick="window.open('./Gopayment.do', '_blank', 'width=600,height=600')">바로구매</button>
                            
                        </div>
                        </div>
               
                        <table class="ProductText">
                        <tr class="border-bottom">
                            <td>작성날짜:<fmt:formatDate value="${detail.up_date}" pattern="yyyy.MM.dd"/></td>
                        </tr>
                        <tr>
                        <td> <h3>상품정보</h3> </td>
                            <td>
                            ${detail.items_state}
                            </td>
                        </tr>

                        </table>

                        
    </section>
                        	<div style="text-align: center;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="button"
                            onclick="window.open('./main3.do', '_blank', 'width=1200,height=600')">관련 커뮤니티 글 보러가기</button>
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