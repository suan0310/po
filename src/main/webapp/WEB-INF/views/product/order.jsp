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

	<h1>오더페이지</h1>
<!-- 
아이디 : ${id} <br>
사이즈: ${productSize}
컬러: ${productColor}
 -->
 
 ${order.id}
 ${order.productSize}
 ${order.productColor}
개수 : ${order.quantity}
가격(개별) : ${order.productPrice}
상품번호: ${order.productNo}
 
 

</body>
</html>