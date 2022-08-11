<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-11
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/bootstrap/layout/member/main/main.scss" rel="stylesheet">


    <title>Title</title>
</head>
<body>
<!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>

    <!-- Topbar Search -->
    <form
            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
        <div class="input-group">
            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                   aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fas fa-search fa-sm"></i>
                </button>
            </div>
        </div>
    </form>
    <!-- Topbar Navbar -->
    <c:if test="${empty sessionScope.id}">
        <a href="/member/login">로그인</a>
        <a href="/member/join">회원가입</a>
    </c:if>
    <c:if test="${not empty sessionScope.id}">
        ${sessionScope.id }님 로그인중 /
        <c:if test="${sessionScope.mem_type==false}">당신은 일반회원입니다</c:if>
        <c:if test="${sessionScope.mem_type==true}">당신은 관리자입니다</c:if>
        <a href="/member/detail">내정보확인</a><br/>
        <a href="/member/logout">로그아웃</a><br/>
        <a href="/member/out">탈퇴</a><br/>
    </c:if>
</nav>
</body>
</html>
