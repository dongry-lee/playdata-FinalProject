<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>


    <link href="/css/custom.css" rel="stylesheet">
    <%-- JS  --%>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <title>오늘의 아이디어스!</title>
</head>

<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search">

                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->

                </div>
            </form>
            <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <div class="button-group" style="display: flex; align-content: space-between;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px"
                                             style="width: auto;">마이페이지</button></a>
             </span>

                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>
                </c:if>
            </div>
            <%--            <c:if test="${sessionScope.num != null}">--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--                환영합니다! ${sessionScope.name}님--%>
            <%--             </span>--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>--%>
            <%--             </span>--%>

            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>--%>
            <%--             </span>--%>

            <%--            </c:if>--%>


        </nav>
    </div>
</header>

<!-- Page Wrapper -->
<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item">
                <div>홈</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>아이디어 공모</div>
            </a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item">
                <div>투표하기</div>
            </a></li>
            <li class="sidbtn"><a href="/community/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="/service/" class="item">
                <div>고객센터</div>
            </a></li>
            <br class="hhd">이용약관ㆍ<br/>
            개인정보처리방침<br/>
            @2022 Oais
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <div class="slidebanner-box">
            <!-- Swiper -->
            <div class="banner-container">
                <div class="banner">
                    <div data-index=1></div>
                    <div data-index=2></div>
                    <div data-index=3></div>
                    <div data-index=4></div>
                </div>
            </div>
            <div class="list-button">
                <span class="list-button-item active"></span>
                <span class="list-button-item"></span>
                <span class="list-button-item"></span>
                <span class="list-button-item"></span>
            </div>

            <%-- real Content--%>
            <div class="hedtitle">
                <p class="hottitle" style="margin-right: 580px">Hot 아이디어 🔥</p>
                <p class="hottitle">Hot 투표🗳️</p>
            </div>
            <div class="hothotbox">
                <div class="hotidbox">
                    <c:forEach var="item" items="${hotList}">
                        <div class="hotidea" onclick="location.href='/idea/detail?wnum=${item.wnum}'">
                            <c:if test="${item.img1 != null && item.img1!=''}">
                                <img class="hotimg" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                            </c:if>
                            <div>
                                <p href="/idea/detail?wnum=${item.wnum}">${item.title}</p>
                                <p>아이디어 참여 인원 : ${item.part}</p>
                                <p>조회수 : ${item.views}</p>
                                <p>해시태그 : <c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                                    <c:forEach var="hashelement" items="${hashtag}">
                                        <c:if test="${hashelement != ''}">
                                            <a href="/search?val=${hashelement}">#${hashelement}</a>
                                        </c:if>
                                    </c:forEach>
                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="hotvotebox">
                    <div class="hotvote">
                        <h2>오늘 점심 메뉴 추천 투표</h2>
                        <div class="vovoto">

                            <div>
                                <input type="radio" name="vote">
                                <span>군만두</span>
                                <progress value="20" max="200"></progress>
                            </div>
                            <div>
                                <input type="radio" name="vote">
                                <span>물만두</span>
                                <progress value="20" max="200"></progress>
                            </div>
                            <div>
                                <input type="radio" name="vote">
                                <span>찐만두</span>
                                <progress value="20" max="200"></progress>
                            </div>
                            <div>
                                <input type="radio" name="vote">
                                <span>카트만두</span>
                                <progress value="20" max="200"></progress>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
