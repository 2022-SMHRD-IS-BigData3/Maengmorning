<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="kr.mang.model.ProductlistVO"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    h3 {
    	text-align: center;
    }

  </style>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>관련커뮤니티</title>

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
   

   <br><br><br>
        
        <div class="container">
            <div class="col-lg-12">
                   <table class="Community">
                                <h3>관련커뮤니티글</h3>
                                <br>
                            <tr class="CommunityTitle">
                                <th>글번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                            </tr>
                           
                            <tbody>
                            
							<jsp:useBean id="list" class="java.util.ArrayList" scope="request" />
								<c:forEach var="product" items="${list}">
								<tr>
								  <td>${product.items_id}</td>
								  <td>${product.title}</td>
								  <td>${product.user_id}</td>
								</tr>
								</c:forEach>
							</tbody>
                            </table>
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