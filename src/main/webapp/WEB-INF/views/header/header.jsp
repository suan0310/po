<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/css/header.css?ver=1">
<div class="headerbx">
   <a href="/index/index"><img src="/img/logo.png" alt="logo" width="100px" height="100px"></a>

    <!--------------------- 상단 아이디 및 아이콘이 들어가는 공간 --------------------->
    <div class="menubx">
        <h6 class="shop"><a href="/product/searchPage?subCategory=101&page=1">SHOP</a></h6>
        <c:choose>
<<<<<<< HEAD
        <c:when test="${UsersVO.id eq 'admin'}">
        <input type="button" value="관리자" class="pos">
        <h6><a href="/admin/admin_info">${UsersVO.id}</a></h4>
        </c:when>
        <c:when test="${empty UsersVO.id}">
                <input type="button" value="비로그인" class="pos">
        </c:when>        
        <c:otherwise>
         <input type="button" value="회원" class="pos">
         <h6><a href="/user/user_info">${UsersVO.id}</a></h4>
        </c:otherwise>
=======
        	<c:when test="${UsersVO.id eq 'admin'}">
        		<input type="button" value="관리자" class="pos">
        	</c:when>
        	<c:when test="${empty UsersVO.id}">
                <input type="button" value="비로그인" class="pos">
       		</c:when>        
        	<c:otherwise>
         		<input type="button" value="회원" class="pos">
        	</c:otherwise>
>>>>>>> origin/oyw_work_backup
        </c:choose>
                
            <h6><a href="/board/admin_notice">게시판</a></h6>
        <c:choose>
        	<c:when test="${empty UsersVO.id}">
        		<h6><a href="/login/login">로그인</a></h6>
        	</c:when>
        <c:otherwise>
         	<h6><a href="/login/logout">로그아웃</a></h6>
        </c:otherwise>
        </c:choose>
        <c:choose>
         	<c:when test="${empty UsersVO.id}">
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



<script type="text/javascript" src="/js/search.js"></script>



