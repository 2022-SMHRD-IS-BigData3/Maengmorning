<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>결제 페이지</title>
        <style>
            .product {
                display: flex;
                align-items: center;
            }

            .product img {
                margin-right: 10px;
            }

            .product span {
                display: block;
                margin-top: -55px;
            }

            span {
                font-size: 16px;
            }

            button {
                margin-top: 20px;
            }
        </style>
</head>

<body>
    <form>
        <h2>결제 하기</h2>
        <div class="product">
            <img src="https://media.bunjang.co.kr/product/221923672_1_1682168337_w100.jpg" alt="">
            <div>
                <span style="margin-bottom: -10px; margin-top: -25px;">상품명: iPhone 13(DB데이터)</span>
                <span style="margin-top: 20px;">가격: 1,000,000원(DB데이터)</span>
                <span style="margin-top: 10px;">판매자: 성영맘(DB데이터)</span>
            </div>
        </div>
        <h2>결제 정보 입력</h2>
        
        <label for="name">이름 : </label>
        <input type="text" id="name" name="name" required /><br />
        <br>
        
        <label for="tel">연락처 : </label>
        <input type="text" id="tel" name="tel" required /><br />
        <br>
        
        <label for="address">배송지 입력 : </label>
        <input type="text" id="address" name="address" required /><br />
        <br>
        
        <a> 입금할 계좌번호 : 123456789 농협 예금주 (포대기)</a>
        <br>
        
        <button type="submit">결제하기</button>
        <p>결제하기 눌렀을 때 이름, 연락처, 배송정보 저장</p>
    </form>
</body>

</html>