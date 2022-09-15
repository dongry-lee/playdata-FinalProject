<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-29
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>

<%--   css  --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/mypage.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>
<%--  JS  --%>
    <script src="/js/mypage.js"></script>
    <title>마이페이지</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기" style="margin: 20px 0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i
                            class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
            <div class="button-group"
                 style="display: flex; align-content: space-between; margin-left: 1100px; position: absolute;">
                <c:if test="${sessionScope.num == null}">
                 <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="join_button" size="10px">회원가입</button></a>
             </span>
                </c:if>
            </div>
            <div class="button-group"
                 style="display: flex; align-content: space-between;margin-left: 1100px;margin-top: 5px; position: absolute;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 0px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>

                    <span style="padding: 13px; margin-top: 0px; border-radius:100px;">
                    <a href="/member/mypage"><button class="mypg_button"><span style="color:#3CA6AD"><i
                            class="fa-thin fa-user fa-lg"></i></span></button>
            </a>
             </span>
                    <span style="padding: 0px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button class="logout_button"><i class="fa-thin fa-door-open"></i></button></a>
             </span>
                </c:if>
            </div>
        </nav>
    </div>
</header>

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
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <h2>내 정보</h2>
        <div class="myinfo">
            <form action="/member/mypage" method="post">
            <div>
                <input class="infotext" type="text" value="${m.mid}" readonly> <input class="info-btn" type="submit" value="내 정보 수정">
            </div>
            <div>
                <input class="infotext" type="text" name="name" value="${m.name}"> <a class="info-btn" href="/member/out">회원탈퇴</a>
            </div>
            </form>
        </div>
        <div class="tabbox">
            <div class="tab">
                <button class="tablinks" onclick="openmytab(event, 'MyUpload')">내 업로드</button>
                <button class="tablinks" onclick="openmytab(event, 'MyPartic')">내가 참여한</button>
                <button class="tablinks" onclick="openmytab(event, 'MyScrap')">내 스크랩</button>
            </div>

            <div id="MyUpload" class="tabcontent" style="display: flex">

                <c:forEach var="item" items="${myUploadList}">
                    <div class="upbox">
                    <c:if test="${item.img1 != null && item.img1!=''}">
                    <img class="mp-uplodimg" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                    </c:if>
                    <a class="uptitle" href="/idea/detail?wnum=${item.wnum}">${item.title}</a>
                    <p>아이디어 참여 인원 : ${item.part}</p>
                    <p>조회수 : ${item.views}</p>
                    <p class="mp-upload-hash"><c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                        <c:forEach var="hashelement" items="${hashtag}">
                            <a href="/search?val=${hashelement}">#${hashelement}</a>
                        </c:forEach>
                    </p>

                    </div>
                </c:forEach>

                <c:forEach var="item" items="${myUploadVoteList}">
                    <div class="upbox">
                        <c:if test="${item.img1 != null && item.img1!=''}">
                            <img class="mp-uplodimg" src="/read_img?fname=${item.img1}&wnum=${item.wnum}">
                        </c:if>
                        <a class="uptitle" href="/voteboard/detail?wnum=${item.wnum}">${item.title}</a>
                        <p>조회수 : ${item.views}</p>
                        <p class="mp-upload-hash"><c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                            <c:forEach var="hashelement" items="${hashtag}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:forEach>
                        </p>

                    </div>
                </c:forEach>

            </div>

            <div id="MyPartic" class="tabcontent">
                <h3>내가 참여한</h3>
                    <c:forEach var="item" items="${myPartList}">
                        <div class="upbox">
                        <c:if test="${item.wnum.img1 != null && item.wnum.img1!=''}">
                            <img class="mp-uplodimg" width="300px" height="300px" src="/idea/read_img?fname=${item.wnum.img1}&wnum=${item.wnum.wnum}">
                        </c:if>

                        <a  class="uptitle" href="/idea/detail?wnum=${item.wnum.wnum}">${item.wnum.title}</a>
                        <p>투표 참여인원: ${item.wnum.part}</p>
                        <p>조회수 : ${item.wnum.views}</p>
                        <p class="mp-upload-hash"><c:set var="hashtag" value="${fn:split(item.wnum.hash,'#')}"/>
                            <c:forEach var="hashelement" items="${hashtag}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:forEach>
                        </p>
                     </div>
                    </c:forEach>
            </div>

            <div id="MyScrap" class="tabcontent">
                <h3>내 스크랩</h3>
                <c:forEach var="item" items="${myScrapList}">
                    <c:if test="${item.wnum2 == null}">
                    <c:if test="${item.wnum.img1 != null && item.wnum.img1!=''}">
                        <img class="mp-uplodimg" width="300px" height="300px" src="/idea/read_img?fname=${item.wnum.img1}&wnum=${item.wnum.wnum}">
                    </c:if>
                    <a href="/idea/detail?wnum=${item.wnum.wnum}">${item.wnum.title}</a>
                    <p>${item.wnum.part}</p>
                    <p>${item.wnum.views}</p>
                    <p><c:set var="hashtag" value="${fn:split(item.wnum.hash,'#')}"/>
                        <c:forEach var="hashelement" items="${hashtag}">
                            <c:if test="${hashelement != ''}">
                            <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:if>
                        </c:forEach>
                    </p>
                    <button onclick="location.href='/scrap/del?snum=${item.snum}'">스크랩삭제</button>
                    </c:if>
                </c:forEach>
                <c:forEach var="item" items="${myScrapList}">
                    <c:if test="${item.wnum == null}">
                    <c:if test="${item.wnum2.img1 != null && item.wnum2.img1!=''}">
                        <img class="mp-uplodimg" width="300px" height="300px" src="/read_img?fname=${item.wnum2.img1}&wnum=${item.wnum2.wnum}">
                    </c:if>
                    <a href="/voteboard/detail?wnum=${item.wnum2.wnum}">${item.wnum2.title}</a>
                    <p>${item.wnum2.views}</p>
                    <p><c:set var="hashtag" value="${fn:split(item.wnum2.hash,'#')}"/>
                        <c:forEach var="hashelement" items="${hashtag}">
                            <c:if test="${hashelement != ''}">
                                <a href="/search?val=${hashelement}">#${hashelement}</a>
                            </c:if>
                        </c:forEach>
                    </p>
                    <button onclick="location.href='/scrap/del?snum=${item.snum}'">스크랩삭제</button>
                    </c:if>
                </c:forEach>
            </div>

        </div>
    </div>
</div>


</body>
</html>
