<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/css/header.css?ver=1">
<div class="headerbx">
   <a href="/index/index"><img src="/img/logo.png" alt="logo" width="100px" height="100px"></a>

    <!--------------------- 상단 아이디 및 아이콘이 들어가는 공간 --------------------->
    <div class="menubx">
        <h6 class="shop"><a href="/product/searchPage?subCategory=101&page=1">SHOP</a></h6>
        <input type="button" value="회원" class="pos">

        <h6><a href="/user/user_info">HONGGILDONG님</a></h4>
            <h6><a href="/order/order">이벤트</a></h6>
            <h6><a href="/index">게시판</a></h6>
            <h6><a href="#">로그아웃</a></h6>
            <a href="/user/cart2"><img src="/img/cart.png" alt="cart" width="20px" height="20px"></a>
            <img src="/img/search.png" alt="search" width="20px" height="20px" class="btn">
    </div>
  		<form method="get" action="/product/searchPage"> 
        <div class="search"><input type="text"  value="${keyword}" name="keyword" id="keyword"><i class="fa fa-times" aria-hidden="true"></i></div>
        </form>
</div>



<script type="text/javascript" src="/js/search.js"></script>



