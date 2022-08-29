<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-29
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<%--   css  --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/mypage.css" rel="stylesheet">

<%--  JS  --%>
    <script src="/js/mypage.js"></script>
    <title>마이페이지</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                환영합니다! ${sessionScope.name}님
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/out"><button type="button" class="login_button" size="10px">탈퇴</button></a>
             </span>
            </c:if>


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
            <li class="sidbtn"><a href="/board/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
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
        <div class="myinfo">
            <h2>내 정보</h2>
            <div>
                <input id="" name="" type="text"> <button>내 정보 수정</button>
            </div>
            <div>
                <input id="" name="" type="text"> <button>회원 탈퇴</button>
            </div>
        </div>
        <div>
            <div class="tab">
                <button class="tablinks" onclick="openmytab(event, 'MyUpload')">내 업로드</button>
                <button class="tablinks" onclick="openmytab(event, 'MyPartic')">내가 참여한</button>
                <button class="tablinks" onclick="openmytab(event, 'MyScrap')">내 스크랩</button>
            </div>

            <div id="MyUpload" class="tabcontent" style="display: block">
                <h3>내 업로드</h3>
                <p>내가 업로드한 아이디어 및 투표</p>
            </div>

            <div id="MyPartic" class="tabcontent">
                <h3>내가 참여한</h3>
                <p>내가 참여한 아이디어 및 투표 게시글</p>
            </div>

            <div id="MyScrap" class="tabcontent">
                <h3>내 스크랩</h3>
                <p>스크랩한 아이디어 및 투표 게시물</p>
            </div>
        </div>
    </div>
</div>


</body>
</html>
