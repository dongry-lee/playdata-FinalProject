<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-24
  Time: 오전 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>진행중인 투표</title>
    <%--style css--%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote.css" rel="stylesheet">
</head>
<body>
<!-- Page Wrapper -->
<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item"><div>홈</div></a></li>
            <li class="sidbtn"><a href="/idea/" class="item"><div>아이디어 공모</div></a></li>
            <li class="sidbtn"><a href="/vote" class="item"><div>투표하기</div></a></li>
            <li class="sidbtn"><a href="/board/" class="item"><div>자유게시판</div></a></li>
            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais</div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <div class="fg-head"><h1>진행중인 아이디어 투표</h1></div>
        <div class="vote-form">
            <div class="vote-box">
                <div class="vote-info">
                    <h1 class="vote-title">강아지 vs 고양이</h1>
                    <div class="vote-content">
                        뭐 키울까요?
                    </div>

                </div>
                <div class="vote-img">
                    <img src="/bootstrap/img/catanddog.png">
                </div>
                <div class="vote-option">
                    <div class="option-select">
                        <div>
                            <span></span>
                            <input type="radio" id="" name="강아지" /><label><span></span>강아지</label>
                            <input type="radio" id="" name="고양이" /><label><span></span>고양이</label>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
