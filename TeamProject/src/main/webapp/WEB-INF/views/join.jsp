<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

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
    
<style>
  
 </style>
</head>

<body>
   
    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        <form action="./Gologin.do" method = "post">
                            <div class="group-input">
                                <label for="username">이름</label>
                                <input type="text" id="name" name ="name">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">전화번호</label>
                                <input type="text" id="tel" name= "tel">
                            </div>
                            <div class="group-input">
                                <label for="username">사용하실 아이디</label>
                                <input type="text" id="id" name = "user_id">
                            </div>
                            <div class="group-input">
                                <label for="pass">사용하실 비밀번호</label>
                                <input type="password" id="pw" name = "pw">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">비밀번호 확인</label>
                                <input type="password" id="pw">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">사용하실 닉네임</label>
                                <input type="text" id="nickName" name ="nickName">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">거래희망 지역</label>
                                <input type="text" id="area" name = "area">
                            </div>
                            <button type="submit" class="site-btn register-btn">회원가입</button>
                        </form>
                        <div class="switch-login">
                            <a href="./Gologin.do" class="or-login">로그인</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    


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