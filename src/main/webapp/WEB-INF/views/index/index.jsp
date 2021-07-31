<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/index/index.css?ver=1">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="/js/search.js"></script>
	<script type="text/javascript" src="/js/index.js"></script>
	
	
<title>Document</title>
</head>

<body>

	<header id="header">
		<%@ include file="../header/header.jsp"%>
	</header>

	<div class="main">
		<div class="slideName"	>
		<h1>신상품</h1>
		</div>
		<!-- /* -----------------메인영역(slide)--------------------- */ -->
		<div class="slide">	
		    <input type="radio" name="pos" id="pos1" checked>
		    <input type="radio" name="pos" id="pos2">
		    <input type="radio" name="pos" id="pos3">
    	<ul>
<%-- 		      <li><img src="${slide.productImg1}"/></li> --%>
		    <c:forEach items="${slide}" var="slide" >
		    <li><a href= "/productdetail?productNo=${slide.productNo}"><img class="slideImg" src="${slide.productImg1}"/></a></li>
		    </c:forEach>
    	</ul>
    <p class="bullet">
      <label for="pos1">1</label>
      <label for="pos2">2</label>
      <label for="pos3">3</label> 
    </p>
     
  </div>    
		<section class="Fsale">
			<h1 class="name">인기상품</h1>
			<c:forEach items="${Index}" var="row" varStatus="status">
				<c:if test="${status.index %3==0 }">
					<div class="Fbxs">
				</c:if>
				<div class="Fbx">
					<a href="/productdetail?productNo=${row.productNo}">
						<img src="${row.productImg1}" alt="a">
						<h1>${row.productName}</h1>
						<div class="price">
							<h4>${row.productPrice}원</h4>
						</div>
					</a>
				</div>
				<c:if test="${status.index %3==2 }">
					</div>
				</c:if>
			</c:forEach>

	</section>
	<!-- /* -----------------메인영역(베스트 리뷰)--------------------- */ -->
	<section class="review">
			<div class="rvname">
			
				<span class="namebox"><h1>베스트 리뷰</h1></span>
			</div>
				<c:forEach items="${rv}" var="rev" varStatus="status">
				<c:if test="${status.index %2==0 }">
				<div class="rvboxs">
				</c:if>
					<div class="rvbox right">
						<span><c:forEach begin="1" end="${rev.rvStar}">
							<i class="fa fa-star"></i>
						</c:forEach>
							<h3>${rev.rvStar}</h3> </span>
						<p>
							${rev.rvContent}
						</p>
					</div>
					<c:if test="${status.index %2==1 }">
						</div>
					</c:if>
				</c:forEach>
	</section>
	<%@ include file="../footer/footer.jsp"%>
	</div>	
	
</body>



</html>