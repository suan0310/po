<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="/css/user/post_info.css">
<title>Insert title here</title>
</head>
<body>
    <h1>배송조회</h1>
    <div>
        <div class="track_detail">

            <div class="flow2">
                <img src="/img/checkorder.png" width="50px">
                <div>배송준비</div>
            </div>
            <div>
                <img src="/img/next.png" width="50px" class="next">
            </div>
            <div class="flow3">
                <img src="/img/deliverygoing.png" width="50px">
                <div>배송중</div>
            </div>
            <div>
                <img src="/img/next.png" width="50px" class="next">
            </div>
            <div class="flow4">
                <img src="/img/location.png" width="50px">
                <div>배송완료</div>
            </div>
        </div>
    </div>
    
    <div class="delivery_info">
    		<h2>배송현황 : ${orderlist.stsDelivery}</h2><br>
 			주문번호 : ${orderlist.orderNo}<br>
 			상품명 : ${pName}<br>
 			옵션 : ${orderlist.orderColor} , ${orderlist.orderSize} <br>
    </div>
    <div class="delivery_info">
        받는분 : ${orderlist.addrReceiver} <br>
        연락처 : ${orderlist.tel} <br>
        주소 : ${orderlist.addr} ${orderlist.addrDetail} <br>
        배송요청사항 : ${orderlist.addrRequest}
    </div>
    <input type="button" value="닫기" onclick="self.close();" />
</body>
</html>