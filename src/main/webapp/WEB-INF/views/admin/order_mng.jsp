<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/admin/order_mng.css">
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
            	<%@ include file="admin_aside.jsp" %>
            </div>

            <div class="mainbox">
                <div class="purchase">
                    <h4>주문 현황</h4>
                    <hr style="border: solid black 2px;">
                </div>
                <div class="page_name">
                    <input type="date" name="log_date" class="log_date">

                    <select class="category" name="category">
                        <option value="카테고리" selected="selected">카테고리</option>                        
                        <option value="상품명">상품명</option>
                        <option value="주문번호">주문번호</option>
                        <option value="회원아이디">회원아이디</option>
                      </select>
                    <input type="text" name="검색" id="search">
                    <input type="submit" id="btn" value="검색">
                </div>
                <div class="log_table">
                    <hr>
                    <table>
                        <tr>
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>내역</th>
                            <th>회원아이디</th>
                            <th>회원 이메일</th>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>취소<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>구매<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>취소<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>구매<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>취소<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>구매<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>취소<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                        <tr>
                            <td>12321</td>
                            <td>밥그릇</td>
                            <td>
                                <p>구매<br> 2021-03-03</p>
                            </td>
                            <td>hoogun30</td>
                            <td>hoogun30@naver.com</td>
                        </tr>
                    </table>
                    <div class="more">
                        <input type="button" class="moreBtn" value="더보기">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript">
    $(document).ready(function() {
        $('.aside').load("admin_aside.html");
    });
</script>

<script type="text/javascript" src="/js/search.js"></script>

</html>