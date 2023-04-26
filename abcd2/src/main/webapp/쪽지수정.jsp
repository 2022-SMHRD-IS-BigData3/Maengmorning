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
            <title>쪽지보내기 수정중</title>

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
        .nav-item {
            max-width: 1200px;
            margin: 0 auto;
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

        .message-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }


        

        form {
        background-color: #fff;
            border: 1px solid #ccc;
            padding: 30px;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 15px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            display: block;
            width: 85%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        textarea {
            height: 150px;
        }

        button[type="submit"] {
            background-color: #e7ab3c;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            
            background-color: #f5c65f;
        }

        .tab-content {
        
            display: block;
            width: 85%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
            background-color: #ebf7ff;
        }



        /* 내용 */
        form textarea {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }

        form button {
            display: block;
            width: 100%;

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
                <a href="./index.html">
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
                        <a href="#">
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


                            <li><a href="#">중고거래</a>
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

                            <li><a href="#">커뮤니티</a>
                                <ul class="dropdown">
                                    <li><a href="#">잡담</a></li>
                                    <li><a href="#">그외</a></li>
                                    <li><a href="#">등등</a></li>
                                </ul>
                            </li>

                            <li><a href="#">마이페이지</a>
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
                    <div class="col-lg-3.5">
                        <div class="breadcrumb-text product-more">
                            <a href="./home.html"><i class="fa fa-home"></i> Home</a>
                            <a href="./shop.html">커뮤니티</a>
                            <span>쪽지보관함</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 카테고리/ 태그 -->
        <section class="product-shop spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">

                        <div class="filter-widget">
                            <h4 class="fw-title">카테고리</h4>
                            <ul class="filter-catagories">
                                <li><a href="#">개인정보수정</a></li>
                                <li><a href="#">판매/구매목록</a></li>
                                <li><a href="#">찜목록</a></li>
                                <li><a href="#">매너온도</a></li>
                            </ul>
                        </div>

                    </div>

                    <div class="col-lg-8 order-1 order-lg-2">

                        <div class="product-show-option">
                            <div class="row">

                            </div>
                        </div>

                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">

                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="specification-table">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="customer-review-option">
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-text">
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                </div>
                                                <div class="avatar-text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <form>
                                    <label for="recipient">받는 사람:</label>
                                    <input type="text" id="recipient" name="recipient">
                                    <label for="subject">제목:</label>
                                    <input type="text" id="subject" name="subject">
                                    <label for="message">내용:</label>
                                    <textarea id="message" name="message"></textarea>
                                    <button type="submit">보내기</button>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <br><br><br><br>

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