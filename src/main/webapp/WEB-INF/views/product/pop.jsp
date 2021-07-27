<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<% String productNo=request.getParameter("productNo"); 
String qsNo=request.getParameter("qsNo"); 
String userid=request.getParameter("userid"); %>

		<!DOCTYPE html>
		<html lang="ko">

		<head>

			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" href="/css/product/detail.css?ver=1">
			<title>Document</title>
			<!--링크들-->
			<script src="http://code.jquery.com/jquery-latest.js"></script>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
			<!-- w3school css적용시 헤더부분 꺠짐 수정필요 -->
			<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

		</head>

		<body>
				<input type="hidden" id="userid" value="<%=userid%>" />

				<div id="request-popup-newclick" style=" position: relative; margin-left: 10px;  
				margin-top: 10px; height: 600px; background-color:#fff; width:550px;">
					<center>
						<h4>문의하기</h4>
						<!--(답변시)-->
					</center>

					<form name="Qna">
						<input type="hidden" name="productNo" id="productNo" value="<%=productNo%>" />
						<input type="hidden" name="qsNo" id="qsNo" value="<%=qsNo%>" />


						<c:forEach var="q" items="${qOne}">
							<div class="request-popup-write" style="position: absolute; left: 100px;">
								<br>제목 <br> <input type="text"  id="qsTitle" name="qsTitle" value="${q.qsTitle}"
									style="margin-top: 10px; width: 420px;"> <br> <br>내용
								<br>
								<textarea id="qsContent" name="qsContent" cols="50" rows="6" maxlength="200" readonly
									style="margin-top: 10px;">${q.qsContent} </textarea>
								<br> <br> 답변 <br>
								<textarea id="qsAnswer" name="qsAnswer" cols="50" rows="6" maxlength="200" readonly
									style="margin-top: 10px;">${q.qsAnswer}</textarea>
								<br> <br>

								<h6 style="font-size: 0.67em;">
									비밀글&nbsp; <input type="checkbox" checked id="secret-public" value="secret"
										disabled /> &nbsp; 오픈글&nbsp; <input type="checkbox" id="secret-public"
										value="public" disabled />
								</h6>

								<input type="button" class="adminEdit" id="submitBtn" value="답변수정"
									onclick="updateAnswer()" style="position: absolute; left: 0px; cursor: pointer;" />
								<input type="button" class="userEdit" id="submitBtn" name="" value="수정"
									onclick="updateQuestion()"
									style="position: absolute; left: 180px; cursor: pointer;" />
								<input type="button" class="delQuestion" id="submitBtn" name="" value="삭제"
									onclick="delQna()" style="position: absolute; left: 250px; cursor: pointer;" />
								<input type="button" id="submitBtn" value="확인" onclick="closePopup()"
									style="position: absolute; left: 90px; cursor: pointer;" />
							</div>
						</c:forEach>
					</form>
				</div>

				<script type="text/javascript">
					var productNo = $("#productNo").val();
					var qsNo = $("#qsNo").val();
					var userid = $("#userid").val();
					var curUser = "${UsersVO.id}";
					console.log("userid: "+userid);

					//alert("userid " + userid + "  curID: " + curUser);


					//세션별 사용자 권한처리
					var str = curUser;
					console.log("현재 사용자: " + str);
					if (str == "admin") {
						$("#qsAnswer").removeAttr("readonly");
						$(".userEdit").attr("disabled", true);
						$("#qsTitle").attr("readonly", true);
						$(".adminEdit").show();
						$(".delQuestion").hide();
					} else if (str == userid) {
						$("#qsContent").removeAttr("readonly");
						$("#qsTitle").removeAttr("readonly");
						$(".adminEdit").hide();

					} else {
						$("#qsContent").attr("readonly", true);
						$("#qsTitle").attr("readonly", true);
						$(".adminEdit").hide();
						$(".delQuestion").hide();
						$(".userEdit").hide();
					}

					function closePopup() {
						close();
					}

					
					function updateAnswer() {
						var qsAnswer = $("#qsAnswer").val();
						console.log(qsAnswer);
						$.ajax({
							url: '/productdetail/updateAnswer',
							type: 'GET',
							contentType: 'application/json; charset=utf-8',
							dataType: "text",
							data: "qsNo=" + qsNo + "&qsAnswer=" + qsAnswer,
							success: function (data) {
								alert("정상적으로 수정되었습니다.");
								
							},
							error: function (request, status, error) {
								alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							}
						})
					}
		

					function delQna() {
						$.ajax({
							url: '/productdetail/qna.del',
							type: 'GET',
							contentType: 'application/json; charset=utf-8',
							dataType: "text",
							data: "qsNo=" + qsNo + "&productNo=" + productNo,
							success: function (data) {
								alert("정상적으로 삭제되었습니다.");
								close();
							},
							error: function (request, status, error) {
								alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							}
						})
					}


					function updateQuestion() {
						var qsTitle = $("#qsTitle").val();
						var qsContent = $("#qsContent").val();
						console.log(qsTitle);
						console.log(qsContent);
						$.ajax({
							url: '/productdetail/updateQuestion',
							type: 'GET',
							contentType: 'application/json; charset=utf-8',
							dataType: "text",
							data: "qsNo=" + qsNo + "&qsContent=" + qsContent +"&qsTitle="+qsTitle,
							success: function (data) {
								alert("정상적으로 수정되었습니다.");
								
							},
							error: function (request, status, error) {
								alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							}
						})
					}
					
					
					/*
						function updateQuestion() {
						var frm = document.Qna;
						frm.action = "/productdetail/updateQuestion";
						frm.method = "get";
						frm.submit();
					}
					*/
				</script>
				<script type="text/javascript" src="/js/search.js"></script>
		</body>

		</html>