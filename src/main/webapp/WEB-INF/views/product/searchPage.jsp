<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="ko">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" href="/css/product/search.css?ver=1">

			<link href="https://fonts.googleapis.com/css2?family=Handlee&display=swap" rel="stylesheet">
			<script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
			<script src="http://code.jquery.com/jquery-latest.js"></script>
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
					<c:choose>
						<c:when test="${pg.totalCount eq 0}">
							<div class="nosearch">
									<c:if test="${ccc eq null}">
									<h2>해당하는 상품이 없습니다.</h2>
									</c:if>
									<c:if test="${ccc ne null }">
									<h1 style="color:#badbf9">${ccc}</h1><h2>에 해당하는 상품이 없습니다.</h2>
									</c:if>									
							</div>
						</c:when>
					<c:otherwise>
					<c:forEach items="${list}" var="row" varStatus="status">
						<c:set var="action" value="${row.action }"/>
						<c:set var="sbc" value="${row.subCategory}" />
						<c:set var="sbd" value="${row.keyword}" />
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
				</c:otherwise>
				</c:choose>
			</div>
				<div class="pager">
					<ul>
						
						<c:if test="${pg.next && pg.endPage > 0}">
							<li><a href="javascript:alert('이전페이지가 없습니다.');"><</a></li>			
						</c:if>
						<c:if test="${pg.prev}">
							<li><a href="/product/searchPage?subCategory=${sbc}&page=${pg.startPage-1}&keyword=${ccc}"><</a></li>
						</c:if>
						
						
						
						<c:forEach begin="${pg.startPage}" end="${pg.endPage}" var="idx" varStatus="sta">
									<li>
										<a class = "text-${((pg.cri.page)==(pg.startPage+idx-1))? 'orange':''} text-bold"  href="/product/searchPage?subCategory=${sbc}&page=${idx}&keyword=${ccc}"><i class="fa">[${idx}]</i></a>
									</li>
							
						</c:forEach>
						
							
						
						<c:if test="${pg.next && pg.endPage > 0}">
							
							<li><a href="/product/searchPage?subCategory=${sbc}&page=${pg.endPage+1}&keyword=${ccc}">></a></li>			
						</c:if>
						<c:if test="${pg.prev}">
							<li><a href="javascript:alert('다음페이지가 없습니다.');">></a></li>			
						</c:if>
						

					</ul>
				</div>
	</div>
	
			<script type="text/javascript" src="/js/search.js"></script>
			<script>
				function selChange() {
					var sel = document.getElementById('cntPerPage').value;
					location.href = "searchPage?c=${row.sub_category}&nowPage=${paging.nowPage}&cntPerPage="+ sel;
				}
			</script>
			
			<div style="width: 100%; height: 50px;"></div>
			<%@ include file="../footer/footer.jsp"%>
		</body>

		</html>