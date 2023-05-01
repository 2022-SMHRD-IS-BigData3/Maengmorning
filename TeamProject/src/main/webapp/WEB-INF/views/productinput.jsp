<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>중고거래글등록</title>

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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
    border: 2px solid #c4c1c1;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #c4c1c1;
    padding: 10px;
  }
  td.imgInput {
  height: 400px;
   }
   .tag_id {
    width: 675px;
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

                            <a href="./main.do">
                                <img src="./메인사진파일/로고.png" alt="">
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


                    
                    <div class="col-lg-3 text-right col-md-3">
                        
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
                <div class="nav-depart">
                    
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>
                       
                       
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
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <a href="./ProductList.do">중고거래</a>
                        <span>물품등록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:if test="${empty member}">
                       <a href="./Gologin.do">로그인</a>
                       <a href="./Gojoin.do">회원가입</a>
                  </c:if>
<!-- 중고거래 글 및 이미지 등록 하는 곳 -->
   <form action="./ProductInput.do" method="post" enctype="multipart/form-data" class="comment-form">
    <table id="Product_Style" align="center">
  <c:if test="${!empty member}">
        <tr class="border-bottom">
            <th colspan="2">
              <h4>물품등록</h4>
            </th>
          </tr>
       </c:if>
        <tr>
          <td class="Product_Style_td">상품이미지</td>
          <td class="imgInput">
          
         
     <!-- 이미지 미리보기 -->
               <img id="previewImage" src="#" alt="Preview Image" width="200px" height="200px">
            
               <div class="input-group mb-3" style="margin:0 auto;">
                <!-- 이미지 업로드  -->
                          <input name="file_name" type="file" class="form-co/ntrol" id="file_name" onchange="previewImage(event)"> 
                          
                         </div>
          </td>
        </tr>

		
        <tr>
          <td>글 제목</td>
          <td>
            <div>
                <input id="title" name="title" class="ProductTitle" type="text" placeholder="글 제목">
            </div>
          </td>
        </tr>
          <td>작성자</td>
          <td>
            <div>
            <input id="user_id" name="user_id" class="ProductTitle" type="text" placeholder="작성자">
            </div>
          </td>
        </tr>

        <tr>
          <td>카테고리</td>
          <td>
            <div class="category-option">
                <select class="sorting">
                    <option value="">외출용품</option>
                    <option value="">장난감/도서</option>
                    <option value="">의류</option>
                    <option value="">가구</option>
                    <option value="">침구류</option>
                    <option value="">생활용품</option>
                    <option value="">기타</option>
                </select>
            </div> 
          </td>
        </tr>

        <tr>
            <td>거래지역</td>
            <td>
                <div class="area">
                    <input id="area" name="area" type="text" placeholder="거래지역">
                </div> 
            </td>
          </tr>

       <tr>
            <td>상품가격</td>
            <td>
                <div class="price">
                   <input id="price" name="price" type="text" placeholder="가격 작성">
                </div>
            </td>
          </tr>
          
          <tr class="border-bottom">
            <td>상품설명</td>
            <td>
                <div>
                    <textarea id="items_state" name="items_state" class="ProductText" placeholder="여러 장의 상품 사진과 구입연도, 브랜드, 사용감, 하자유무 등 구매자에게 꼭 필요한 정보를 포함해주세요. (10자 이상)"></textarea>  
                </div>
            </td>
          </tr>
          
          <tr class="border-bottom">
            <td>상품태그</td>
            <td>
                <div>
                    <input id="tag_content" name="tag_content" class="tag" type="text" placeholder="연관태그를 꼭 입력해 주세요. (최대 5개)">
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
    <!-- 이미지 프리뷰 함수 -->
    <script>
    function previewImage(event) {
        var preview = document.getElementById('previewImage'); // 미리보기 이미지 요소 가져오기
        var file = event.target.files[0]; // 선택한 파일 가져오기
        var reader = new FileReader(); // 새 FileReader 개체 만들기

        reader.onload = function() {
            preview.src = reader.result; // 미리보기 이미지 소스를 업로드된 이미지로 설정
        };

        if (file) {
            reader.readAsDataURL(file); // 선택한 파일을 DataURL로 읽기
        } else {
            preview.src = "#"; // 파일을 선택하지 않은 경우 미리보기 이미지 소스를 자리 표시자로 설정합니다.
        }
    }

    // 파일 입력 요소에 previewImage 함수를 연결합니다.
    var fileInput = document.getElementById('file_name');
    fileInput.addEventListener('change', previewImage);
</script>
</body>

</html>