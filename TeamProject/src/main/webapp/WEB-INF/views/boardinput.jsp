<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>커뮤니티글등록</title>

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


    div .leave-comment {
        margin-top: 100px;
        margin-bottom: 100px;
    }

    div .category-option {
        margin-bottom: 30px;
        margin-left: 15px;

    
    }

    div .logo {
        height: 100px;
        width: 100px;
        margin-bottom: 25px;
    }

    div .sorting {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div .option {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div #area, .area {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    div #price, .price {
        height: 50px;
        width: 280px;
        margin-right: 25px;
    }

    #Product_Style {
        margin-top: 50px;
        margin-bottom: 100px;
        width: 900px;
    }

    div.logo {
        height: 100px;
        width: 100px;
    }
    
    .Product_Style_td {
        margin-right: 20px;
    
    }

    .ProductTitle, div.nice-select.sorting, .ProductArea, .ProductPrice, .ProductTag {
        width: 675px;
    }

    .ProductText {
        width: 675px;
        height: 400px;
    }
    
    /*표*/
     table #Product_Style {
    width: 100%;
    border: 2px solid #777676;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #777676;
    padding: 10px;
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

                            <a href="./Gomain.do">
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
                        <a href="./Gomain.do"><i class="fa fa-home"></i> Home</a>
                        <a href="./Goproductlist.do">커뮤니티</a>
                        <span>글 등록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <form action="./Goboardlist.do">
    <table id="Product_Style" align="center" >
        <tr class="border-bottom">
          <th colspan="2" >
            <h4>커뮤니티 글 등록</h4>
          </th>
        </tr>

        <tr>
          <td class="Product_Style_td">이미지</td>
          <td>
            <div class="logo">
                <img src="img/free-icon-camera-685655.png" alt="">
            </div>
            <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile02">
                <label class="input-group-text" for="inputGroupFile02">Upload</label>
              </div>
          </td>
        </tr>

        <tr>
          <td>글 제목</td>
          <td>
            <div>
                <input class="ProductTitle" type="text" placeholder="글 제목">
            </div>
          </td>
        </tr>

        <tr>
          <td>카테고리</td>
          <td>
            <div class="category-option">
                <select class="sorting">
                    <option value="">정보공유</option>
                    <option value="">자유게시판</option>
                    
                </select>
            </div> 
          </td>
        </tr>

        <tr>
            <td>글 내용</td>
            <td>
                <div>
                    <textarea class="ProductText" placeholder="회원들과 공유하고 싶은 정보들을 자유롭게 작성해주세요. (10자 이상)"></textarea>  
                </div>
            </td>
          </tr>

        <tr>
            <td>상품태그</td>
            <td>
                <div>
                    <input class="ProductTag" type="text" placeholder="연관태그를 꼭 입력해 주세요. (최대 5개)">
                 </div>
            </td>
          </tr>
        
        <tr align="center">
            <td colspan="2">
                <button type="submit" class="site-btn">등록</button>
            </td>
        </tr>
        

      </table>
      </form>



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