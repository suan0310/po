<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <% String productNo=request.getParameter("productNo"); %>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="/css/product/deatil.css">
                <title>Document</title>
                <!--링크들-->
                <script src="http://code.jquery.com/jquery-latest.js"></script>
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
                <!-- w3school css적용시 헤더부분 꺠짐 수정필요 -->
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        </head>

        <body>
            <div class="background">
                <header>
                    <%@ include file="../header/header.jsp" %>
                </header>
                <!--제품상세페이지-->       
                <form name="order">
                    <c:forEach var="m" items="${detMain}">
                        <div class="main">
                            <div class="detail-img-big">
                                <center><img src="${m.productImg1}" id="bigImg" alt="" width="500px"
                                        style="margin-top: 5px;" />
                                      
                                </center>
                            </div>
                            <div class="detail-order">
                                <br>

                                <div style="float: left; margin-left: 100px; font-size: 20px;">
                                    <input type="hidden" id="tmpMax" />
                                    <table>
                                        <th colspan="2" style="font-size: 30px; font-weight: bold;">
                                            ${m.productName}
                                        </th>
                                        <tr>
                                            <td colspan="2">&nbsp</td>
                                        </tr>
                                        <tr>
                                            <td>판매가</td>
                                            <td><input name="productPrice" value="${m.productPrice}" readonly
                                            style="border-style: none; width:100px; text-align:right;"/>원
                                            </td>
                                        </tr>
                                    </table>
                                    <hr color="grey" size="1px" style="margin-top: 10px;">
                                    <br>
                                    <table style="padding: 10px; font-size: 15px;">
                                        <tr>
                                            <td>색상</td>
                                            <td>
                                                <select name="productColor" id="opt1">
                                                    <option value="non" selected>색상을 선택하세요</option>
                                                    <c:forEach var="o" items="${detOptions}">
                                                        <option value="${o.productColor }">${o.productColor }</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>사이즈</td>
                                            <td>
                                                <select name="productSize" id="opt2">
                                                    <option value="" selected> 사이즈를 선택하세요 </option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>수량</td>
                                            <td>
                                                <!--수량은 min/ max이용-->
                                                <input type="number" id="quantity" name="quantity" min="1" value="1" />
                                    </table>
                                    <hr color="grey" size="1px" style="margin-top: 30px;">
                                    <br>
                                    <input type="hidden" id="id" name="id" value="${sessionScope.userid}" />
                                    <input type="hidden" id="productNo" name="productNo" value="<%= productNo %>" />
                                    <input type="button" id="shopBtn" value="장바구니" onclick="addCart()" /><br>
                                    <input type="button" id="orderBtn" value="구매하기" onclick="orderNow()" />
                                </div>
                </form>

            </div>
            <div class="detail-img-small">
                <div class="smallimg">
                    <img src="${m.productImg1}" class="img1" alt="준비중입니다." style="width: 120px;"/>
                    <img src="${m.productImg2}" class="img1" alt="준비중입니다." style="width: 120px;"/>
                    <img src="${m.productImg3}" class="img1" alt="준비중입니다." style="width: 120px;"/>
                    <img src="${m.productImg4}" class="img1" alt="준비중입니다." style="width: 120px;"/>
                </div>
            </div>
            </c:forEach>
            
            <div class="reivew-request-tab">
                <div class="tabmenu">
                    <input type="radio" name="tab" id="tab2" />
                    <label for="tab2" style="font-size: 15px; text-align: center;">문의</label>
                    <input type="radio" name="tab" id="tab1" checked />
                    <label for="tab1" style="font-size: 15px; text-align: center;">리뷰</label>

                    <div id="cont1" style="border:1px solid black;"><br><br>
                        <h3 style="text-align: center;">강아지 옷 애견 용품 패리스독</h3><br><br>
                        <div id="star" style="position: absolute; left: 10px; top: 185px;">
                            <div class="average">
                                &nbsp;
                                <span style="font-size: 50px; font-weight: bold; color: black;
                                position: absolute; left: 145px;">
                                    ${avg}
                                </span>
                            </div>
                            <div id="starimgsrc">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                            </div>
                            <br><br>
                        </div>
                        <!-- id를 변수i로 받아서 돌릴까?  -->
                        <div class="starBars">
                            <div class="w3-light-grey">
                                    <div class="w3-orange" id="1star" style="height: 24px;">
                                       <span style="position: absolute; left: 375px; top: 190px;"> 1 </span>
                                    </div>
                                </div>
								<div class="w3-light-grey">
                                    <div class="w3-orange" id="2star" style="height: 24px;">
                                       <span style="position: absolute; left: 375px; top: 220px;">2</span>
                                    </div>
                                </div>
								<div class="w3-light-grey">
                                    <div class="w3-orange" id="3star" style="height: 24px;">
                                        <span style="position: absolute; left: 375px; top: 250px;"> 3 </span>
                                    </div>
                                </div>
								<div class="w3-light-grey">
                                    <div class="w3-orange" id="4star" style="height: 24px;">
                                        <span style="position: absolute; left: 375px; top: 280px;"> 4 </span>
                                    </div>
                                </div>  
								<div class="w3-light-grey">
                                    <div class="w3-orange" id="5star" style="height: 24px;">
                                        <span style="position: absolute; left: 375px; top: 310px;"> 5 </span>
                                    </div>
                                </div>
                        </div>
                      
                        <div class="scrollTest" style="overflow:auto; height: 500px;">

                            <form action="/productdetail/reviewManage" method="get">
                                <input type="hidden" id="productNo" name="productNo" value="<%= productNo %>" />
                                <div class="customer-reviews" style="font-size: 12px; ">
                                    <div class="customer-reviews1"><br><br><br>
                                        <input type="submit" value="베스트리뷰 관리" id="submitBtn" name="bestRvManage"
                                        style="width:auto;"/>
                                        <c:forEach var="r" items="${rvOne}">
                                            <b>${r.id}</b>/
                                            <c:forEach var="s" begin="1" end="${r.rvStar}">
                                                <!-- <i class="fa fa-star" id="yellowstar"></i> -->
                                                <i class="fa fa-star" id="selected"></i>
                                            </c:forEach>
                                           /<fmt:formatDate value="${r.rvDate}" pattern="yy-MM-dd"/>                                             /
                                            <table style="width: 520px; min-height: 70px; border: 1px solid black;
                             margin-top: 10px; margin-bottom: 40px;">
                                                <tr>
                                                    <td colspan="3">${r.rvContent}</td>
                                                </tr>
                                            </table>
                                        </c:forEach>
                                        <details style="font-size: 12px;">
                                            <summary
                                                style="float: left; margin-left: 540px; margin-top: -150px; cursor: pointer;">
                                                더보기 </summary>
                                            <c:forEach var="r" items="${rvAll}">
                                                <b>${r.id}</b> /
                                                <c:forEach var="s" begin="1" end="${r.rvStar}">
                                                    <i class="fa fa-star" id="selected"></i>
                                                </c:forEach>
                                                / <fmt:formatDate value="${r.rvDate}" pattern="yy-MM-dd"/> 
                                                 /
                                                <table
                                                    style="width: 520px; min-height: 100px;  border: 1px solid black; margin-top: 10px;">
                                                    <tr>
                                                        <td colspan="3"> ${r.rvContent}</td>
                                                    </tr>
                                                </table>
                                                <br>
                                            </c:forEach>
                                        </details>
                                    </div>
                                </div>
                            </form>

                            <form action="/productdetail/reivew.do" name="user-reiview-write"
                                onsubmit="return confirm('게시글을 등록할까요?');" method="post">
                                <hr color="grey" size="2px" style="margin-top: 20px; margin-bottom: 20px;">
                                <div class="user-reivew">
                                    리뷰쓰기<br>
                                    <div class="customer-reviews2" style="font-size: 12px; margin-top: 20px;">
                                        <span id="id_" name="id_"><b> ${sessionScope.userid}</b></span>/

                                        <i class="fa fa-star star-1" id="star"></i>
                                        <i class="fa fa-star star-2" id="star"></i>
                                        <i class="fa fa-star star-3" id="star"></i>
                                        <i class="fa fa-star star-4" id="star"></i>
                                        <i class="fa fa-star star-5" id="star"></i>
                                        <sub class="autoRating" id="star_">
                                            <span>0</span>
                                        </sub> /
                                        <input type="hidden" id="id" name="id" value="${sessionScope.userid}" />
                                        <input type="hidden" id="productNo" name="productNo" value="<%= productNo %>" />
                                        <input type="hidden" id="rvStar" name="rvStar" />
                                        <sub class="rvDate"><span></span></sub>
                                        <br><textarea name="rvContent" cols="72" rows="8" maxlength="300"
                                            style="margin-top: 10px;"></textarea><br>
                                        <input type="submit" id="submitBtn" value="등록"
                                            style="float: right; cursor: pointer;" />
                                        <br><br>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>

                    <div id="cont2">
                        <br>
                        <div class="customer-requests">
                            <br>
                            <h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp상품 Q&A</h3>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp상품에 대해 궁금한 점을 남겨주세요.
                            <table id="questionTable" style="border: black solid 1px; width:700px; margin-top: 30px;
                            margin-left: 50px; text-align: center; padding: 1px; font-size: 15px;">
                                <tr style="border-bottom: black solid 1px;">
                                    <th style="display: none;">리뷰번호</th>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th style="display:none;">비밀글?</th>
                                    <th>비밀글여부</th>
                                </tr>
                                <tbody>
                                <c:forEach var="q" items="${qsAll}">
                                    <tr>
                                        <td style="display: none;">${q.qsNo}</td>
                                        <td>${q.rownum}</td>
                                        <td style="cursor: pointer;"> ${q.qsTitle}</td>
                                        <%-- <td onclick="checkID()" style="cursor: pointer;"> ${q.qsTitle}</td>
                                            --%>
                                            <td>${q.id}</td>
                                           <td>
                                           <fmt:formatDate value="${q.qsDate}" pattern="yy-MM-dd" />
                                           </td>
                                            <td class="qsSecret" style="display:none;" 
                                            value="${q.qsSecret}">${q.qsSecret}</td>
                                            <td>
                                            <i class="fas fa-lock"></i>
                                            </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <input type="button" id="show" value="작성하기" onclick="writeRequest()"
                                style="position: absolute; left:700px; cursor: pointer; font-size: small;" />
                            <br><br><br>
                        </div>
                    </div>
                </div>
            </div>

            <div id="request-popup">
                <br><br><br><br>
                <center>
                    <h4>문의하기</h4>
                    <!--작성시-->
                </center>
                <form action="/productdetail/question.do" method="post" name="request-popup-write"
                    onsubmit="return confirm('게시글을 등록할까요?');" style="position: absolute; left: 100px;">
                    <br>제목
                    <br><input type="text" name="qsTitle" id="request-title" style="margin-top: 10px; width: 370px;">
                    <br><br>내용
                    <br><textarea name="qsContent" id="MumE" cols="50" rows="10" maxlength="300"
                        style="margin-top: 10px;"></textarea><br>
                    <br>
                    <h6 style="font-size: 0.67em;">비밀글&nbsp;<input type="checkbox" id="secret-public" name="qsSecret"
                            value="1" /> &nbsp; 오픈글&nbsp;
                        <input type="checkbox" name="qsSecret" id="secret-public" value="0" />
                        <input type="hidden" id="id" name="id" value="${sessionScope.userid}" />
                        <input type="hidden" id="productNo" name="productNo" value="<%= productNo %>" />
                    </h6>
                    <br><br>
                    <input type="submit" id="submitBtn" value="등록"
                        style="position: absolute; left: 180px; cursor: pointer;" />
                    <input type="button" id="submitBtn" value="취소" onclick="hidepop1()"
                        style="position: absolute; left: 90px; cursor: pointer;" />
                </form>
            </div>
            </div>
                    <!-- 오류나면 주석해야함 --><input type="hidden" id="questionNum" name="qsNo" />

            <script>
            
                //필요한 변수 선언
                var num;
                var userid;   //question(문의)의 유저아이디
                var rvUserid; //review의 유저아이디
                var secret;
                var productNo = $("#productNo").val();
                //console.log("현재값: " + num + userid + secret);

                //현재 아이디 체크
                var curUser = "${sessionScope.userid}";

                $(document).ready(function () {
                    if (curUser != "admin") {
                        $("input[name=bestRvManage]").hide();
                    }
                });

                //date형식지정
                var today = new Date();
                var year = today.getFullYear();
                var month = ('0' + (today.getMonth() + 1)).slice(-2);
                var day = ('0' + today.getDate()).slice(-2);
                var dateString = year + month + day;
                $(".rvDate > span").html(dateString);
	
              //starbars width처리
                $(document).ready(function(){
                    var total = 0;
                    var cntstar = "";
                    var i = 1;
                	<c:forEach var="star" items="${rvStar}">
                	var tmp = ${star.cnt};
                	console.log("tmp: "+tmp);
                	total += tmp;
                	</c:forEach>
                	console.log("total: "+total);
                	<c:forEach var="star" items="${rvStar}">
                	var a = (${star.rvStar}/total)*100;
                	$("#"+i+"star").css('width', a+"%");
                	console.log("그래서 몇 프로라고요?"+a);
                	i++;
                	</c:forEach>                	
                });
                
                
                //문의글 비밀글 아이콘처리
                $(document).ready(function(){
                $("#questionTable tr").each(function(){
					var t = $(this).find('td').eq(5).text();
					if(t != 1){
						$(this).find('td').eq(6).attr("hidden", true);
					}else{
						
					}				
				});
                	
                });
                
                
                //상품셀렉트박스
                //상품옵션
                var color = "";
                $(document).ready(function () {
                    $('#opt1').on('change', function () {

                        color = $('#opt1').val();
                        if (color != 'non') {
                            console.log('Ajax를 실행합니다.');

                            $.ajax({

                                url: "/productdetail/options.size",
                                type: "GET",
                                contentType: 'application/json; charset=utf-8',
                                dataType: "json",
                                data: "productColor=" + color + "&productNo=" + productNo,
                                success: function (data) {
                                    console.log(data.size[0].productSize);
                                    console.log(Object.keys(data.size).length);
                                    console.log("여기서시작");
                                    var len = (Object.keys(data.size).length);
                                    $('#opt2').empty();
                                    var option = $("<option value='' selected> 사이즈를 선택하세요 "
                                        + "</option>");
                                    $("#opt2").append(option);
                                    for (var i = 0; i < len; i++) {
                                        console.log(data.size[i].productSize);
                                        var sizeVal = data.size[i].productSize
                                        var option = $("<option value=" + sizeVal + ">" +
                                            sizeVal + "</option>");
                                        $("#opt2").append(option);
                                    }
                                },
                                error: function (request, status, error) {
                                    alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                                }
                            })
                        }
                    });

                    //재고값받아오기
                    $('#opt2').on('change', function () {
                        var selectedSize = $('#opt2').val();
                        $.ajax({
                            url: "/productdetail/options.stock",
                            type: "GET",
                            contentType: 'application/json; charset=utf-8',
                            dataType: "json",
                            data: "productColor=" + color + "&productNo="+productNo
                                + "&productSize=" + selectedSize,
                            success: function (data) {
                            	console.log(data.stock);
                                $('#tmpMax').val(data.stock);
                                console.log("tmpMax " + $('#tmpMax').val());
                                $('#quantity').prop('max', $('#tmpMax').val());

                            },
                            error: function (request, status, error) {
                                alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
                            }
                        })


                    });

                });


                //checkbox 하나만
                $(document).ready(function () {
                    $('input[type="checkbox"][id="secret-public"]').click(function () {
                        if ($(this).prop('checked')) {
                            $('input[type="checkbox"][id="secret-public"]').prop('checked', false);
                            $(this).prop('checked', true);
                        }
                    });
                });


                function checkOnlyOne(element) {
                    const checkboxes = document.getElementById("secret-public");
                    checkboxes.forEach((cb) => {
                        cb.checked = false;
                    })
                    element.checked = true;
                }

                
                /* 작은 이미지클릭시 큰이미지에 넣기 */
                $(".img1").click(function () {
                	$('#bigImg').attr("src",$(this).attr("src"));
                });
                
                //===================
                $("#questionTable tr").click(function () {

                    var str = ""
                    var tdArr = new Array();    // 배열 선언

                    // 현재 클릭된 Row(<tr>)
                    var tr = $(this);
                    var td = tr.children();

                    // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
                    //console.log("클릭한 Row의 모든 데이터 : " + tr.text());

                    // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
                    td.each(function (i) {
                        tdArr.push(td.eq(i).text());
                    });

                    // td.eq(index)를 통해 값을 가져올 수도 있다.
                    num = td.eq(0).text();
                    userid = td.eq(3).text();
                    secret = td.eq(5).text();
                    console.log("num " +num);
                    console.log("userid " +userid);
                    console.log("secret? " +secret);
                  	
                    $(document).ready(function () {
                        $('#questionNum').val(num);
                        var a = $('#questionNum').val();
                        //alert("qsNo : " + a);
                    });

                    if (secret == "1") {
                        if (curUser == "admin" || curUser == userid) {
                            openPop();
                        } else {
                            alert("비밀글 보기 권한이 없습니다.");
                        }
                    } else {
                        openPop();
                    }

                    function openPop() {
                        var url = "/productdetail/pop?qsNo=" + num + "&userid=" + userid + "&productNo=" + productNo;
                        var options = "width=600, height=1000, top=10";
                        window.open(url, "pop1", options).focus();
                    }
                });

                $(document).ready(function () {
                    $('#cancel').click(function () {
                        $('#request-popup').hide();
                    });
                });

                $(document).ready(function () {
                    $('#show').click(function () {
                        $('#request-popup').show();
                    });
                });

                function hidepop1() {
                    $('#request-popup').hide();
                }

                function hidepop2() {
                    $('#request-popup-click').hide();
                }

                $(document).ready(function () {
                    var tmp = $('#reply').val();
                    if (tmp != "null") {
                        console.log("답변완료 처리");
                        // $('#replyCompleted').show();
                    }
                });

               
                //장바구니 넣기
                function addCart(){
                	var id = $("#id").val();
                	var quantity = $("#quantity").val();
                	var productColor = $("#opt1").val();
                	var productSize = $("#opt2").val();
                	console.log(id+quantity+productColor+productSize);
                	
                	/* var max = parseInt($('#tmpMax').val()); */
                	var max = 100;
                	var qty = parseInt($('#quantity').val());
                	
                	if(qty>0){
                		if(max >= qty){
	                    $.ajax({
							url: '/productdetail/insertCart',
							type: 'GET',
							contentType: 'application/json; charset=utf-8',
							dataType: "text",
							data: "productColor=" + productColor  + "&productNo=" + productNo+
							"&id="+id+"&quantity="+quantity+"&productSize="+productSize,
							success: function (data) {
								alert("장바구니에 상품이 담겼습니다.");							
							},
							error: function (request, status, error) {
								alert("code = " + request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							}
						})
                			
                		} else{
	                        alert("최대 구매수량은 "+max+"개 입니다.");
                		}
                	}
                }

                //구매하기
                function orderNow() {
                	var max = parseInt($('#tmpMax').val());
                	var qty = parseInt($('#quantity').val());
                	
                	if(qty>0){
	                	if(max >= qty){
	                		var frm = document.order;
	                        frm.action = "/productdetail/order";
	                        frm.method = "get";
	                        frm.submit();
	                	} else {
	                        alert("최대 구매수량은 "+max+"개 입니다.");
	                	}                	                		
                	}
                }
                
                
                /*별점찍기*/
                function changeStarColor(ratingArg) {
                  let rating = ratingArg;
                  for (let i = 1;i <= rating;i++) {
                    $(".star-"+i).attr("id", "selected");
                  }
                  for (let i = rating + 1;i <= 5;i++) {
                    $(".star-"+i).attr("id", "unselected");
                  }
                  $(".autoRating > span").html(rating);
                }
                let selectedRating = 0;

                $("i").hover(function() {
                  let starClass = parseInt($(this).attr("class").split("star-")[1]);
                  changeStarColor(starClass);
                }, function() {
                  if (selectedRating == 0) {
                    changeStarColor(0);
                    $(".autoRating > span").html("0");
                  } else {
                    changeStarColor(selectedRating);
                  }
                });
                    

           $("i").click(function () {
                                let starClass = parseInt($(this).attr("class").split("star-")[1]);
                                changeStarColor(starClass);
                                selectedRating = starClass;

                                var abc = $("#star_").text();
                                console.log(abc);
                                $('#rvStar').val(abc);
                                console.log($('#rvStar').val());
                            });

                            function test123() {
                                var id = $("#id_").text();
                                console.log(id);
                                $('#id').val(id);
                                console.log($('#id').val());

                                var abc = $("#star_").text();
                                console.log(abc);
                                $('#rvStar').val(abc);
                                console.log($('#rvStar').val());
                            }

                            $(document).ready(function () {
                                var abc = $("#star_").text();
                                console.log(abc);
                                $('#rvStar').val(abc);
                                console.log($('#rvStar').val());
                            });

                
            </script>

            <script type="text/javascript" src="/js/search.js"></script>
        </body>

        </html>