<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/bootstrap/layout/member/main/main.scss" rel="stylesheet">


    <title>아이디어게시판 수정폼</title>
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

                <!-- Topbar Search -->
                <form action="/board/getbyall" method="post"
                      class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input name="val" type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit">
                                search
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
            <%--  real content  --%>
<<<<<<<< HEAD:Oais/target/DeepPocket-0.0.1-SNAPSHOT/WEB-INF/views/board/detailForm.jsp
            <c:if test="${sessionScope.id != b.writer.id }">
                <c:set var="readAttr">readonly</c:set> <!-- 변수 선언 태그 -->
            </c:if>
            <form action="/board/edit" method="post" enctype="multipart/form-data">
                <table border="1">
                    <tr><th>num</th><td><input type="text" name="num" value="${b.num}" readonly></td></tr>
                    <tr><th>writer</th><td><input type="text" name="writer" value="${b.writer.id}" readonly></td></tr>
                    <tr><th>title</th><td><input type="text" name="title" value="${b.title}" ${readAttr }></td></tr>
                    <tr><th>w_date</th><td><input type="text" value="${b.w_date}" readonly></td></tr>
                    <tr><th>hash</th><td><input type="text" name="hash" value="${b.hash}" ${readAttr }></td></tr>
                    <tr><th>content</th><td><textarea rows="15" cols="20" name="content" ${readAttr }>"${b.content}"</textarea></td></tr>
                    <%--    사진수정은 어떻게..?--%>
                    <tr><th>img1</th><td><input type="file" name="f" ${readAttr }></td>
                        <c:if test="${b.img1 !=null}">
                        <td><img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                        </td>
                        </c:if>
                    </tr>
                    <c:if test="${sessionScope.id==b.writer.id}" >
                        <tr><th>수정</th><td><input value="수정" type="submit"></td></tr>
                    </c:if>
                    <c:if test="${(sessionScope.id==b.writer.id) || (sessionScope.mem_type == true)}" >
                        <tr><th>삭제</th><td><input  type="button" value="삭제" onclick="location.href='/board/delete?num=${b.num}'"></td></tr>
                    </c:if>
========

            <form action="/idea/edit" method="post">
                <table border="1">
                    <tr><th>이거안보이게할거임</th><td><input type="text" name="wnum" value="${b.wnum}" readonly></td></tr>
                    <tr><th>title</th><td><input type="text" name="title" value="${b.title}"></td></tr>
                    <tr><th>name</th><td><input type="text" name="name" value="${b.num.name}" readonly></td></tr>
                    <tr><th>content</th><td><textarea rows="15" cols="20" name="content" >"${b.content}"</textarea></td></tr>
                    <tr><th>마감일자</th><td><input type="date" name="ddate" value="${b.ddate}"></td></tr>
                    <tr><th>hash</th><td><input type="text" name="hash" value="${b.hash}" ></td></tr>
                        <tr><th>수정</th><td><input value="수정" type="submit"></td></tr>

                        <tr><th>삭제</th><td><input  type="button" value="삭제" onclick="location.href='/idea/delete?wnum=${b.wnum}'"></td></tr>
>>>>>>>> jinwoong:Oais/src/main/webapp/WEB-INF/views/idea/editForm.jsp
                </table>
            </form>
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