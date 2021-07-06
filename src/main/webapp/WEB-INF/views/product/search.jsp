<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/product/search.css">

    <link href="https://fonts.googleapis.com/css2?family=Handlee&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <header id="header">
         <%@ include file= "../header/header.jsp" %>
    </header>
    <!-- /* -----------------메인영역--------------------- */ -->

    <div class="main">
        <!-- /* -----------------최신순.인기순.가격순--------------------- */ -->
    <div class="list">
        <h6><a href="#">가격순</a></h6>&nbsp|&nbsp<h6><a href="#">최신순</a></h6>&nbsp|&nbsp<h6><a
                href="#">인기순</a></h6>
    </div>

    <!-- /* -----------------메인영역(검색화면)--------------------- */ -->

        <section class="pronav">
            <div class="name">
                <a href="#"><h1>강아지용품</h1></a>
                <a href="#"><h1>고양이용품</h1></a>
                <a href="#" active><h1>영양제</h1></a>
                <a href="#"><h1>간식</h1></a>
            </div>
            <form action="" method="GET">
                <div class="probxs">
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="probxs">
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                    <div class="probx">
                        <a href="#">
                            <img src="/img/a.jpg" alt="a">
                            <h1>계면활성제 무첨가 귀세정제</h1>
                            <div class="price">
                                <h4>12,000원</h4>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="next">
                    <ul>
                        <li><a href="#"><i class="fas fa-angle-double-left"></i>&nbsp;</a></li>
                        <li><a href="#"><i class="fas fa-angle-left"></i></a></li>
                        <li>&nbsp<a href="#" class="num"> [1]</a>&nbsp </li>
                        <li><a href="#" class="num"> [2]</a>&nbsp</li>
                        <li><a href="#" class="num"> [3]</a>&nbsp</li>
                        <li><a href="#" class="num"> [4]</a>&nbsp</li>
                        <li><a href="#" class="num"> [5]</a> &nbsp</li>
                        <li><a href="#"><i class="fas fa-angle-right"></i>&nbsp</a></li>
                        <li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
                    </ul>
                </div>
            </form>
        </section>
    </div>

    <script type="text/javascript" src="/js/search.js"></script>
    
</body>

</html>