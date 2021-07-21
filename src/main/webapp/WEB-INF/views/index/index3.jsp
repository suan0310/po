%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/index/index.css?">
    <script src="https://kit.fontawesome.com/a216194d9c.js" crossorigin="anonymous"></script>
    <title>Document3</title>
</head>

<body>
    <header id="header">
        <%@ include file= "../header/header.jsp" %>
    </header>

    <div class="main">
        <!-- /* -----------------메인영역(slide)--------------------- */ -->

        <div style="overflow: hidden; ">
            <div class="slide">
                <div class="slideimg">
                    <img src="/img/dog.jpg" width="1525px" height="800px">
                </div>
                <div class="slideimg">
                    <img src="/img/dooog.jpg" width="1525px" height="800px">
                </div>
                <div class="slideimg">
                    <img src="/img/slide.jpg" width="1525px" height="800px">
                </div>

            </div>
        </div>
        <div class =slidebtn>
            <button class=slidebtn1></button>
            <button class=slidebtn2></button>
            <button class=slidebtn3></button>
        </div>

        <!-- /* -----------------메인영역(Time Sale)--------------------- */ -->

        <section class="Tsale">
            <h1 class="name">Time Sale</h1>
            <div class="Tbxs">
                <div class="Tbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                        <span class="time">00:00:00</span>
                    </a>
                </div>
                <div class="Tbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                        <span class="time">00:00:00</span>
                    </a>
                </div>
                <div class="Tbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                        <span class="time">00:00:00</span>
                    </a>
                </div>
            </div>
        </section>

        <!-- /* -----------------메인영역(인기상품)--------------------- */ -->

        <section class="Fsale">
            <h1 class="name">인기상품</h1>

            <div class="Fbxs">
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="Fbxs">
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
                <div class="Fbx">
                    <a href="#">
                        <img src="/img/a.jpg" alt="a">
                        <h1>계면활성제 무첨가 귀세정제</h1>
                        <div class="price">
                            <h6>19,000원</h6>
                            <h4>12,000원</h4>
                        </div>
                    </a>
                </div>
            </div>

        </section>
        <!-- /* -----------------메인영역(베스트 리뷰)--------------------- */ -->
        <section class="review">
            <div class="rvname">
                <h1>베스트 리뷰</h1>
            </div>
            <form action="" method="GET">
                <div class="rvboxs">
                    <div class="rvbox left">
                        <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                class="fa fa-star"></i><i class="fa fa-star"></i>
                            <h3>5</h3>
                        </span>
                        <p>안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다.
                        </p>
                    </div>
                    <div class="rvbox right">
                        <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                class="fa fa-star"></i><i class="fa fa-star"></i>
                            <h3>5</h3>
                        </span>
                        <p>안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다.
                        </p>
                    </div>
                </div>
                <div class="rvboxs">
                    <div class="rvbox left">
                        <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                class="fa fa-star"></i><i class="fa fa-star"></i>
                            <h3>5</h3>
                        </span>
                        <p>안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다.
                        </p>
                    </div>
                    <div class="rvbox right">
                        <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                class="fa fa-star"></i><i class="fa fa-star"></i>
                            <h3>5</h3>
                        </span>
                        <p>안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다. <br>
                            안녕하세요. 힘내봅시다. 안녕하세요. 힘내봅시다.
                        </p>
                    </div>
                </div>
        </section>
    </div>
    <script>
//         let btn = document.querySelector(".btn");
//         let search = document.querySelector(".search");
//         let alarm = document.querySelector(".alarm");
//         let cls = document.querySelector(".fa");
//         let header = document.querySelector("#header");

//         btn.addEventListener('click', () => {
//             if (search.classList.contains("active")) {
//                 search.classList.remove("active")
//             } else {
//                 search.classList.add("active")
//             }
//         });

//         cls.addEventListener('click', () => {
//             search.classList.remove("active")
//         });

      

//         document.addEventListener('scroll', () => {
//             let currentScrollValue = document.documentElement.scrollTop;
//             console.log(currentScrollValue)
//             if (currentScrollValue > 300) {
//                 header.animate({ opacity: "0" }, 500)
//                 header.animate({ opacity: "1" }, 500)
//             }
//         });
    </script>
     <script type="text/javascript" src="/js/search.js"></script>
    <script type="text/javascript" src="/js/index.js"></script>
</body>

</html>