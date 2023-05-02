<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    table {
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        text-align: left;
        padding: 8px;
      }
      th {
        background-color: #e7ab3c;
        color: white;
      }
      tr:nth-child(even) {
        background-color: #f2f2f2;
      }
      tr:hover {
        background-color: #ddd;
      }
      h3 {
      	text-align: center;
        margin-bottom: 20px;
      }

 </style>
</head>
<body>
 <div class="container">
            <div class="col-lg-9">
                   <table class="Community">
                   <br>
                                <h3>관련커뮤니티글</h3>
                                <br>
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
                            <br><br>
            </div>
        </div>
</body>
</html>