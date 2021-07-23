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
    <script type="text/javascript">
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
                            <label>아이디 *</label><br>
                            <input type="id" name="id" class="id" placeholder="영문 or 숫자로 6자 이상 입력해주세요" required>
                            
                            <br><label>비밀번호 *</label><br>
                            <input type="password" name="passwd" class="passwd" placeholder="영문,숫자,특수문자포함 8자 이상" required>
                        <br><label>비밀번호 재확인 *</label><br>
                        <input type="password" class="repasswd" placeholder="비밀번호를 다시 한번 입력해주세요" required>
                        <br><label>이메일</label><br>
                        <div class="form">
                            <span class="email"><input type="text" name="emailId" class="email" caption="이메일" maxlength="80"
                                    value="" placeholder="입력해주세요"" required></span>
                            <span class="space">@</span>
                            <span class="email"></span>
                            <span class="select">
                                <select class="select2" name="emailDomain" >
                                    <option value="etc">선택해주세요</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                    <option value="korea.com">korea.com</option>
                                </select>
                            </span>
                            <br><label>질문</label><br>
                            <span class="question"></span>
                            <span class="select1"><select class="select1" name="question" > 
                                    <option value="질문1">졸업한 초등학교의 이름은 무엇입니까?</option>
                                    <option value="질문2">가장 친한 친구의 이름은 무엇입니까?</option>
                                    <option value="질문3">자신의 인생 좌우명은 무엇입니까?</option>
                                    <option value="질문4">인상 깊게 읽은 책은 무엇입니까?</option>
                                    <option value="질문5">내 어린시절 별명은 무엇입니까?</option>
                                </select>
                            </span>
                        </div>                        
                        <input type="text" name="answer" class="answer" placeholder="답변을 적어주세요" required>
                    </div>                        
                    <input type="submit" value="회원가입" class="btn" onClick="chk()">
                </div>
                </form>
        </div>
    </div>
</body>
</html>