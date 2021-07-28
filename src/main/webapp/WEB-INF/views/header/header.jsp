<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/css/header.css?ver=1">
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
	
<div class="headerbx">
   <a href="/index/index"><img src="/img/logo.png" alt="logo" width="100px" height="100px"></a>

    <!--------------------- 상단 아이디 및 아이콘이 들어가는 공간 --------------------->
    <div class="menubx">
        <h6 class="shop"><a href="/product/searchPage?subCategory=101&page=1">SHOP</a></h6>
        <c:choose>
        <c:when test="${sessionUser.id eq 'admin'}">
        <input type="button" value="관리자" class="pos">
        <h6><a href="/admin/admin_info">${sessionUser.id}</a></h4>
        </c:when>
        <c:when test="${empty sessionUser.id}">
                <input type="button" value="비로그인" class="pos">
        </c:when>        
        <c:otherwise>
         <input type="button" value="회원" class="pos">
         <h6><a href="/user/user_info">${sessionUser.id}</a></h4>
        </c:otherwise>
        </c:choose>
                
            <h6><a href="/board/admin_notice">게시판</a></h6>
        <c:choose>
        	<c:when test="${empty sessionUser.id}">
        		<h6><a href="/login/login">로그인</a></h6>
        	</c:when>
        <c:otherwise> 
				<h6 onclick="signOut()" style="cursor: pointer;">로그아웃</h6>

        </c:otherwise>
        </c:choose>
        <c:choose>
         	<c:when test="${empty sessionUser.id}">
            <a onclick="alert('로그인 후 이용해주세요.')"><img src="/img/cart.png" alt="cart" width="20px" height="20px"></a>
            </c:when>
            <c:otherwise>
         	<a href="/user/cart2"><img src="/img/cart.png" alt="cart" width="20px" height="20px"></a>
        	</c:otherwise>
        </c:choose>
            <img src="/img/search.png" alt="search" width="20px" height="20px" class="btn">
    </div>
  		<form method="get" action="/product/searchPage"> 
        <div class="search"><input type="text"  value="${keyword}" name="keyword" id="keyword"><i class="fa fa-times" aria-hidden="true"></i></div>
        </form>
</div>


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

    </script>

<script type="text/javascript" src="/js/search.js"></script>



