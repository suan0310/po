<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/board/notice_detail.css">
    <script>
        function btnS(){ 
            alert('게시글로 돌아갑니다.');
            location.href="notice.html";
        }
    </script>
    <title>Document</title>
</head>

<body>
    <div class="background">
        <header>
              <%@ include file= "../header/header.jsp" %>
        </header>
        <div class="main">
            <div class="post">
                <h2>게시판</h2>
                <hr color="#000000" size="5px"></br>
                <div class="postButton">
                <input type="button" value="Best FAQ" class="postSubject">
                <input type="button" value="고객정보" class="postSubject">
                </div>
            </div>
            <div class="postTitle">
                <h2>* 제목</h2>
                <input type="text" name="title" class="title" placeholder="제목을 입력해 주세요.">
            </div>
            <div class="postMain">
                <h2>* 내용</h2>
                <textarea placeholder="내용을 입력해 주세요."></textarea>
            </div>
            </br>
            <div class="buttonMenu">
                <input type="button" value="확인" class="button" onclick="javascript:btnS()">
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/js/search.js"></script>
</body>

</html>