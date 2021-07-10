<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/css/user/my_log.css">
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
                <div class="log">
                    <h4>나의 활동</h4>
                    <hr style="border: 2px black solid;">
                    <input type="date" id="log_date" name="log_date" value="2021-06-30">
                    <select id="select" name="select">
                        <option value="select">선택사항</option>
                        <option value="question">문의</option>
                        <option value="review">리뷰</option>
                    </select>
                    <input id="btn" type="button" value="검색">
                    <hr style="border: 1px #cfcfcf solid;">
                </div>
                <div class="log_table">
                    <table>
                        <tr>
                            <th id="table_date">작성일자</th>
                            <th id="table_select">선택사항</th>
                            <th id="table_content">작성내용</th>
                        </tr>
                        <tr>
                            <td>2021.06.01</td>
                            <td>문의</td>
                            <td><a href="#">어려워요</a></td>
                        </tr>
                        <tr>
                            <td>2021.05.03</td>
                            <td>리뷰</td>
                            <td>너무 어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.06.01</td>
                            <td>문의</td>
                            <td>어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.05.03</td>
                            <td>리뷰</td>
                            <td>너무 어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.06.01</td>
                            <td>문의</td>
                            <td>어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.05.03</td>
                            <td>리뷰</td>
                            <td>너무 어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.06.01</td>
                            <td>문의</td>
                            <td>어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.05.03</td>
                            <td>리뷰</td>
                            <td>너무 어려워요</td>
                        </tr>
                        <tr>
                            <td>2021.05.03</td>
                            <td>리뷰</td>
                            <td>너무 어려워요</td>
                        </tr>
                    </table>
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