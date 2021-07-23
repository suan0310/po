<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>

	<table>
		<tr>
			<th>제품번호</th>
			<th>색상</th>
			<th>사이즈</th>
			<th>개수</th>
			<th>가격</th>
		</tr>
		<c:forEach items="${cart}" var="c">
			<tr>
				<td>${c.productNo}</td>
				<td>${c.productColor}</td>
				<td>${c.productSize}</td>
				<td>${c.quantity}</td>
				<td>${c.productPrice}</td>
			</tr>
		</c:forEach>

	</table>


</body>
</html>