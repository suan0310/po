<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="ko">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" href="/css/product/search.css">

			<link href="https://fonts.googleapis.com/css2?family=Handlee&display=swap" rel="stylesheet">
			<script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
			<title>Document</title>
		</head>

		<body>
			<header id="header">
				<%@ include file="../header/header.jsp" %>
			</header>
			<!-- /* -----------------메인영역--------------------- */ -->
			<div class="nope"></div>
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
					<ul>
							<li class="drop-down"><span>강아지</span>
								<ul >
									<li><a href="/product/searchPage?subCategory=101&page=1 ">용품</a></li>
									<li><a href="/product/searchPage?subCategory=102&page=1 ">의류</a></li>
								</ul>
							</li>
							<li class="drop-down"><span>고양이</span>
								<ul >
									<li><a href="/product/searchPage?subCategory=201&page=1 ">용품</a></li>
									<li><a href="/product/searchPage?subCategory=202&page=1">의류</a></li>
								</ul>
							</li>
							<li><a href="/product/searchPage?subCategory=301&page=1 ">사료</a></li>
							<li><a href="/product/searchPage?subCategory=401&page=1 ">간식</a></li>
						</ul>
						
					</div>
					<c:forEach items="${list}" var="row" varStatus="status">
						<c:if test="${status.index == 0 }">
							<c:set var="sbc" value="${row.subCategory}" />
						</c:if>
						<c:if test="${status.index %3==0 }">
							<div class="probxs">
						</c:if>
						<div class="probx">
							<a href="/productdetail?productNo=${row.productNo}"> <img src="${row.productImg1}" alt="a">
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
							<div class="pager">
					<ul>
						<c:if test="${pg.prev}">
							<li><a href="/product/searchPage?subCategory=${sbc}&page=${pg.startPage-1}">이전</a></li>
						</c:if>

						<c:forEach begin="${pg.startPage}" end="${pg.endPage}" var="idx">
							<li><a href="/product/searchPage?subCategory=${sbc}&page=${idx}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pg.next && pg.endPage > 0}">
							<li><a href="/product/searchPage?subCategory=${sbc}&page=${pg.startPage+1}">다음</a></li>
						</c:if>
					</ul>
				</div>


			<script type="text/javascript" src="/js/search.js"></script>
			<script>
				function selChange() {
					var sel = document.getElementById('cntPerPage').value;
					location.href = "searchPage?c=${row.sub_category}&nowPage=${paging.nowPage}&cntPerPage="
						+ sel;
				}
			</script>
		</body>

		</html>