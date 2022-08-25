<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어게시판 글 상세페이지</title>

    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/bootstrap/layout/member/main/main.scss" rel="stylesheet">


</head>
<body id="page-top">






<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">DeePocket</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <li class="nav-item">
            <a class="nav-link collapsed" href="/idea/" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>진행중인 아이디어</span>
            </a>

        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="charts.html">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>투표하기</span></a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="/board/">
                <i class="fas fa-fw fa-table"></i>
                <span>자유게시판</span></a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="tables.html">
                <i class="fas fa-fw fa-table"></i>
                <span>Q&A</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <%--        <div class="text-center d-none d-md-inline">--%>
        <%--        <button class="rounded-circle border-0" id="sidebarToggle"></button>--%>
        <%--    </div>--%>

        <!-- Sidebar Message -->
        <%--        <div class="sidebar-card d-none d-lg-flex">--%>
        <%--            <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">--%>
        <%--            <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>--%>
        <%--            <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>--%>
        <%--        </div>--%>

    </ul>
    <!-- End of Sidebar -->




    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->

        <!-- End of Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


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
            <%--  real content  --%>


                <table border="1">
                    <tr><th>title</th><td><input type="text" name="title" value="${b.title}" readonly></td></tr>
                    <tr><th>name</th><td><input type="text" name="writer" value="${b.num.name}" readonly></td></tr>
                    <tr><th>등록일자</th><td><input type="text" value="${b.wdate}" readonly></td></tr>
                    <tr><th>마감일자</th><td><input type="text" value="${b.ddate}" readonly></td></tr>

                    <tr><th>hash</th><td><input type="text" name="hash" value="${b.hash}" readonly></td></tr>
                    <tr><th>content</th><td><textarea rows="15" cols="20" name="content" readonly>"${b.content}"</textarea></td></tr>
                    <c:if test="${sessionScope.id==b.num.mid}" >
                        <tr><th>수정</th><td><a href="/idea/edit?wnum=${b.wnum}">수정</a></td></tr>
                    </c:if>

                </table>

                <h3>댓글</h3>
            <form action="/idea/detail" method="post">
                <input type="text" name="wnum" value="${b.wnum}" readonly><%-- 안보이게 만들어야함 --%>
                <input type="text" name="num" value="${sessionScope.num}" readonly><%-- 안보이게 만들어야함 --%>
                <input type="text" value="${sessionScope.name}" readonly>
                <input type="text" name="content" placeholder="댓글을 입력해주세요">
                <input type="submit" value="댓글달기">
            </form>
                <table>
                <c:forEach var="c" items="${comments}">
                    <tr><td>${c.num.name}</td><td>${c.cdate}</td><td>${c.content}</td>
                        <c:if test="${sessionScope.num == c.num.num}">
                        <td><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}">삭제</a></td>
                        </c:if>
                    </tr>
                </c:forEach>
                </table>

            <%--  real content end  --%>
            <h3>Deepocket</h3>


        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>



</body>
</html>