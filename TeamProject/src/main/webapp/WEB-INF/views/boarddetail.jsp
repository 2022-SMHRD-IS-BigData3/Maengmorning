<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	
	 div.container {
	  padding-top: 0px;
	 }
	 
	 section.product-shop.spad {
	 padding-top:0px !important;}
	
    
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
                    <form action="/search">
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

    <!-- 카테고리/ 태그 -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
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

                       

                        <table>
                            <tr>
                                <p>
									${detail.board_content}
                                </p>
                                <p>#태그</p>
                            </tr>
                        </table>

                    

              
                   
                        댓글  <input id="comment" type="text">
                        <button id="Input">등록</button>
                  
                   

                    <br>
						 <table align="center" width="500" id="rtb">
							<thead>
								<td colspan="4"><b id="rCount">댓글목록</b></td>
							</thead>
							<tbody>
							</tbody>
						</table>
					</br>
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
							        <td>${item.board_id}</td>
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
    <script type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <%--  <script>
        $(document).ready(function () {
            $('#carouselExampleControls').carousel();
        });
    </script>
   --%>
  <script>


  $(document).ready(function() {
      getComment();
  });
  
	function getComment(){
		let board_id = "${detail.board_id}";
		console.log(board_id)
		$.ajax({
			url : "GetComment.do",
			data : {
				"board_id" :board_id 
			},
			type : "get",
			dataType : 'json',
			success : function(res){
				console.log(res)
			
				var $tablebody = $('#rtb tbody')
				console.log("테이블 바디",$tablebody)
				$tablebody.html('') // 댓글 목록 창을 초기화 
				$('rCount').text("댓글 ("+res.length+")") // 댓글 갯수 출력
				if (res != null){
					for(var i in res){
						var $tr = $("<tr>");
						var $rWriter = $("<td width='100'>").text(
								res[i].user_id);
						var $rContent = $("<td>").text(
								res[i].board_comment);
						var $rCreatDate = $("<td width='100'>").text(
								res[i].write_date);

						$tr.append($rWriter);
						$tr.append($rContent);
						$tr.append($rCreatDate);
						$tablebody.append($tr);
					
						}
				}
			},error : function(){
				console.log('에러')
			}
			
		})
	};
	</script>
  
 <script>
    $(document).ready(function(){
    	$(document).on('click','#Input',function(){
    		let board_comment = $("#comment").val();
    		let user_id = "${member.user_id}"
    		let board_id = "${detail.board_id}"
    		console.log(board_comment)
    		console.log(user_id)
    		console.log(board_id)
    		
    		$.ajax({
    			url : "Comment.do",
    			data : {
    					"board_comment" : board_comment,
    					"user_id" : user_id,
    					"board_id" : board_id
    			},
    			type : "post",
    			success : function(res){
    					if (res == "success"){
    						
    					}
    						alert("등록성공")
    				}
    				$("#comment").val(''); // 댓글 등록 후 등록창 초기화하는 구문
    					
    						// 필요한 정보는 board_id 만 있으면 그에 해당하는 댓글 내용과 user_id 를 가져올 수 있을 듯 
    				
    			},
    			error : function (){
    				alert("등록실패")
    			}
    			
    			});
    	})
    	
     });
    </script>

	
</body>

</html>