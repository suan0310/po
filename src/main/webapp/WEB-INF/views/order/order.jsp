<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/css/order/order.css">
<link
	href="https://fonts.googleapis.com/css2?family=Handlee&family=Jua&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Document</title>
</head>

<body>
	<header>
		<%@ include file="../header/header.jsp"%>
	</header>

	<div class="main">
		<!-- /* -----------------메인영역(주문하기)--------------------- */ -->
		<form action="/order/order" method="post">
			<div class="orderbx">
				<h1 class="title">주문하기</h1>
					<div>
						<h4 class="name">주문제품 정보</h4>
						<table class="order">
							<tr>
								<th colspan="2" style="border-left: hidden">제품정보</th>
								<th style="width: 100px;">수량</th>
								<th style="width: 100px;">상품금액</th>
								<th style="border-right: hidden">결제금액</th>
							</tr>
							<c:set var="odp" value ="0"/>
							<c:forEach items="${order}" var="cart" varStatus="stauts">
							<c:set var="price" value="${cart.productPrice}" />
							<c:set var="quantity" value="${cart.quantity}" />
							<tr>
								<td style="border-left: hidden" align=right><img
									src="${cart.productImg1}" alt="a" width="120px" height="120px"></td>
								<td style="border-left: hidden" align="left">
									<input type="hidden" name="productNo" value="${cart.productNo}">
									<h2 >${cart.productName }</h2>
									<h2><input type="hidden" name="orderSize" value="${cart.productSize}">
									 사이즈 : ${cart.productSize}  </h2>
									<h2><input type="hidden" name="orderColor" value="${cart.productColor}">
									 컬러 : ${cart.productColor} </h2>
								</td>
								<td align=center><input type="hidden" name="orderQty" value="${cart.quantity}">${cart.quantity}개</td>
								<td align=center  >${cart.productPrice}원</td>
								<td style="border-right: hidden" align=center >
									<h1><input type="hidden" name="orderPrice" value="${cart.productPrice*cart.quantity}"/> ${cart.productPrice*cart.quantity}원</h1>
									
								</td>
								<c:set var="odp" value="${odp+(cart.productPrice*cart.quantity) }"/>
							</tr>
							
							
							</c:forEach>



						</table>
					</div>
			</div>


			<!-- /* -----------------메인영역(배송)--------------------- */ -->

			<div class="postbx">

				<div>
					<h4 class="name">배송 정보</h4>
					<table class="post">
						<tr>
							<th>받는분</th>
							<td colspan="2"><input type="text" name="addrReceiver"
								placeholder="이름을 입력해주세요"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="2"><input type="text" name="zipcode"
								id="sample6_postcode" placeholder="우편번호"> <input
								type="button" onclick="sample6_execDaumPostcode()"
								value="우편번호 찾기" style="width: 150px;"></td>

						</tr>
						<tr>
							<td></td>
							<td><input type="text" name="addr" id="sample6_address"
								placeholder="주소"> <input type="text" name="addrDetail"
								id="sample6_detailAddress" placeholder="상세주소"
								style="width: 330px;"></td>
						</tr>
						<tr>
							<th>휴대전화</th>
							<td colspan="2"><select id="phone"
								style="width: 100px; height: 30px;">
									<option value="010">&nbsp 010</option>
									<option value="020">&nbsp 020</option>
									<option value="070">&nbsp 070</option>
							</select> - <input type="dropbox" name="tel" ></td>
						</tr>
						<tr>
							<th>배송지 요청사항</th>
							<td colspan="2">
								<input type="text" name="addrRequest" placeholder="조심히 배달해주세요">
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="2">
								<p>
									- 배송기간은 출고일을 기준으로 하여 1~3일(근무일 기준) 안에 배송됩니다.<br> &nbsp; 단
									지역 및 상황에 따라 배송일이 변경될 수 있습니다.
								</p>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- /* -----------------결제영역(배송)--------------------- */ -->
			<div class="paybx">
				<table class="pay">
					<tr>
						<td>
							<h1>총 주문금액</h1>
						</td>
						<td>
							<h2>주문금액</h2>
						</td>
						<td>
							<h2><c:out value="${odp}"/> 원</h2>
						</td>
					</tr>
					<tr>
						<td>
							<h1></h1>
						</td>
						<td style="border-bottom: 3px dotted black; padding-bottom: 40px;">
							<h2>배송비</h2>
						</td>
						<td style="border-bottom: 3px dotted black; padding-bottom: 40px;">
							<h2>2500원</h2>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<h1 style="padding-left: 0px; padding-top: 5%;">최종결제금액</h1>
						</td>
						<td>
							<h1>
								<c:out value="${odp+2500}"/> 원
							</h1>
						</td>
					</tr>
				</table>
			</div>

			<div class="hpay">
				
				<input type="submit"  value="결제하기" class="npay"> 
				
			</div>
		</form>
	</div>
	
	<input type="button"  value="취소하기" class="cancel"> 	
	<input	type="button"  value="kakaopay" class="kpay">


	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							var addr = ''; // 주소 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;

							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>
	<script type="text/javascript" src="/js/search.js"></script>
</body>

</html>