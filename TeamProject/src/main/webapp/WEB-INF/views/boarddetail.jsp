<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>커뮤니티상세</title>

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
      
      h4 {
        margin-bottom: 20px;
        margin-top: 30px;
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

                        <a href="./main.do">
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
                    <div class="breadcrumb-text">
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- 카테고리/ 태그 -->
    <section class="product-shop spad">
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
                    <div class="product-show-option">
                        <div class="row">
                            
                        </div>
                    </div>

                    <!-- 게시판 글 -->
                    <div class="post-info">
                        <div class="title">
                            <h1>${detail.title}</h1>
                        </div>

                        <p>작성자:${detail.user_id} | 작성일:<fmt:formatDate value="${detail.write_date}" pattern="yyyy/MM/dd" /> | 동네: ${mdetail.area} | 조회수 : 1</p>
                    </div>


                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img alt="Board Image1" src="./boarduploads/${detail.file_name}
                                    ">
                            </div>
                         
                          <!-- 이거 속성 때문에 이미지가 출력이 안되네요. 확인 부탁들립니다.   
                          
                           <div class="carousel-item">
                                <img alt="Board Image2" src="./boarduploads/${detail.file_name}
                                    class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img alt="Board Image3" src="./boarduploads/${detail.file_name}
                                    class="d-block w-100" alt="...">
                            </div>-->
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

                        <table>
                            <tr>
                                <p>
									${detail.board_content}

                                </p>
                                <p>#태그</p>
                            </tr>
                        </table>

                    

                    <form action="Comment.do">
                    <div class="comment">
                        댓글  <input name="comment" type="text">
                        <button type="submit">등록</button>
                    </div>
                    </form>

                    <br>
                    <ul class="list-group">
					  <c:forEach var="comment" items="${comments}">
					    <li class="list-group-item">
					      <p>${comment.board_comment}</p>
					      <button>삭제</button>
					    </li>
					  </c:forEach>
					</ul>
					
					<br>
					<table class="Community">
                            <tr class="border-bottom">
                                <td > <h4>관련거래글</h4> </td>
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
					
                    </div>
                </div>
            </div>
        </div>
    </section>



    
    <!-- Js Plugins -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
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
    <script type="text/javascript">

    <script>
        $(document).ready(function () {
            $('#carouselExampleControls').carousel();
        });
        </script>
        
</body>

</html>