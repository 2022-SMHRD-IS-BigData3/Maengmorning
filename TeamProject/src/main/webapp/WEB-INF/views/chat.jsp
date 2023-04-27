<!DOCTYPE html>
<html lang="zxx">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채팅</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<style>
 

    #chat-container {
        border: 2px solid rgb(189, 185, 174);
        height: 320px;
        width: 400px;
        overflow-y: scroll;
        padding: 10px;
    }
    
    .message {
        background-color: #f2f2f2;
        border-radius: 5px;
        margin-bottom: 10px;
        padding: 5px;
    }

    .sender {
        font-weight: bold;
    }

    .timestamp {
        color: gray;
        font-size: 0.8em;
        margin-left: 10px;
    }

    .text {
        margin-top: 5px;
    }

    /* 채팅 */
    .chat-message.sent .chat-message-bubble {
        background-color: rgb(189, 185, 174);
        color: #fff;

    }

    .chat-message.sent .chat-message-time {
        color: #fff;
    }

    .chat-message.received .chat-message-bubble {
        background-color: #f5f5f5;
        color: #333333;
    }

    .chat-message-received .chat-message-time {
        color: #999999;
    }


    .chat-message {
        display: flex;
        margin-bottom: 10px;
    }

    .chat-message-avatar {
        width: 50px;
        height: 50px;
        margin-right: 10px;
        border-radius: 50%;
        overflow: hidden;
    }

    .chat-message-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .chat-message-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .chat-message-bubble {
        background-color: #ebebeb;
        border-radius: 10px;
        padding: 10px 30px;
        max-width: 70%;
        text-align: end;
    }

    .chat-message-text {
        font-size: 14px;
        line-height: 1.5;
    }

    .chat-message-time {
        font-size: 12px;
        color: #999999;
        margin-top: 5px;
    }
    
    div>.col2{
        font-size: 12px;
        color: #999999;
        margin-top: 5px;
    }

    /* 채팅창 길이 */
    .chat-input input[type="text"] {
    width: 88%}
    
   form {
        border: 2px solid rgb(189, 185, 174);
        width: 410px;
        background-color: rgb(189, 185, 174);
        padding: 5px;
    } 

    .col {
        border: 2px solid rgb(189, 185, 174);
        width: 410px;
        background-color: rgb(189, 185, 174);
        padding: 5px;
    }

    button {
        color: antiquewhite;
        background-color: rgb(189, 185, 174);
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
    
      <div id="chat-container" style="margin-top: 5px;">
   
        <div class="chat-message sent">
            <div class="chat-message-avatar">
                <img src="images.jpg">
            </div>
            <div class="chat-message-content">
                <div class="chat-message-bubble">
                    <div class="chat-message-text">
                        애옹
                    </div>
                    <div class="chat-message-time">
                        오후 7 :23
                    </div>
                </div>
            </div>
        </div>
        <div class="chat-message received">
            <div class="chat-message-avatar">
                <img src="집가고싶다">
            </div>
            <div class="chat-message-content">
                <div class="chat-message-bubble">
                    <div class="chat-message-text">
                        멍멍
                    </div>
                    <div class="chat-message-time">
                        오후 7:45
                    </div>
                </div>
            </div>
        </div>
        <div class="chat-message sent">
            <div class="chat-message-avatar">
                <img src="images.jpg">
            </div>
            <div class="chat-message-content">
                <div class="chat-message-bubble">
                    <div class="chat-message-text">
                        우~애에옹!
                    </div>
                    <div class="chat-message-time">
                        오후 8:00
                    </div>
                </div>
            </div>
        </div>
    
        <div class="chat-message received">
            <div class="chat-message-avatar">
                <img src="강아지.png">
            </div>
            <div class="chat-message-content">
                <div class="chat-message-bubble">
                    <div class="chat-message-text">
                        왈!왈!
                    </div>
                    <div class="chat-message-time">
                        오후 7:45
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <div class="chat-input" style="margin-top: 5px;">
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