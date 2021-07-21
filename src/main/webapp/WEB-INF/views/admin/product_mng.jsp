<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/admin/product_mng.css?ver=21">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
				<%@ include file="admin_aside.jsp"%>
			</div>

			<div class="mainbox" >
				<div class="purchase">
					<h4>재고 관리</h4>
					<hr style="border: solid black 2px;">
				</div>
				<form action="searchproduct" method="post" name="formcategory">
					<div class="log">
						<select id="mainCategory" name="mainCategory"
							onchange="itemChange()" required>
							<option value="">카테고리</option>
							<option value="1">강아지</option>
							<option value="2">고양이</option>
							<option value="3">사료</option>
							<option value="4">간식</option>
						</select> <select id="subCategory" name="subCategory" required>
							<option value="">분류 선택</option>
						</select> 
						<input id="searchWord" name="searchWord"> 
						<input class="button" id="search" type="submit" value="검색">
					</div>
				</form>
			
				<input id="delbtn" class="button" value="삭제" type="button" readonly>
				<div id="productmain" style="overflow:auto; height: 600px;">
					<div id="productlist" >
				<table id="manager">
					<tr>
						<th >선택</th>
						<th >품번</th>
						<th >상품명</th>
						<th>금액</th>
						<th >색상 / 사이즈 : 재고</th>
						<th>판매량</th>
					</tr>
				<table id="manager">
					<input type="hidden" value="${map.psVo.searchWord}" id="searchWordval">
					
					<c:forEach var="list" items="${map.productlist}" varStatus="st">
					<c:if test="${st.index ==0}">
					<form name="formproduct">
						<input type="hidden" value="${list.subCategory}" id="subCategoryval" name="subCategory">
						<input type="hidden" value="${list.mainCategory}" id="mainCategoryval">						
					</c:if>
						<tr>
							<td>
								<!-- 선택 -->
								<div class="productcheck">
									<input type="checkbox" value="${list.productNo}" name="checkproductno">
								</div>
							</td>
							<td>
								<!-- 상품 번호 -->
								<div class="productno" >${list.productNo}</div>
							</td>
							<td>
								<!-- 상품 이름 -->
								<div class="productname" >${list.productName}</div>
							</td>
							<td>
								<!-- 금액 -->
								<div class="price">${list.productPrice}</div>
							</td>
							<td id="option">						
								<c:forEach var="option" items="${map.optionlist}">	
									<c:if test="${list.productNo == option.productNo}">
										<div class="optionC">
											<div> ${option.productColor}</div>/<div>${option.productSize}</div>:<div>${option.productStock}</div>
										</div>
									</c:if>	
								</c:forEach>								
								</td>						
							<td>
								<!-- 판매량 -->
								<div class="saleamount">${list.productSales}</div>
							</td>

							</tr>
							<c:if test="${st.last}"></form></c:if>			
						</c:forEach>
						</table>
						</div>
						<div id="opdiv">
					<table id="optable">		
					<tr>
						<th width="50px">옵션추가</th>

					</tr>	
					<c:forEach var="list" items="${map.productlist}" varStatus="st">					
					<tr>												
							<td>
								<div>
									<button class="button" onclick="popup(${st.index})">옵션 추가</button>
								</div>
							</td>					
							</tr>
						</c:forEach>
					</table>	
					</div>						
				</table>
			</div>
			</div>
		</div>
	</div>

</body>
<script>
	function popup(num) {
		console.log(num);
		var productno = $(".productno").eq(num).text(); 
		console.log(productno);
		var productname = $(".productname").eq(num).text(); 
		console.log(productname);

		var url = "/admin/productMngOption?pno=" + productno + "&pname="
				+ productname;
		/*     var url="/admin/product_mng_option"; */
		var option = "width=600, height=600, top=400"
		window.open(url, "옵션선택", option).focus();
	}
</script>

<script type="text/javascript" src="/js/admin_product_mng.js?ver=4"></script>
<script type="text/javascript" src="/js/search.js"></script>

</html>