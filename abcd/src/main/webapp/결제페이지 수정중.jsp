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
            <title>쪽지보관함 수정</title>

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

    <form>
        <h2>결제 하기</h2>
        <div class="product">
            <img src="https://media.bunjang.co.kr/product/221923672_1_1682168337_w100.jpg" alt="">
            <div>
                <span style="margin-bottom: -10px; margin-top: -25px;">상품명: iPhone 13(DB데이터)</span>
                <span style="margin-top: 20px;">가격: 1,000,000원(DB데이터)</span>
                <span style="margin-top: 10px;">판매자: 성영맘(DB데이터)</span>
            </div>
        </div>
        <h2>결제 정보 입력</h2>
        
        <label for="name">이름 : </label>
        <input type="text" id="name" name="name" required /><br />
        <br>
        
        <label for="tel">연락처 : </label>
        <input type="text" id="tel" name="tel" required /><br />
        <br>
        
        <label for="address">배송지 입력 : </label>
        <input type="text" id="address" name="address" required /><br />
        <br>
        
        <a> 입금할 계좌번호 : 123456789 농협 예금주 (포대기)</a>
        <br>
        
        <button type="submit">결제하기</button>
        <p>결제하기 눌렀을 때 이름, 연락처, 배송정보 저장</p>
    </form>

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