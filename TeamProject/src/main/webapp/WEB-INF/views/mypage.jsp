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
    </head>

    <style>
        /* 상단바 줄이고 가운데정렬하는 코드입니당.*/
        .nav-item,
        .hero-section,
        .row {
            max-width: 1100px;
            margin: 0 auto;



            .logo {
                width: 300px;

            }

            div>.container {
                margin-left: 600px;
            }



            .table {
                margin-top: -45px;
            }

            #registration {
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

            .col-lg-12 {
                margin-top: 10px;
                margin-left: 1700px;
            }

            .logo {
                width: 300px;

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
                    <div class="row">
                        <div class="col-lg-2 col-md-2">

                            <a href="./Gomain.do">
                                <img src="./img/로고.png" alt="">
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

                            <li><a href="./Gomypage.do">마이페이지</a>
                                <ul class="dropdown">
                                    <li><a href="GOmy.do">판매/구매목록</a></li>
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




        <!-- 작은 위치 -->
        <div class="breacrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="breadcrumb-text">
                            <a href="./Gomain.do"><i class="fa fa-home"></i> Home</a>
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
                            <strong class="d-inline-block mb-2 text-primary">아이디</strong>
                            <h3 class="mb-0">닉네임</h3>
                            <div class="mb-1 text-body-secondary">그외</div>
                            <p class="card-text mb-auto">등등</p>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                                role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice"
                                focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#FFD280" /><text x="12%" y="50%"
                                    fill="#F6F6F6">매너온도 ★★★★★</text>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- 게시판 글 -->
        <div class="container">
            <div class="col-lg-12">
                <div class="row">
                </div>

                <form action="./Gomypagesell.do">
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
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 구매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                        </tbody>
                    </table>

                    <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="submit">더보기</button>
                    </div>
                </form>
                <br><br>

                <form action="./Gomypagebuy.do">
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
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 구매금액</td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;"
                            type="submit">더보기</button>
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
                                <td>상품명</td>
                                <td>금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 판매자</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 금액</td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="text-align: right;">
                        <button class="btn btn-warning" style="color: white; font-weight: bold;" type="submit">더보기</button>
                    </div>
                </form>
            </div>
















            <br><br><br><br>

        </div>


        <!--아래 까만거  -->
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
        <!-- 아래까만거 End -->

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