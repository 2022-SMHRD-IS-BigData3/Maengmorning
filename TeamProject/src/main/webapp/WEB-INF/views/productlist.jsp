<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
          <div class="row justify-content-center"> <!-- 중앙 정렬 추가 -->
            <div class="col-lg-2 col-md-2">
              <a href="./Gomain.do">
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
          <nav class="nav-menu mobile-menu">
            

            <header>
                <nav>
                  <ul>
                    <li><a href="./Gomain.do">Home</a></li>
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
                            <a href="./Gomain.do"><i class="fa fa-home"></i> Home</a>
                            <span>중고거래</span>
                        </div>
                    </div>
                </div>

                <br>

    <!-- 카테고리/ 태그 -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
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
                   
                    <div class="filter-widget">
                        <h4 class="fw-title">Tags</h4>
                        <div class="fw-tags">
                            <a href="#">Towel</a>
                            <a href="#">Shoes</a>
                            <a href="#">Coat</a>
                            <a href="#">Dresses</a>
                            <a href="#">Trousers</a>
                            <a href="#">Men's hats</a>
                            <a href="#">Backpack</a>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-9 order-1 order-lg-2">
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
                          
                            <div class="col-lg-5 col-md-5 text-right">
                               <a href="./Goproductinput.do">물품등록</a>
                            </div>
                          
                        </div>
                    </div>
       <!-- dao productlist기능 이용, productVO에 있는 변수 활용 -->
                  <c:forEach items="${productlist}" var="list">
                    <div class="product-list">
                        <div class="row">
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="${list.file_name}">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">외출용품</div>
                                        <a href="#">
                                            <span>${list.items_id}</span>
                                           <h5 id="title">
                                            <a href="Productdetail.do?items_id=${list.items_id}">
                                            	${list.title}
                                            </a>
                                           </h5>
                                        </a>
                                        <div class="product-price">
                                            ${list.price}원<br>
                                        </div>
                                        <a class="area">${list.area }</a>
                                        <a class="date"><fmt:formatDate value="${list.up_date}" pattern="yyyy.MM.dd"/></a>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                        </c:forEach>
                         <!-- 
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/189551586_1_1679277101_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">외출용품</div>
                                        <a href="#">
                                            <h5>유아운동화</h5>
                                        </a>
                                        <div class="product-price">
                                            13,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/221668090_1_1681957202_w856.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">장난감/도서</div>
                                        <a href="#">
                                            <h5>티니핑 키링 (미개봉)</h5>
                                        </a>
                                        <div class="product-price">
                                            2,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/219784588_1_1680334787_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">장난감/도서</div>
                                        <a href="#">
                                            <h5>아이 스마트 팔레트 안드로이드 패드 그림그리기 색칠공부 [미개봉 새제품]</h5>
                                        </a>
                                        <div class="product-price">
                                           9,900원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/173217013_1_1639641301_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">가구</div>
                                        <a href="#">
                                            <h5>유아 식탁의자</h5>
                                        </a>
                                        <div class="product-price">
                                            45,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/221237820_2_1681569669_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">장난감/도서</div>
                                        <a href="#">
                                            <h5>시크릿쥬쥬 가방 시큐릿쥬쥬 진주엔젤 크로스 백</h5>
                                        </a>
                                        <div class="product-price">
                                            13,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/189991743_1_1679976156_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">침구류</div>
                                        <a href="#">
                                            <h5>낮잠이불</h5>
                                        </a>
                                        <div class="product-price">
                                            35,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/201725750_1_1665328203_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">기타</div>
                                        <a href="#">
                                            <h5>데이지생일풍선세트</h5>
                                        </a>
                                        <div class="product-price">
                                            18,900원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-pic">
                                        <img src="https://media.bunjang.co.kr/product/211308153_1_1676522062_w1100.jpg" alt="">
                                        <div class="icon">
                                            <i class="icon_heart_alt"></i>
                                        </div>
                                    </div>
                                    <div class="pi-text">
                                        <div class="catagory-name">생활용품</div>
                                        <a href="#">
                                            <h5>tgm 젖병. 젖꼭지2개씩 새것이에요.</h5>
                                        </a>
                                        <div class="product-price">
                                            10,000원
                                        </div>
                                        <a class="area">용봉동</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    -->
               
                </div>
            </div>
        </div>
    </section>
    <!-- Product Shop Section End -->

    

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