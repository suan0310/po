<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/user/cart.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>Document</title>
</head>

<body>
    <div class="background">

        <!-- 메뉴바 -->
        <header>
             <%@ include file= "../header/header.jsp" %>
        </header>

        <div class="main">
            <div class="aside">
            <%@ include file="user_aside.jsp" %>
            </div>

            <div class="mainbox">
                <div class="orderbx">
                    <h4 class="name3">장바구니</h4>
                    <table class="order">
                        <tr>

                            <th colspan="2" style="border-left : hidden;">제품정보</th>
                            <th style="width: 100px;">수량</th>
                            <th style="width: 150px;">결제금액</th>
                            <th style="width: 100px;">문의</th>
                            <th style="width: 100px; border-right: hidden;">제품선택</th>
                        </tr>
                        <tr>
                            <td style="border-left: hidden" align=right><img src="/img/bebe.png" alt="a" width="120px" height="120px"></td>
                            <td style="border-left: hidden" align="left">
                                <h3>강아지 장난감 종합선물세트</h2>
                                    <h4>50종 종합(제품명)</h2>
                                        <h3>사이즈: S</h2>
                                            <h2>8,000원</h1>
                            </td>
                            <td align=center>4개</td>

                            <td align=center>
                                <h1>32,000원</h1>
                            </td>
                            <td align=center>
                                <input id="purchaseBtn" type="button" value="문의">
                            </td>
                            <td align=center style=" border-right: hidden"><input type="checkbox" name="" id="">
                            </td>
                        </tr>
                        <tr>
                            <td style="border-left: hidden" align=right><img src="/img/bebe.png" alt="a" width="120px" height="120px"></td>
                            <td style="border-left: hidden" align="left">
                                <h3>강아지 장난감 종합선물세트</h2>
                                    <h4>50종 종합(제품명)</h2>
                                        <h3>사이즈: S</h2>
                                            <h2>8,000원</h1>
                            </td>
                            <td align=center>4개</td>

                            <td align=center>
                                <h1>32,000원</h1>
                            </td>
                            <td align=center>
                                <input id="purchaseBtn" type="button" value="문의">
                            </td>
                            <td align=center style=" border-right: hidden"><input type="checkbox" name="" id="">
                            </td>
                        </tr>
                        <tr>
                            <td style="border-left: hidden" align=right><img src="/img/bebe.png" alt="a" width="120px" height="120px"></td>
                            <td style="border-left: hidden" align="left">
                                <h3>강아지 장난감 종합선물세트</h2>
                                    <h4>50종 종합(제품명)</h2>
                                        <h3>사이즈: S</h2>
                                            <h2>8,000원</h1>
                            </td>
                            <td align=center>4개</td>

                            <td align=center>
                                <h1>32,000원</h1>
                            </td>
                            <td align=center>
                                <input id="purchaseBtn" type="button" value="문의">
                            </td>
                            <td align=center style=" border-right: hidden"><input type="checkbox" name="" id="">
                            </td>
                        </tr>


                    </table>
                    <input id="purchaseBtn" type="button" value="모두결제">
                    <input id="purchaseBtn" type="button" value="삭제하기">
                    <input id="purchaseBtn" type="button" value="선택상품 결제">


                </div>
            </div>
        </div>
    </div>
</body>



<script type="text/javascript">
    $(document).ready(function() {
        $('.aside').load("user_aside.html");
    });
</script>
<script type="text/javascript" src="/js/search.js"></script>

</html>