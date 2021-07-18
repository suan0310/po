<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/admin/user_mng.css?ver=1">
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
                    <h4>회원 관리</h4>
                    <hr style="border: solid black 2px;">
                </div>
                <table>
                    <tr>
                        <th id="userid">회원아이디</th>
                        <th id="useremail">이메일</th>
                        <th id="management">관리</th>
                    </tr>
     
			<c:forEach var="userlist" items="${userlist}">
				 <form action="user_mng" method="post" onsubmit="return confirm('삭제하시겠습니까?');">
                    <tr>                      
                            <td ><input type="text" name="id" value="${userlist.id}" class="idinput" readonly/></td>
                            <td>${userlist.emailId}@${userlist.emailDomain}</td>
                            <td><input type="submit" value="삭제" class="deletbtn"></td>                      
                    </tr>
                      </form>
                    </c:forEach>          

                </table>
            </div>
        </div>
    </div>
</body>


<script type="text/javascript" src="/js/search.js"></script>

</html>