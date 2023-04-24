<!DOCTYPE html>
<html lang="zxx">

<style>
    /* 전체 스타일 */
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    
    h2{background-color: 
    
    }

    /* 테이블 스타일 */
    table {
      width: 100%;
      border-collapse: collapse;
      border: 1px solid black;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
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
        <title>메인</title>

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
	


	<br>
    <h2><판매내역></h2>
    <table>
      <thead>
        <tr>
          <th>날짜</th>
          <th>상품명</th>
         
          <th>판매금액</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2022-01-01</td>
          <td>상품A</td>
        
          <td>500,000원</td>
        </tr>
        <tr>
          <td>2022-01-02</td>
          <td>상품B</td>
          
          <td>300,000원</td>
        </tr>
        <tr>
          <td>2022-01-03</td>
          <td>상품C</td>
         
          <td>200,000원</td>
        </tr>
        <tr>
          <td>2022-01-04</td>
          <td>상품D</td>
          
          <td>400,000원</td>
        </tr>
        <tr>
          <td>2022-01-05</td>
          <td>상품E</td>
          
          <td>600,000원</td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="2">합계</th>
         
          <td>2,000,000원</td>
        </tr>
      </tfoot>
    </table>
    

	<br>
	
	<h2> <구매내역> </h2>
    <table>
      <thead>
        <tr>
          <th>날짜</th>
           <th>판매자</th>
          <th>상품명</th>
          <th>구매금액</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2022-01-01</td>
          <td>판매자</td>
          <td>상품A</td>
          <td>500,000원</td>
        </tr>
        <tr>
          <td>2022-01-02</td>
		  <td>판매자</td>
          <td>상품B</td>
          <td>300,000원</td>
        </tr>
        <tr>
          <td>2022-01-03</td>
          <td>판매자</td>
          <td>상품C</td>
          <td>200,000원</td>
        </tr>
        <tr>
          <td>2022-01-04</td>
          <td>판매자</td>
          <td>상품D</td>
          <td>400,000원</td>
        </tr>
        <tr>
          <td>2022-01-05</td>
          <td>판매자</td>
          <td>상품E</td>
          <td>600,000원</td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <th colspan="3">합계</th>
          <td>2,000,000원</td>
        </tr>
      </tfoot>
    </table>

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    



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