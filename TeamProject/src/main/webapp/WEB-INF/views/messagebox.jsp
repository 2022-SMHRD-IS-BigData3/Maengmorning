<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <title>쪽지 보관함</title>
    <style>
        ul.note-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        li.note-item {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        li.note-item:hover {
            background-color: #f5f5f5;
        }

        /* 쪽지 내용 디자인 */
        div.note-content {
            padding: 5px;
            border: 1px solid black;
            height: 150px;
        }

        div.note-content h3 {
            font-size: 18px;
            font-weight: bold;
            margin-top: 0;
        }

        div.note-content p {
            margin: 10px 0;
        }

        div.note-title {
            margin-top: 7px;
            margin-bottom: 7px;
        }
        div.note-info {
            margin-bottom: 7px;
        }
        button.search-btn:hover {
            background-color: #0062cc;
        }
        button.delete-btn {
            margin-top: 7px;
            background-color: lightgray;
        }
        button {
            background-color: #4CAF50;
            color: #fff;
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            font-size: 14px;
            cursor: pointer;
        }

        div.note-detail{
            margin-top: -15px;
        }

        div.ptag{
            margin-top: -15px;
        }
    </style>
</head>

<body>
    
    <div class="container">
        <ul class="note-list">
            <li class="note-item">

                <div class="note-title">닉네임 : DB에서 받아올 데이터(닉네임)</div>
                <div class="note-info">내용 : DB에서 받아올 데이터(내용)</div>
                <button class="delete-btn">삭제</button>
            </li>
            <li class="note-item">
                <div class="note-title">닉네임 : DB에서 받아올 데이터(닉네임)</div>
                <div class="note-info">내용 : DB에서 받아올 데이터(내용)</div>
                <button class="delete-btn">삭제</button>
            </li>
            <li class="note-item">
                <div class="note-title">닉네임 : DB에서 받아올 데이터(닉네임)</div>
                <div class="note-info">내용 : DB에서 받아올 데이터(내용)</div>
                <button class="delete-btn">삭제</button>
            </li>
        </ul>
        <div class="note-content">
            <h3>쪽지 제목</h3>
            <div class="note-detail">
                <p>닉네임 : DB에서 받아올 데이터(닉네임)</p>
                <p>받은 날짜 :  DB에서 받아올 데이터(날짜)</p>
                <p>내용 : 쪽지 상세 내용 </p>
            </div>
        </div>
    </div>
</body>

</html>