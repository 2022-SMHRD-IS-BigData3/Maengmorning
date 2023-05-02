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
    <title>커뮤니티목록</title>

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
	.table-scroll a{
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

     /* 스타일링 */
     table {
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        text-align: left;
        padding: 8px;
      }
      th {
        background-color: #e7ab3c;
        color: white;
      }
      tr:nth-child(even) {
        background-color: #f2f2f2;
      }
      tr:hover {
        background-color: #ddd;
      }
      h3 {
        margin-bottom: 20px;
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
      
      .product-shop {
		padding-top: 0px;
		padding-bottom: 80px;
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
                    <form action="./BoardSearch.do">
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
                            <span>커뮤니티</span>
                        </div>
                    </div>
                </div>

                <br>

    <!-- 카테고리/ 태그 -->
    <section class="product-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    <div class="filter-widget">
                        <h4 class="fw-title">Categories</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">정보공유</a></li>
                            <li><a href="#">자유게시판</a></li>
                        </ul>
                    </div>
                    </div>
                    
                <div class="col-lg-9 order-1 order-lg-2">
                    
                    <form action="./Goboardinput.do">
                    <table>
                    <div class="product-show-option">
                        <div class="row">
                            <div class="col-lg-7 col-md-7">
                                <div class="select-option">
                                    <select class="sorting">
                                        <option value="">최신순</option>
                                        <option value="">인기순</option>
                                    </select>
                                </div>
                            </div>
                            
                            	<div>
                            	
                                </div>
                            <div class="col-lg-5 col-md-5 text-right">
                                <button id="registration">글 등록</button>
                            </div>
                            </div>
                       
                    </div>
                        </div>
                    </table>
                    
                    </form>
                    
                    
                    
                   <div class="table-scroll">
         
                        <table>
                        <thead>
                            <tr>
                            <th>글번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>동네</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="item" varStatus="status">
									<tr>
										<td>${item.board_id}</td>
										<td>${item.title}</td>
										<td>${item.user_id}</td>
										 <td>${area[status.index].area}</td>
									</tr>
						</c:forEach>
                        </tbody>
                        </table>
						</div>


                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->
		<div class="footer">
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