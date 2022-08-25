<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>


    <link href="/css/custom.css" rel="stylesheet">
    <%-- JS  --%>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <title>오늘의 아이디어스!</title>
</head>

<body>

<!-- Page Wrapper -->
<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item"><div>홈</div></a></li>
            <li class="sidbtn"><a href="/idea/" class="item"><div>아이디어 공모</div></a></li>
            <li class="sidbtn"><a href="/vote/list" class="item"><div>투표하기</div></a></li>
            <li class="sidbtn"><a href="/board/" class="item"><div>자유게시판</div></a></li>
            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais</div>
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
        </div>
    </div>
</div>
</body>

</html>
