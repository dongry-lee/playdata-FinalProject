<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-24
  Time: 오전 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>진행중인 투표</title>
    <%--style css--%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote.css" rel="stylesheet">
</head>
<body>

<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
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
            <li class="sidbtn"><a href="/vote/list" class="item">
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
        <div class="fg-head"><p>진행중인 아이디어 투표</p></div>
        <div class="vote-form">
            <a href="/voteboard/write">게시글 작성</a>
            <c:forEach var="item" items="${itemlist}">
            <div class="vote-box">
                <div class="vote-info">
                    <p class="vote-title">${item.title}</p>
                    <div class="vote-content">
                            ${item.content}

                    </div>


                </div>
                <div class="vote-img">
                    <img src="/img/catanddog.png">
                </div>
                <div class="vote-option">
                    <div class="option-select">
                        <div>
                            <span></span>
                            <input type="radio" id="count01" name="radio" value="${item.count01}"/><label><span></span>${item.item01}</label>
                            <input type="radio" id="count02" name="radio" value="${item.count02}"/><label><span></span>${item.item02}</label>
                        </div>

                    </div>
                </div>

            </div></c:forEach>


        </div>

    </div>

</div>

</body>

</html>
