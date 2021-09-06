# po

반려동물 쇼핑몰입니다.    

## ◖사용기술◗   
   
◦spring framework 5.x   
◦oracle 11g, mybatis   
◦vscode, html, css, jquery, ajax   
◦apache tomcat 8.5   
◦git   

## ◖개발기간◗   
21.06.28~21.08.02

## ◖참여인원◗   
6명

## ◖ERD◗ 
![image](https://user-images.githubusercontent.com/80302803/129681916-96d11bb0-955c-46bb-8f1a-49886719e07b.png)

## ◖담당파트◗   
◦유저   
 사이드바   
 회원정보 및 비밀번호 변경   
 나의활동   
 구매내역   
◦로그인   
 소셜로그인(구글)   
 세션처리
 
## ◖담당화면 및 기능◗   
◦유저   
 사이드바   
 ![side](https://user-images.githubusercontent.com/80302803/129681127-de7df152-af79-438e-9e26-dcd3fbfedb37.png)

 회원정보 및 비밀번호 변경   
 ![info](https://user-images.githubusercontent.com/80302803/129681252-7b7697b4-21cc-4c5f-ab58-576234bd5679.png)
* 영문, 숫자, 특수문자를 모두 사용하여야 변경가능
* Mybatis 쿼리문으로 동일 비밀번호 유무 확인
* JS 기능을 통해 비밀번호 재확인 여부 확인 및 동일 유무 alert창으로 표현 
 나의활동   
![mylog](https://user-images.githubusercontent.com/80302803/129999023-b677f414-69e2-4a71-9613-79784f500017.png)
* 회원정보 List를 이용하여 문의와 리뷰내역을 각각 받아오도록 설정
* JSTL을 이용해 날짜 설정 기준날 이후 내용 표시

 구매내역   
 ![buy](https://user-images.githubusercontent.com/80302803/129681294-a2c30559-9a92-4df3-a3f4-254a5e6e7fed.png)
* 구매내역 회원이 구매한 구매목록 처리, 가장 최근 구매상품이 최상단에 위치
* 구매내역 상품 취소 여부 체크 후 관리자 확인여부에 따라 변동
* 배송현황 조회 해당제품 주문 상세 클릭 시 주문에 대한 정보 및 배송현황 팝업출력   

◦로그인   
 소셜로그인(구글)   
![login](https://user-images.githubusercontent.com/80302803/129681372-a231f0da-aad9-4d59-97f1-984dcdd560b1.png)

* 해당 소셜 로그인 이미지 클릭시 각 주체의 로그인 및 로그인 처리
* 로그인 이메일을 데이터로 받아 DB에 저장
