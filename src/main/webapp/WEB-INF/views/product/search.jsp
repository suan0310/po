<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/product/search.css?">

<link
	href="https://fonts.googleapis.com/css2?family=Handlee&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<title>Document</title>
</head>

<body>
	<header id="header">
		<%@ include file="../header/header.jsp"%>
	</header>
	<!-- /* -----------------메인영역--------------------- */ -->

	<div class="main">
		<!-- /* -----------------최신순.인기순.가격순--------------------- */ -->
		<div class="list">
			<h6>
				<a href="#">가격순</a>
			</h6>
			&nbsp|&nbsp
			<h6>
				<a href="#">최신순</a>
			</h6>
			&nbsp|&nbsp
			<h6>
				<a href="#">인기순</a>
			</h6>
		</div>

		<!-- /* -----------------메인영역(검색화면)--------------------- */ -->

		<div class="pronav">
			<div class="categorywrap">
				<ul class="dep1">
					<li>강아지
						<ul class="dep2">
							<li><a href="/product/search?c=101">용품</a></li>
							<li><a href="/product/search?c=102">의류</a></li>
						</ul></li>
					<li>고양이
						<ul class="dep2">
							<li><a href="/product/search?c=201">용품</a></li>
							<li><a href="/product/search?c=202">의류</a></li>
						</ul></li>
					<li><a href="/product/search?c=3">사료</a></li>
					<li><a href="/product/search?c=4">간식</a></li>
				</ul>
			</div>
			<form action="" method="GET">

				<c:forEach items="${list}" var="row" varStatus="status">
					<c:if test="${status.index %3==0 }">
						<div class="probxs">
					</c:if>

					<div class="probx">
						<a href="/product/detail?productNo=${row.productNo}"> <img src="/img/a.jpg" alt="a">
							<h1>${row.productName }</h1>
							<div class="price">
								<h4>${row.productPrice }원</h4>
							</div>
						</a>
					</div>

					<c:if test="${status.index %3==2 }">
		</div>
		</c:if>
		</c:forEach>




		

	</div>
	<div class="next">
			<ul>
				<li><a href="#"><i class="fas fa-angle-double-left"></i>&nbsp;</a></li>
				<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
				<li>&nbsp<a href="#" class="num"> [1]</a>&nbsp
				</li>
				<li><a href="#" class="num"> [2]</a>&nbsp</li>
				<li><a href="#" class="num"> [3]</a>&nbsp</li>
				<li><a href="#" class="num"> [4]</a>&nbsp</li>
				<li><a href="#" class="num"> [5]</a> &nbsp</li>
				<li><a href="#"><i class="fas fa-angle-right"></i>&nbsp</a></li>
				<li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
			</ul>
		</div>

	<script type="text/javascript" src="/js/search.js"></script>

</body>

</html>