<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Deep Pocket - Community</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/bootstrap/css/list.css" rel="stylesheet" />




    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/bootstrap/layout/member/main/main.scss" rel="stylesheet">
<script>

</script>
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
            <a class="nav-link collapsed" href="/idea/addIdea" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>진행중인 아이디어</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Login Screens:</h6>
                    <a class="collapse-item" href="login.html">Login</a>
                    <a class="collapse-item" href="register.html">Register</a>
                    <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                    <div class="collapse-divider"></div>
                    <h6 class="collapse-header">Other Pages:</h6>
                    <a class="collapse-item" href="404.html">404 Page</a>
                    <a class="collapse-item" href="blank.html">Blank Page</a>
                </div>
            </div>
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
            <section class="pt-4">

                <div class="container px-lg-5">
                    <!-- Page Features-->
                    <div class="row gx-lg-5">
                        <c:forEach var="b" items="${list}">
                            <div class="col-lg-6 col-xxl-4 mb-5">
                                <div class="card bg-light border-0 h-100">
                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                                        <p class="mb-0">${b.writer.id}</p>
                                        <p class="mb-0">${b.content}</p>
                                        <p class="mb-0">${b.hash}</p>
                                        <c:if test="${b.img1!=null}">
                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        <hr>
                        </c:forEach>
                            <h1>제목으로 검색</h1>
                        <c:forEach var="b" items="${titleList}">
                            <div class="col-lg-6 col-xxl-4 mb-5">
                                <div class="card bg-light border-0 h-100">
                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                                        <p class="mb-0">${b.writer.id}</p>
                                        <p class="mb-0">${b.content}</p>
                                        <p class="mb-0">${b.hash}</p>
                                        <c:if test="${b.img1!=null}">
                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <hr>
                            <h1>작성자로 검색</h1>
                        <c:forEach var="b" items="${memberList}">
                            <div class="col-lg-6 col-xxl-4 mb-5">
                                <div class="card bg-light border-0 h-100">
                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                                        <p class="mb-0">${b.writer.id}</p>
                                        <p class="mb-0">${b.content}</p>
                                        <p class="mb-0">${b.hash}</p>
                                        <c:if test="${b.img1!=null}">
                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <hr>
                            <h1>내용으로 검색</h1>
                        <c:forEach var="b" items="${contentList}">
                            <div class="col-lg-6 col-xxl-4 mb-5">
                                <div class="card bg-light border-0 h-100">
                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                                        <p class="mb-0">${b.writer.id}</p>
                                        <p class="mb-0">${b.content}</p>
                                        <p class="mb-0">${b.hash}</p>
                                        <c:if test="${b.img1!=null}">
                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <hr>
                            <h1>hash로 검색</h1>
                        <c:forEach var="b" items="${hashList}">
                            <div class="col-lg-6 col-xxl-4 mb-5">
                                <div class="card bg-light border-0 h-100">
                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>
                                        <p class="mb-0">${b.writer.id}</p>
                                        <p class="mb-0">${b.content}</p>
                                        <p class="mb-0">${b.hash}</p>
                                        <c:if test="${b.img1!=null}">
                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                            <hr>
                        </c:forEach>
                        <hr>

                    </div>

                </div>
            </section>


        <%--  real content end  --%>


        </div>
    </div>
</div>



</body>
</html>