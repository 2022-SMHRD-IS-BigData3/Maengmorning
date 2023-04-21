<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .message-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            padding: 30px;
            border-radius: 5px;

            width: 80%;
            max-width: 450px;
        }

        label {
            display: block;
            margin-bottom: 15px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            display: block;
            width: 85%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        textarea {
            height: 150px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
</head>
		<body>
		    <div class="message-container">
		        <form>
		            <label for="recipient">받는 사람:</label>
		            <input type="text" id="recipient" name="recipient">
		            <label for="subject">제목:</label>
		            <input type="text" id="subject" name="subject">
		            <label for="message">내용:</label>
		            <textarea id="message" name="message"></textarea>
		            <button type="submit">보내기</button>
		        </form>
		    </div>
		</body>
</html>