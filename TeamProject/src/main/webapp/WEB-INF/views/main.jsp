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
      <title>메인수정중</title>

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
    /* 상단바 줄이고 가운데정렬하는 코드입니당.*/
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


      < !-- 버튼 -->.col-lg-12 {
        margin-top: 10px;
        margin-left: 1600px;
      }

      .logo {
        width: 300px;

      }

      div>.container {
        margin-left: 600px;
      }

      .nav-item>a {
        margin-right: 1600px;

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
            <div class="col-lg-6 col-md-6"> <!-- 중앙 정렬 및 크기 변경 -->
              <div class="advanced-search">
                <div class="input-group">
                  <input type="text" placeholder="검색">
                  <button type="button"><i class="ti-search"></i></button>
                </div>
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
          <div class="nav-depart">

          </div>
          <nav class="nav-menu mobile-menu">
            <ul>
              <li class="active"><a href="./Gomain.do">Home</a></li>


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

              <li><a href="/Gomypage.do">마이페이지</a>
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










    <!--맨위사진-->
    <section class="hero-section">
      <div class="hero-items owl-carousel">
        <div class="single-hero-items set-bg" data-setbg="">
          <div class="container">
            <!-- <div class="row">
                        <div class="col-lg-5">
                            <span>작은글씨</span>
                            <h1>큰글씨</h1>
                            <p>간단한설명</p>
                            <a href="#" class="primary-btn">바로가기버튼</a>
                        </div>
                    </div> -->

          </div>
        </div>
        <!--맨위두번째나오는사진-->
        <div class="single-hero-items set-bg" data-setbg="">
          <div class="container">
            <!--    <div class="row">
                        <div class="col-lg-5">
                            <span>작은글씨</span>
                            <h1>큰글씨</h1>
                            <p>간단한설명</p>
                            <a href="#" class="primary-btn">바로가기버튼</a>
                        </div>
                    </div> -->

          </div>
        </div>
      </div>
    </section>

    <!-- 중고거래 -->
    <div class="container-fluid">

      <div class="nav-item">
        <div class="container">
          <nav class="nav-menu mobile-menu">
            <ul>
              <li class="active"><a href="./Goproductlist">중고거래</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <div class="album py-5 bg-body-tertiary">
      <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                <title>Placeholder</title>
                <image href="./img/강아지.png" width="100%" height="225" />
              </svg>

              <div class="card-body">
                <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
              </div>
            </div>
          </div>
 
          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                <title>Placeholder</title>
                <image href="./img/강아지.png" width="100%" height="225" />
              </svg>

              <div class="card-body">
                <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
              </div>
            </div>
          </div>

          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg"
                role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                <title>Placeholder</title>
                <image href="./img/강아지.png" width="100%" height="225" />
              </svg>

              <div class="card-body">
                <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
              </div>
            </div>
          </div>

        </div>
      </div>


      <div class="banner-section spad">
        <div class="container-fluid">

          <div class="nav-item">
            <div class="container">
              <nav class="nav-menu mobile-menu">
                <ul>
       				
                  <li class="active"><a href="./index.html" type="button">더보기</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
 </div>
	<!-- 선 -->
   <div class="copyright-reserved"></div>
<br><br><br><br>
      <!-- 커뮤니티 -->

      <div class="container-fluid">

        <div class="nav-item">
          <div class="container">
            <nav class="nav-menu mobile-menu">
              <ul>
                <li class="active"><a href="./index.html">커뮤니티</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
      <div class="album py-5 bg-body-tertiary">
        <div class="container">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <div class="col">
              <div class="card shadow-sm">
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                  preserveAspectRatio="xMidYMid slice" focusable="false">
                  <title>Placeholder</title>
                  <image href="./img/강아지.png" width="100%" height="225" />
                </svg>

                <div class="card-body">
                  <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
                </div>
              </div>
            </div>

            <div class="col">
              <div class="card shadow-sm">
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                  preserveAspectRatio="xMidYMid slice" focusable="false">
                  <title>Placeholder</title>
                  <image href="./img/강아지.png" width="100%" height="225" />
                </svg>

                <div class="card-body">
                  <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
                </div>
              </div>
            </div>

            <div class="col">
              <div class="card shadow-sm">
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
                  preserveAspectRatio="xMidYMid slice" focusable="false">
                  <title>Placeholder</title>
                  <image href="./img/강아지.png" width="100%" height="225" />
                </svg>

                <div class="card-body">
                  <p class="card-text">제목 : 강아지<br><br> 상세설명 : 멍멍</p>
                </div>
              </div>
            </div>

          </div>
        </div>
 </div>

        <div class="banner-section spad">
          <div class="container-fluid">

            <div class="nav-item">
              <div class="container">
                <nav class="nav-menu mobile-menu">
                  <ul>
                    <li class="active"><a href="./index.html">더보기</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
      </div>
        


<br><br><br>



        <!-- 아래까만거 -->
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