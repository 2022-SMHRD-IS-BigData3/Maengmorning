<!DOCTYPE html>
<html lang="zxx">

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
    
   
	#double {border: 10px double black;}
   
    /* 테이블 스타일 */
    table {
      width: 100%;
      border-collapse: collapse;
      border: 1px solid black;
    }

    h2, tr, th, td {
    /* 선 */
      border: 1px solid black;
    /* 칸크기 */
      padding: 8px;
    /* 정렬 */
      text-align: center;
    }

    th {
      background-color: lightgray;
    }

  </style>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>찜목록</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
            rel="stylesheet">

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
<body>

	<body><div id="preloder">
      <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">

      <div class="container">
        <div class="inner-header">
          <div class="row justify-content-center"> <!-- 중앙 정렬 추가 -->
            <div class="col-lg-2 col-md-2">
              <a href="./index.html">
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


 <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
            data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">이전</span>
        </a>

     <br><br><br><br>
    <!-- 판매내역 -->
    <div class="container">
        <div class="col-lg-12">
            <form action="마이상세(판매).jsp">
                <td>
                    <h4 style="text-align:center;">찜✔</h4>
                </td>
                <table></table>
                <table class="table table-bordered">
                    <thead class="table-warning">

                        <div class="col-md-12">
                            <div
                                class="row g-0 border rounded overflow-hidden flex-md-row mb-2 shadow-sm h-md-250 position-relative">
                                <div class="col-auto d-none d-lg-block">
                                    <svg class="bd-placeholder-img" width="200" height="220"
                                        xmlns="http://www.w3.org/2000/svg" role="img"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="" /><text x="12%" y="50%"
                                            fill="#F6F6F6">상품사진들어갈공간</text>
                                    </svg>
                                </div>
                                <div class="col p-4 d-flex flex-column position-static">
                                    <p class="d-inline-block mb-2 text-secondary">2023.04.26</p>
                                    <p><a href="#" class="link-dark">
                                            <h3>상품이름</h3>
                                        </a></p>
                                    <strong class="mb-1 text-body-secondary">12,000원</strong>
                                    <p class="d-inline-block mb-2 text-secondary">판매자이름</p>

                                </div>
                            </div>

                        </div>

                        <div class="col-md-12">
                            <div
                                class="row g-0 border rounded overflow-hidden flex-md-row mb-2 shadow-sm h-md-250 position-relative">
                                <div class="col-auto d-none d-lg-block">
                                    <svg class="bd-placeholder-img" width="200" height="220"
                                        xmlns="http://www.w3.org/2000/svg" role="img"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="" /><text x="12%" y="50%"
                                            fill="#F6F6F6">상품사진들어갈공간</text>
                                    </svg>
                                </div>
                                <div class="col p-4 d-flex flex-column position-static">
                                    <p class="d-inline-block mb-2 text-secondary">2023.04.26</p>
                                    <p><a href="#" class="link-dark">
                                            <h3>상품이름</h3>
                                        </a></p>
                                    <strong class="mb-1 text-body-secondary">12,000원</strong>
                                    <p class="d-inline-block mb-2 text-secondary">판매자이름</p>

                                </div>
                            </div>

                        </div>



                        <div class="col-md-12">
                            <div
                                class="row g-0 border rounded overflow-hidden flex-md-row mb-2 shadow-sm h-md-250 position-relative">
                                <div class="col-auto d-none d-lg-block">
                                    <svg class="bd-placeholder-img" width="200" height="220"
                                        xmlns="http://www.w3.org/2000/svg" role="img"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="" /><text x="12%" y="50%"
                                            fill="#F6F6F6">상품사진들어갈공간</text>
                                    </svg>
                                </div>
                                <div class="col p-4 d-flex flex-column position-static">
                                    <p class="d-inline-block mb-2 text-secondary">2023.04.26</p>
                                    <p><a href="#" class="link-dark">
                                            <h3>상품이름</h3>
                                        </a></p>
                                    <strong class="mb-1 text-body-secondary">12,000원</strong>
                                    <p class="d-inline-block mb-2 text-secondary">판매자이름</p>

                                </div>
                            </div>

                        </div>



                        <div class="col-md-12">
                            <div
                                class="row g-0 border rounded overflow-hidden flex-md-row mb-2 shadow-sm h-md-250 position-relative">
                                <div class="col-auto d-none d-lg-block">
                                    <svg class="bd-placeholder-img" width="200" height="220"
                                        xmlns="http://www.w3.org/2000/svg" role="img"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="" /><text x="12%" y="50%"
                                            fill="#F6F6F6">상품사진들어갈공간</text>
                                    </svg>
                                </div>
                                <div class="col p-4 d-flex flex-column position-static">
                                    <p class="d-inline-block mb-2 text-secondary">2023.04.26</p>
                                    <p><a href="#" class="link-dark">
                                            <h3>상품이름</h3>
                                        </a></p>
                                    <strong class="mb-1 text-body-secondary">12,000원</strong>
                                    <p class="d-inline-block mb-2 text-secondary">판매자이름</p>

                                </div>
                            </div>

                        </div>

                        <br><br><br><br>
















</body>

	
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