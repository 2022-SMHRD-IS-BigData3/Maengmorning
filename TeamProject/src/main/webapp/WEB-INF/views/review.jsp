<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="zxx">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <meta charset="UTF-8">
            <meta name="description" content="Fashi Template">
            <meta name="keywords" content="Fashi, unica, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>리뷰</title>

    <style>
        /* 리뷰 영역 스타일링 */
        .reviews {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 3px solid #ccc;
            background-color: #ffffff;
        }

        .reviews h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .reviews ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .reviews li {
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 20px;
        }

        .user-img {
            border-radius: 40%;
            width: 50px;
            height: 50px;
        }


        #double {
            border: 10px double black;
        }


        h2,
        tr {
            /* 정렬 */
            text-align: center;
        }

        div.star-rating {
            width: 105px;
            color: #e7ab3c;
        }
    </style>

</head>

<body>

    <h2>review</h2>
    <div class="reviews">
        <ul>
            <li>

                <div class="review-user">
                    
                    <div class="star-rating">
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <!-- 하얀별 
                        <span class="star">&#9734;</span>-->
                    </div>
                    
                    <h3 class="user-name">정민규(als***)</h3>
                    <p class="review-date">2023년 4월 29일</p>
                
                </div>
                <p class="review-text">포대기 사이트를 통해서 싸게 구입해서 더 기분이 좋네요~~^^
                    감사합니다~~~~^^</p>
            </li>
            <li>
                <div class="review-user">
                    <div class="star-rating">
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                    </div>
                    <h3 class="user-name">이도연(eh***)</h3>
                    <p class="review-date">2023년 4월 29일</p>
                </div>
                <p class="review-text">포장을 꼼꼼하게 잘 해주셔서 감사합니다..빠른배송도 너무 감사드리구요...</p>
            </li>
            <li>
                <div class="review-user">
                    <div class="star-rating">
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                        <span class="star">&#9733;</span>
                    </div>
                    <h3 class="user-name">성영맘(aka***)</h3>
                    <p class="review-date">2023년 4월 28일</p>
                </div>
                <p class="review-text">꼼꼼하게 박스포장도 이중으로 해주시고...
                    넘 감사했습니다*^^*
                    가격도..한번에 흔쾌히 결정해주셔서 넘 감사했고요~~*^^*
                    정말 리더쉽동화..받아서 보니 책 상태도 너무 좋고...포장상태도 좋고...내용도 넘 좋네요^^
                    저희 딸이 너무 좋대요~~감사히 잘볼게요^^</p>
            </li>
            <!-- 추가적인 리뷰는 이곳에 작성 -->
        </ul>
    </div>


</body>

</html>