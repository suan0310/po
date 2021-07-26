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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Document</title>
</head>

<body>
	<div class="background">

		<!-- 메뉴바 -->
		<header>
			<%@ include file="../header/header.jsp"%>
		</header>

		<div class="main">
			<div class="aside">
				<%@ include file="user_aside.jsp"%>
			</div>

			<div class="mainbox">
				<div class="orderbx">
					<h4 class="name3">장바구니</h4>
					<table class="order">
						<tr>

							<th colspan="2" style="border-left: hidden;">제품정보</th>
							<th style="width: 150px;">수량</th>
							<th style="width: 250px;">결제금액</th>
							<th style="width: 150px;">문의</th>
							<th style="width: 150px; border-right: hidden;">제품선택<input
								id="allCheck" type="checkbox" name="allCheck" /></th>
						</tr>
						<form  name="cart">
							<c:forEach items="${cart}" var="cart">
							
								<tr>
									<td style="border-left: hidden" align=right><img
										src="${cart.productImg1 }" alt="a" width="120px" height="120px"></td>
									<td style="border-left: hidden" align="left">
										<h3>제품명 : ${cart.productName}</h3>
										<h3>사이즈 : ${cart.productSize} 컬러 : ${cart.productColor}</h3>
										<h4>가격:${cart.productPrice}원</h4>
									</td>
									<td align=center>${cart.quantity}</td>

									<td align=center>
										<h1>${cart.quantity*cart.productPrice}원</h1>
									</td>
									<td align=center><a
										href="/productdetail?productNo=${cart.productNo}">문의</a></td>
									<td align=center style="border-right: hidden"><input class="RowCheck"
										type="checkbox" name="RowCheck" value="${cart.productNo }">
									</td>
								</tr>
							</c:forEach>
					</table>
					
					<!--                     <input id="purchaseBtn" type="button" value="모두결제"> -->
					<input id="purchaseBtn"  type="button"  class="delete" value="삭제하기" onclick= "selDelete()" > 
					<input id="purchaseBtn" type="button" class ="order" value="선택상품 결제" onclick="selOrder()">
					</form>
					
					
				</div>
			</div>
		</div>
	</div>
</body>





<script type="text/javascript" src="/js/search.js"></script>
<script type="text/javascript" src="/js/cart.js"></script>
</html>