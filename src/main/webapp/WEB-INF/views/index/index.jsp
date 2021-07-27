<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
<link rel="stylesheet" href="/css/index/index.css">
<script src="https://kit.fontawesome.com/a216194d9c.js"	crossorigin="anonymous"></script>
=======
<link rel="stylesheet" href="/css/index/index.css?">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


<!-- 소셜 -->
<link href="https://fonts.googleapis.com/css2?family=Handlee&display=swap" rel="stylesheet"></head>
    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Jua&display=swap" rel="stylesheet">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    
    <meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id"
   content="1059402509993-5dgo9oqfau9tharl9cbb1qe4prp40h0j.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>    	
	<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
	<!-- 소셜 -->
	
>>>>>>> origin/nikki_two
<title>Document</title>
</head>

<body>

	<header id="header">
		<%@ include file="../header/header.jsp"%>
	</header>

	<div class="main">

		<!-- /* -----------------메인영역(slide)--------------------- */ -->
		<div style="overflow: hidden;">
			<div class="slide">
			<c:forEach items="${slide}" var="slide" >
				<div class="slideimg">
					<img src="${slide.productImg1}" width="80%" height="800px">
				</div>
			</c:forEach>
<!-- 				<div class="slideimg"> -->
<!-- 					<img src="img/dooog.jpg" width="80%" height="800px"> -->
<!-- 				</div> -->
<!-- 				<div class="slideimg"> -->
<!-- 					<img src="img/slide.jpg" width="80%" height="800px"> -->
<!-- 				</div> -->

			</div>
		</div>
		<div class=slidebtn>
			<button class=slidebtn1></button>
			<button class=slidebtn2></button>
			<button class=slidebtn3></button>
		</div>

<<<<<<< HEAD
=======
		<!-- <div class="slide">

                <a href="#"><img src="/img/product.png" alt="product" loading="lazy" width="100%" height="400px"></a>
                <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <div class="radios">
                    <input type="radio" name="check" value="1">
                    <input type="radio" name="check" value="2">
                    <input type="radio" name="check" value="3">
                    <input type="radio" name="check" value="4">
                </div>
            </div> -->

		<!-- /* -----------------메인영역(Time Sale)--------------------- */ -->
	
	
	<!-- 내가 잠깐쓸게.....은혜... -->
	<input type="button" value="logout" onclick="signOut()"
	style="top: -300px;"/>

<script>
function signOut() {

    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
    });
	auth2.disconnect();
      console.log('User signed out.');
      $(document).ready(function(){
	location.replace("/login/logout");    	  
      });

  }
  
    function onLoad() {
      gapi.load('auth2', function() {
        gapi.auth2.init();
      });
    }

    
    var curuser = "${UsersVO.id}";
	console.log("현재세션: "+curuser);

    /*
    function logout(){	
		Kakao.init("f0e088ffc8de3aeaca97aa4221edcafb");
	       Kakao.Auth.logout(function () {
			alert("로그아웃");
        });
        location.replace("/login/logout");
    }*/
        	
    </script>
    <!-- 은혜끝 -->
    
    
		<section class="Tsale">
			<h1 class="name">Time Sale</h1>
			<div class="Tbxs">
				<div class="Tbx">
					<a href="#"> <img src="/img/a.jpg" alt="a">
						<h1>계면활성제 무첨가 귀세정제</h1>
						<div class="price">
							<h6>19,000원</h6>
							<h4>12,000원</h4>
						</div> <span class="time">00:00:00</span>
					</a>
				</div>
				<div class="Tbx">
					<a href="#"> <img src="/img/a.jpg" alt="a">
						<h1>계면활성제 무첨가 귀세정제</h1>
						<div class="price">
							<h6>19,000원</h6>
							<h4>12,000원</h4>
						</div> <span class="time">00:00:00</span>
					</a>
				</div>
				<div class="Tbx">
					<a href="#"> <img src="/img/a.jpg" alt="a">
						<h1>계면활성제 무첨가 귀세정제</h1>
						<div class="price">
							<h6>19,000원</h6>
							<h4>12,000원</h4>
						</div> <span class="time">00:00:00</span>
					</a>
				</div>
			</div>
		</section>


>>>>>>> origin/nikki_two
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
				<h1>베스트 리뷰</h1>
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
	</div>

	<script type="text/javascript" src="/js/search.js"></script>
	<script type="text/javascript" src="/js/index.js"></script>
</body>

</html>