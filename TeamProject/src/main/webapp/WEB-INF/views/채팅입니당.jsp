<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채팅</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    
    </head>

<style>
    /* 상단테두리 */
    .col {
        border: 2px solid rgb(189, 185, 174);
        width: 410px;
        background-color: rgb(189, 185, 174);
        padding: 5px;
    }

    /* 1시간전활동 */
    div>.col2 {
        font-size: 12px;
        color: #999999;
        margin-top: 5px;
    }

    /* 채팅화면테두리 */
    #chat-container {
        border: 2px solid rgb(189, 185, 174);
        height: 320px;
        width: 410px;
        overflow-y: scroll;
        padding: 10px;
    }

    /* 텍스트창 길이 */
    .chat-input input[type="text"] {
        width: 88%
    }

    /* 텍스트창테두리 */
    form {
        border: 2px solid rgb(189, 185, 174);
        width: 410px;
        background-color: rgb(189, 185, 174);
        padding: 5px;
    }

    /* 전송버튼 효과 */
    button {
        color: antiquewhite;
        background-color: rgb(189, 185, 174);
    }

    /* 이 아래는 모양잡아주는거니까 굳이 건들지마셈 */
    * {
        padding: 30;
        /* 텍스트창 */
        margin: 10;
        /* 모서리떼주는거 */
        box-sizing: border-box;
    }
    .chat {
        display: flex;
        align-items: flex-start;
        padding: 20px; /* 말풍선 위 아래 사이 간격 */
    }
    .textbox {
        position: relative;
        display: inline-block;
        max-width: calc(100% - 70px);
        padding: 10px;
        margin-top: 7px;
        font-size: 13px;
        border-radius: 10px;
    }
   .chat .icon {
        position: relative;
        overflow: hidden;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background-color: #eee;
    }
    .textbox::before {
        position: absolute;
        display: block;
        top: 0;
        font-size: 1.5rem;
    }
    .wrap .ch1 .textbox {
        margin-left: 20px;
        background-color: #ddd;
    }

    /* 말풍선꼬리왼쪽 */
    .wrap .ch1 .textbox::before {
        left: -15px;
        content: "◀";
        color: #ddd;
    }

    /* 말픙선 오른쪽으로 */
    .wrap .ch2 {
        flex-direction: row-reverse;
    }

    /* 말풍선 */
    .wrap .ch2 .textbox {
        margin-right: 20px;
        background-color: rgb(189, 185, 174);
    }

    /* 말풍선꼬리오른쪽 */
    .wrap .ch2 .textbox::before {
        right: -15px;
        content: "▶";
        color: rgb(189, 185, 174);
    }
</style>

<body>

    <div class="container text-center">
        <div class="row align-items-start">
            <div class="col">
                상대닉네임(아이디)
                <div class="col2">
                    1시간전활동
                </div>
            </div>

        </div>
    </div>

    <div id="chat-container" style="margin-top: 1px;">
        <div class="wrap">
            <!-- 파란 -->
            <div class="chat ch1">
                <div class="icon"><i class="fa-solid fa-user"></i></div>
                <div class="textbox">멍멍</div>
            </div>
            <div class="chat ch2">
                <div class="icon"><i class="fa-solid fa-user"></i></div>
                <div class="textbox">애옹</div>
            </div>
            <div class="chat ch1">
                <div class="icon"><i class="fa-solid fa-user"></i></div>
                <div class="textbox">멍멍</div>
            </div>
            <div class="chat ch2">
                <div class="icon"><i class="fa-solid fa-user"></i></div>
                <div class="textbox">카카오톡</div>
            </div>
        </div>


    </div>
    <div class="chat-input" style="margin-top: 1px;">
        <form>
            <input type="text" placeholder="메시지를 입력하세요...">
            <button type="submit">
                <span class="material-symbols-outlined" style="font-size: 1em; height: 1em;">
                    check_small
                </span>
            </button>
        </form>
    </div>
    </div>



    </div>
</body>

</html>