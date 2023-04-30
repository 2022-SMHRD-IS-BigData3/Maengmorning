<%@page import="kr.mang.model.ProductlistVO"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
</head>
<style>
    
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
        width: 100px;
        color: gray;
        font-weight: 700;
      }
      .tdText {
        width: 300px;
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

                        <a href="./main.do">
                            <img src="./img/로고.png" alt="">
                        </a>

                            <a href="./main.do">
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
                               <c:if test="${empty member}">
                       <a href="./Gologin.do">로그인</a>
                       <a href="./Gojoin.do">회원가입</a>
                  </c:if>
                     
                     <c:if test="${!empty member}">
                     <a>${member.nickName}님 환영합니다~</a>
                     <a>로그아웃</a>
                     </c:if>
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
                        <li class="active"><a href="./main.do">Home</a></li>
                       
                       
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
                                <li><a href="#">잡담</a></li>
                                <li><a href="#">그외</a></li>
                                <li><a href="#">등등</a></li>
                            </ul>
                        </li>

                        <li><a href="./Gomypage">마이페이지</a>
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
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
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

                <!-- 중고거래 글 내용 -->
                <div class="col-lg-9">
                    <div class="row">

                        <div class="col-lg-6">
                                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img src="https://media.bunjang.co.kr/product/221627450_1_1681906167_w1100.jpg"
                                                class="d-block w-100" alt="...">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="https://media.bunjang.co.kr/product/221627450_2_1681906167_w1100.jpg"
                                                class="d-block w-100" alt="...">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="https://media.bunjang.co.kr/product/221627450_3_1681906167_w1100.jpg"
                                                class="d-block w-100" alt="...">
                                        </div>
                                    </div>
            
                                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                        data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">이전</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                        data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">다음</span>
                                    </a>
                                </div>
                        </div>
                        
                        <div>
                            <table class="border-bottom" border="bliack">
                                <tr>
                                    <td>
                                    <h4>
                                    제목 : ${detail.title}
                                    </h4> 
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                	 	<img alt="Product Image" src="./uploads/${detail.file_name}">
                                	</td>
                                </tr>
                                <tr>
                                    <td>
                                    <h2>가격: ${detail.price}</h2>
                                    </td>
                                </tr>

                            </table>

                            <table class="ProductHeader">
                                <tr>
                                    <td class="tdTitle">- 판매자: ${detail.user_id}</td>
                                    <td class="tdText"></td>
                                </tr>
                                <tr>
                                    <td class="tdTitle">- 거래지역: ${prodetail.area}</td>
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
                            <td> <h4>상품정보</h4> </td>
                            <td>
                            ${detail.items_state}
                            </td>
                        </tr>
                        <tr>
                            <td>작성날짜:<fmt:formatDate value="${detail.up_date}" pattern="yyyy.MM.dd"/></td>
                        </tr>

                        </table>

                        
                        <table class="Community">
                            <tr class="border-bottom">
                                <td > <h4>관련커뮤니티</h4> </td>
                            </tr> 
                            <tr class="CommunityTitle">
                                <th>글번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                            </tr>
                           
                            <tbody>
                            
                            
							 <c:forEach items="${list}" var="item" varStatus="status">
							    <tr>
							        <td>${item.items_id}</td>
							        <td>${item.title}</td>
							        <td>${item.user_id}</td>
							    </tr>
							</c:forEach>
							</tbody>
                            </table>
                        
    </section>
   
        
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