<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-10
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="/bootstrap/layout/member/main/main.scss" rel="stylesheet">
    <link href="/bootstrap/css/custom.css" rel="stylesheet">
    <title>Title</title>
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
        <div id="content">

            <%--  real content  --%>
            <c:forEach var="b" items="${list}">
                <div class="col-lg-6 col-xxl-4 mb-5">
                    <div class="card bg-light border-0 h-100">
                        <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                            <h2 class="fs-4 fw-bold"><a href="/idea/detail?wnum=${b.wnum}">${b.title}</a></h2>
                            <p class="mb-0">${b.num.name}</p>
                            <p class="mb-0">${b.content}</p>
                            <p class="mb-0">${b.hash}</p>
                            <p class="mb-0">${b.wdate}</p>
                            <p class="mb-0">${b.ddate}</p>
                            <p class="mb-0">${b.views}</p>
                            <p class="mb-0">${b.part}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
