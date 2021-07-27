<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bebeshop</title>
<link rel="stylesheet" href="/css/login/signup.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    function repwChk(){
    	var pw = document.querySelector(".passwd");
    	var repw = document.querySelector(".repasswd");
    	
        if(pw.value != repw.value){
        	alert("비밀번호가 일치하지 않습니다.");
        	repw.value = '';
        } 
    }
    
	function pwChk(){
		var pw = document.querySelector(".passwd");
		var SC = ["!","@","#","$","%","^","&","*"];
		var num = [0,1,2,3,4,5,6,7,8,9];
		var SCCnt = 0;
		var numCnt = 0;
    	
		if(pw.value.length < 8 || pw.value.length > 16){
    		alert("비밀번호는 8자 이상, 16자 이하로 작성하여 주십시오.");
    		pw.value = '';
    		
    	}
    	
    	for(var i = 0; i < pw.value.length; i++){
    		for(var j = 0; j < SC.length; j++){
    			if(pw.value[i] == SC[j]){
    				SCCnt = SCCnt + 1;
    			}
    		}
    	}
    	if(SCCnt == 0){
    		alert("특수문자가 하나이상 포함되어야 합니다.");
    		pw.value = '';
    	}
    	
 		for(var i = 0; i < pw.value.length; i++){
    		for(var j = 0; j < num.length; j++){
    			if(pw.value[i] == num[j]){
    				numCnt = numCnt + 1;
    			}
    		}
    	}
    	if(numCnt == 0){
    		alert("숫자가 하나이상 포함되어야 합니다.");
    		pw.value = '';
    	} 
    }

	function idChk(){
    	var id = document.querySelector(".id");
    	var num = [0,1,2,3,4,5,6,7,8,9];
    	var numCnt = 0;
    	
    	if(id.value.length < 6 || id.value.length > 14){
    		alert("아이디는 6자 이상, 14자 이하로 작성하여 주십시오.");
    		id.value = '';
    		}
    	
    	for(var i = 0; i < id.value.length; i++){
    		for(var j = 0; j < num.length; j++){
    			if(id.value[i] == num[j]){
    				numCnt = numCnt + 1;
    			}
    		}
    	}
    	if(numCnt == 0){
    		alert("숫자가 하나이상 포함되어야 합니다.");
    		id.value = '';
    	} 
    }
	
	function emailChoice(){
    	var emc = document.querySelector(".select2");
    	
        if(emc.value == "etc"){
        	alert("이메일 도메인을 선택해주세요.");
        	repw.value = "naver.com";
        } 
    }
	
	$('.id').blur(function(){
		var idChk = $('.id').val();			// .id_input에 입력되는 값
		var data = {'id' : 'idChk'};				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/login/idChk",
			/* data : data */
			success : function(result){
				if(result != 'fail'){
					$('.idChkNo').style("display","inline-block");
					$('.idChkOk').style("display", "none");				
				} else {
					$('.idChkOk').style("display","inline-block");
					$('.idChkNo').style("display", "none");				
				}
				
			}// success 종료
		}); // ajax 종료
	});// function 종료
  </script>
</head>
<body>
	<div class="outbox">
		<div class="inbox">
			<h1>JOIN WITH US</h1>
			<form action="/login/signup" method="POST">
				<div class="signup">
					<h1>회원가입</h1>
					<div class="info">
						<label>아이디 *</label><br> <input type="id" name="id"
							class="id" placeholder="영문 or 숫자로 6자 이상 입력해주세요" onblur="idChk()"
							required> <br> 
							<span class="idChkOk" style="display:none;">사용 가능한 아이디입니다.</span>
							<span class="idChkNo" style="display:none;">아이디가 이미 존재합니다.</span>
							<label>비밀번호 *</label><br> <input
							type="password" name="passwd" class="passwd"
							placeholder="영문,숫자,특수문자포함 8자 이상" onblur="pwChk()" required>
						<br> <label>비밀번호 재확인 *</label><br> <input
							type="password" name="repasswd" class="repasswd"
							placeholder="비밀번호를 다시 한번 입력해주세요" onblur="repwChk()" required>
						<br> <label>이메일</label><br>
						<div class="form">
							<span class="email"><input type="text" name="emailId"
								class="email" caption="이메일" maxlength="80" value=""
								placeholder="입력해주세요" " required></span> <span class="space">@</span>
							<span class="email"></span> <span class="select"> <select
								class="select2" name="emailDomain" onblur="emailChoice()" required>
									<option value="etc">선택해주세요</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="korea.com">korea.com</option>
							</select>
							</span> <br> <label>질문</label><br> <span class="question"></span>
							<span class="select1"><select class="select1"
								name="question">
									<option value="질문1">졸업한 초등학교의 이름은 무엇입니까?</option>
									<option value="질문2">가장 친한 친구의 이름은 무엇입니까?</option>
									<option value="질문3">자신의 인생 좌우명은 무엇입니까?</option>
									<option value="질문4">인상 깊게 읽은 책은 무엇입니까?</option>
									<option value="질문5">내 어린시절 별명은 무엇입니까?</option>
							</select> </span>
						</div>
						<input type="text" name="answer" class="answer"
							placeholder="답변을 적어주세요" required>
					</div>
					<input type="submit" value="회원가입" class="btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>