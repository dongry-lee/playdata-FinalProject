<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
    
    <title>DeePocket</title>
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
            <a class="nav-link" href="/idea/list">
                <span>진행중인 아이디어</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="charts.html">
                <span>투표하기</span></a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="/board/">
                <span>자유게시판</span></a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="tables.html">
                <span>Q&A</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

    </ul>
    <!-- End of Sidebar -->




    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
        <%-- header bar --%>
        <nav class="navbar navbar-expand navbar-light bg-white topbar static-top shadow">

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
                <a class="sg-button btnFade btnLight" href="/member/login">로그인</a>
                <a class="sg-button btnFade btnLight" href="/member/join">회원가입</a>
            </c:if>
            <c:if test="${not empty sessionScope.id}">
                ${sessionScope.id }님 로그인중 /
                <c:if test="${sessionScope.mem_type==false}">당신은 일반회원입니다</c:if>
                <c:if test="${sessionScope.mem_type==true}">당신은 관리자입니다</c:if>
                <a class="sg-button" href="/member/detail">내정보확인</a><br/>
                <a class="sg-button" href="/member/logout">로그아웃</a><br/>
                <a class="sg-button" href="/member/out">탈퇴</a><br/>
            </c:if>

        </nav>
        <!-- header bar -->
        <div id="content">
            <%--  real content  --%>


                <h3>글작성 폼</h3>
                <form action="/board/add" method="post" enctype="multipart/form-data">

                    <table border="1">
                        <tr><th>writer</th><td><input type="text" name="writer" value="${sessionScope.id }"readonly></td></tr>
                        <tr><th>title</th><td><input type="text" name="title"></td></tr>
                        <tr><th>content</th><td><textarea rows="15" cols="20" name="content"></textarea></td></tr>
                        <tr><th>hash</th><td><input type="text" name="hash"></td></tr>
                        <tr><th>img</th><td><input type="file" name="f"></td></tr>
                        <tr><th>save</th><td><input type="submit" value="작성"><a href="/board/">취소</a></td></tr>

                    </table>

                </form>
            
            <%--  main content   --%>
            <div class="main-content">
                <div class="totalbox">
                    <div class="hot-idea">
                        <div class="ideabox"></div>

                    </div>
                    <div class="hot-vote">
                        <div class="vote-box"></div>
                    </div>
                </div>
            </div>
            <%--  real content end  --%>



        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<%--<script src="vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

<%--<!-- Core plugin JavaScript-->--%>
<%--<script src="vendor/jquery-easing/jquery.easing.min.js"></script>--%>

<%--<!-- Custom scripts for all pages-->--%>
<%--<script src="js/sb-admin-2.min.js"></script>--%>

<%--<!-- Page level plugins -->--%>
<%--<script src="vendor/chart.js/Chart.min.js"></script>--%>

<!-- Page level custom scripts -->
<%--<script src="js/demo/chart-area-demo.js"></script>--%>
<%--<script src="js/demo/chart-pie-demo.js"></script>--%>
<%-- JS   --%>
<script src="/bootstrap/js/main.js"></script>

</body>

</html>