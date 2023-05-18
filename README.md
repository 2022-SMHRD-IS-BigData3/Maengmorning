# 👶🏻포대기(팀명 : 맹모닝)
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/2ed8d5a8-f106-4571-aff0-a5581b6ae5d8)

## 📎서비스 소개
－ 서비스 명： 유아용품 중고거래 사이트 <br>
－ 서비스 설명 ：<br>
타 중고거래 사이트와는 달리 중고 유아용품만을 판매 할 수 있게 하고, <br>
육아에 필요한 정보 및 물건에 대한 정보들을 서로 공유할 수 있는 커뮤니티를 개설하여<br>
판매자와 소비자가 서로 원하는 정보를 얻을 수 있도록 합니다.<br>


## 🗓️프로젝트기간
２０２３。０３。２１～２０２３。０５。０４（６주）<br>


## 🎖️주요기능
－ 기능１ ： 회원가입／로그인／로그아웃 <br>
－ 기능２ ： 중고거래/ 커뮤니티 사이트 목록(list) 출력 <br>
－ 기능３ ： 중고거래/ 커뮤니티 사이트 상세정보 화면 출력 <br>
－ 기능４ ： 중고거래/ 커뮤니티 글 등록하기 <br>
－ 기능５ ： 댓글기능 <br>

## 👾기술스택
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/abbe1a20-97e8-4410-b216-91379439741f)
<br>

## 시스템 아키텍처(구조)

## 유스케이스
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/92ff2942-7820-41a7-90e3-013a39bca9d4)

## 서비스 흐름도
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/f69abadd-7d66-4b77-99cb-62bb1126532a)

## ER 다이어그램
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/afbe9524-a5aa-4b54-8d69-a5d2cfefbc2b)

## 화면구성
- 로그인/회원가입
![image](https://github.com/2022-SMHRD-IS-BigData3/Maengmorning/assets/128571044/d117909b-a8ac-44d7-8378-117f91927c95)

- 메인페이지

- 중고거래
목록/물품상세정보/물품등록

- 커뮤니티
목록/커뮤니티상세/글등록

- 마이페이지
찜목록/판매구매목록/매너온도/사용자정보


## 팀원역할
## 🤾‍♂️ 트러블슈팅
문제1 - 매핑에 대한 문제<br>
문제2 - DB에 저장된 이미지 불러오기<br>
문제3 - 이미지 업로드 경로설정<br>
문제4 - 템플릿 CSS사용에 문제<br>

* 문제1<br>
 서블릿 자체에서는 한 개 이상의 매핑이 불가능 하기 때문에 두 개의 페이지를 나눠 모달창으로 각각 따로 출력 해줌<br>
* 문제2<br>
 저장할 때 DB에서 PK값과 시퀀스 값을 같게하여 이미지 불러옴<br>
 * 문제3<br>
 절대경로로 설정되 있는 값을 상대경로로 변경하여 해결<br>
 * 문제4<br>
 기존 템플릿에서 사용되는 css를 모두 지우고 부트스트랩 이용<br>
 



