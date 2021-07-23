<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/user/purchase_history.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <title>bebeshop</title>
</head>

<body>
    <div class="background">

        <!-- 메뉴바 -->
        <header>
            <%@ include file= "../header/header.jsp" %>
        </header>

        <div class="main">
            <div class="aside">
				<%@ include file="user_aside.jsp" %>
            </div>

            <div class="mainbox">
                <div class="orderbx">
                    <h4 class="name3">구매내역</h4>
                    <table class="order">
                        <tr>
                            <th style="width: 100px; border-left : hidden;"> 주문번호</th>
                            <th colspan="2">제품정보</th>
                            <th >제품수량</th>
                            <th style="width: 150px;">결제금액</th>
                            <th style="width: 150px;">배송현황</th>
                            
                            <th style="width: 150px; border-right: hidden;">취소현황</th>
                        </tr>
                       
                       <c:forEach items="${polist}" var="list">
                        <tr>
                                <td style="width: 100px; border-left: hidden">${list.orderNo}</td>
                                <td align=right><img src="/img/bebe.png" alt="a" width="120px" height="120px"></td>
                                <td style="border-left: hidden" align="left">
                                        <h4>${list.productName}</h4>
                                            <h3>${list.orderColor} / ${list.orderSize}</h3>
                                                <h2>${list.productPrice}원</h2> 
                                </td>
                                <td align=center>${list.orderQty}</td>

                                <td align=center>
                                    <h1>${list.orderPrice}원</h1>
                                </td>                                
                                <td align=center>
                                    <input class="purchaseBtn1"  id="postBtn" type="button" onclick="showPopup(${list.orderNo},'${list.productName}')" value="주문상세">
                                    <h4>${list.stsDelivery}</h4>
                                </td>
                                <td align=center style=" border-right: hidden">
                                    <a href="/user/post_cancel?on=${list.orderNo}" onclick="return stsCheck('${list.stsCancel}');"><input class="purchaseBtn1" id="postCancel" type="button" value="${list.stsCancel}" /></a>
                                </td>
                        </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript">

function showPopup(num,name){
var url = "/user/post_info?on="+num+"&name="+name;
var option = "width=800, height=600, top=400"
window.open(url, "배송정보", option).focus();
}

function stsCheck(sts){
	if(sts == '취소대기') return false;
	else if(sts == '취소완료') return false;
	else return true;	
	}


</script>

<!-- <script type="text/javascript" src="/js/purchaseHistory.js"></script> -->
<script type="text/javascript" src="/js/search.js"></script>

</html>