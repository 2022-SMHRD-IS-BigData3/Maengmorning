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
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
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
      
    
     /* 상단바 위아래 선 코드 */
    header .nav-item {
    border-bottom: 2px solid rgb(204, 201, 201); /* 아래 선 */
    border-top: 2px solid rgb(204, 201, 201); /* 위 선 */
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
          <div class="row justify-content-center"> <!-- 중앙 정렬 추가 -->
            <div class="col-lg-2 col-md-2">
              <a href="./main.do">
                <img src="./img/로고.png" alt="">
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
            <div class="col-lg-2 text-right col-md-2"> <!-- 중앙 정렬 및 크기 변경 -->
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
                            <span>마이페이지</span>
                        </div>
                    </div>
                </div>

                <br>

                <!-- 개인정보 -->
                <div class="col-md-12">
                    <div
                        class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static">
                            <strong class="d-inline-block mb-2 text-primary">${member.nickName}</strong>
                            <div class="mb-1 text-body-secondary">${area[status.index].area }</div>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                                role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice"
                                focusable="false">
                                <rect width="100%" height="100%" fill="#FFD280" /><text x="12%" y="50%"
                                    fill="#F6F6F6"><a href="./Goreview.do">매너온도 ★★★★★</a></text>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
.
        <!-- 게시판 글 -->
        <div class="container">
            <div class="col-lg-12">
                <div class="row">
                </div>

                <form action="./GoMydetailList.do">
                    <table class="table">

                        <thead>
                            <td>
                                <h4>✔판매내역</h4>
                            </td>
                        </thead>
                        <tbody>
                            <tr>
                                <td>날짜</td>
                                <td>상품명</td>
                                <td>구매자</td>
                                <td>판매금액</td>
                            </tr>
                           <c:forEach items="${getmylist }" var="my" varStatus="status">
                            <c:if test="${status.index<5}">
                            <tr>
                                <td><fmt:formatDate value="${my.trade_date}" pattern="yyyy.MM.dd"/></td>
                                <td>${my.title }</td>
                                <td>${my.buy_user_id }</td>
                                <td>${my.price }원</td>
                            </tr>
                            </c:if>
                           </c:forEach>
                        </tbody>
                    </table>
                     <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="button"
                            onclick="window.open('mypagesell.do', '_blank', 'width=1200,height=600')">더보기</button>
                    </div>
                    
                </form>
                <br><br>
               
                <form action="mypagebuy.do">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>
                                    <h4>✔구매내역</h4>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>날짜</td>
                                <td>상품명</td>
                                <td>판매자</td>
                                <td>구매금액</td>
                            </tr>
                          <c:forEach items="${getmylist }" var="my" varStatus="status">
                          	<c:if test="${status.index<5}">
                            <tr>
                                <tr>
                                <td><fmt:formatDate value="${my.up_date}" pattern="yyyy.MM.dd"/></td>
                                <td>${my.title }</td>
                                <td>${my.user_id }</td>
                                <td>${my.price }원</td>
                            </tr>
                            </c:if>
                           </c:forEach>
                        </tbody>
                    </table>
                    <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="button"
                            onclick="window.open('mypagebuy.do', '_blank', 'width=1200,height=600')">더보기</button>
                    </div>
                </form>
                <br><br>
                <form action="./Gomypageselect.do">
                    <table class="table">
                        <thead>
                            <td>
                                <h4>❤찜목록</h4>
                            </td>
                        </thead>
                        <tbody>
                            <tr>
                                <td>판매자</td>
                                <td>글 제목</td>
                                <td>금액</td>
                            </tr>
                            <tr>
                                <td>a11</td>
                                <td>유아의류</td>
                                <td>3900원</td>
                            </tr>
                            <tr>
                                <td>정민규</td>
                                <td>카시트 팔아요</td>
                                <td>450000원</td>
                            </tr>
                            <tr>
                                <td>a11</td>
                                <td>아기 목튜브</td>
                                <td>20000원</td>
                            </tr>
                            <tr>
                                <td>꽃보다중년</td>
                                <td>4moms 락카루 베이비 스윙 다크 그래이</td>
                                <td>162000원</td>
                            </tr>
                            <tr>
                                <td>smhrd11</td>
                                <td>벨라 아기침대 미개봉 새제품 싸게팝니다</td>
                                <td>100000원</td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="button"
                            onclick="window.open('./Gomypageselect.do', '_blank', 'width=1200,height=600')">더보기</button>
                    </div>
                </form>
            </div>
            <br><br><br><br>
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