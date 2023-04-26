<!DOCTYPE html>
<html lang="zxx">

<style>
    /* 전체 스타일 */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      
    }

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
        <title>마이페이지상세(판매/구매내역)</title>

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
</head>

<body>
   

   <br><br><br><br>
        <br><br><br><br>
        <!-- 판매내역 -->
        <div class="container">
            <div class="col-lg-12">
                <form action="마이상세(판매).jsp">
                    <td><h4 style="text-align:center;">구매내역✔</h4></td>
                    <table></table>
                    <table class="table table-bordered">
                        <thead class="table-warning">


                            <tr>
                                <td>날짜</td>
                                <td>상품명</td>
                                <td>구판매자</td>
                                <td>판매금액</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                            <tr>
                                <td>DB에서 날짜</td>
                                <td>DB에서 상품명</td>
                                <td>DB에서 판매자</td>
                                <td>DB에서 판매금액</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                              <th colspan="3" style="text-align:end;">합계 : </th>
                              <td style="text-align:left;">2,000,000원</td>
                            </tr>
                          </tfoot>
                    </table>
                </table>
                </form>
                <br><br>
            </div>
        </div>
        
        <br><br><br><br>








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