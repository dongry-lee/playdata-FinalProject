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

    <title>진행중인 공모</title>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
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
            <a href="/member/login"><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button  type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 10px;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px" style="width: auto;">마이페이지</button></a>
             </span>

                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>
                </c:if>
            </div>
            <%--            <c:if test="${sessionScope.num != null}">--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--                환영합니다! ${sessionScope.name}님--%>
            <%--             </span>--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/logout"><button  type="button" class="login_button" size="10px">로그아웃</button></a>--%>
            <%--             </span>--%>

            <%--            </c:if>--%>
        </nav>
    </div>
</header>
<!-- Page Wrapper -->
<div class="wrapper">
    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item"><div>홈</div></a></li>
            <li class="sidbtn"><a href="/idea/" class="item"><div>아이디어 공모</div></a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item"><div>투표하기</div></a></li>
            <li class="sidbtn"><a href="/board/" class="item"><div>자유게시판</div></a></li>
            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais</div>
        </ul>
    </div>
    <!-- End of Sidemenu-->

    <div id="content">
        <div class="fg-head"><h2>자유게시판 <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/idea/add"><button  type="button" class="login_button" size="10px">글작성</button></a>
             </span></h2> </div>
        <div class="idea-form">
            <c:forEach var="b" items="${list}">
                <div class="idea-box">
                    <div class="idea-img">
                        <c:if test="${b.img1 != null}">
                            <img src="/idea/read_img?fname=${b.img1}&wnum=${b.wnum}">
                        </c:if>
                        <c:if test="${b.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if>
                    </div>
                    <div class="idea-info">
                        <div class="idea-content">
                            <h2><a href="/idea/detail?wnum=${b.wnum}">${b.title}</a></h2>
                            <p>${b.num.name}</p>
                            <p>${b.content}</p>
                            <p>${b.hash}</p>
                            <p>${b.wdate}</p>
                            <p>${b.ddate}</p>
                            <p>${b.views}</p>
                            <p>${b.part}</p>
                        </div>
                    </div>

                </div>

            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>





<%--    <!-- Content Wrapper -->--%>
<%--    <div id="content-wrapper" class="d-flex flex-column">--%>

<%--        <!-- Main Content -->--%>

<%--        <!-- End of Main Content -->--%>
<%--        <div id="content">--%>

<%--            <!-- Topbar -->--%>
<%--            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">--%>

<%--                <!-- Sidebar Toggle (Topbar) -->--%>
<%--                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">--%>
<%--                    <i class="fa fa-bars"></i>--%>
<%--                </button>--%>

<%--                <!-- Topbar Search -->--%>
<%--                <form action="/board/getbyall" method="post"--%>
<%--                      class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">--%>
<%--                    <div class="input-group">--%>
<%--                        <input name="val" type="text" class="form-control bg-light border-0 small" placeholder="Search for..."--%>
<%--                               aria-label="Search" aria-describedby="basic-addon2">--%>
<%--                        <div class="input-group-append">--%>
<%--                            <button class="btn btn-primary" type="submit">--%>
<%--                                search--%>
<%--                                <i class="fas fa-search fa-sm"></i>--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>

<%--                <!-- Topbar Navbar -->--%>
<%--                <c:if test="${empty sessionScope.id}">--%>
<%--                    <a href="/member/login">로그인</a>--%>
<%--                    <a href="/member/join">회원가입</a>--%>
<%--                </c:if>--%>
<%--                <c:if test="${not empty sessionScope.id}">--%>
<%--                    ${sessionScope.id }님 로그인중 /--%>
<%--                    <c:if test="${sessionScope.mem_type==false}">당신은 일반회원입니다</c:if>--%>
<%--                    <c:if test="${sessionScope.mem_type==true}">당신은 관리자입니다</c:if>--%>
<%--                    <a href="/member/detail">내정보확인</a><br/>--%>
<%--                    <a href="/member/logout">로그아웃</a><br/>--%>
<%--                    <a href="/member/out">탈퇴</a><br/>--%>
<%--                </c:if>--%>

<%--            </nav>--%>
<%--            &lt;%&ndash;  real content  &ndash;%&gt;--%>
<%--            <c:if test="${sessionScope.id!=null}">--%>
<%--            <a href="/board/add">글작성</a>--%>
<%--            </c:if>--%>
<%--            <section class="pt-4">--%>

<%--                <div class="container px-lg-5">--%>
<%--                    <!-- Page Features-->--%>
<%--                    <div class="row gx-lg-5">--%>
<%--                        <c:forEach var="b" items="${list}">--%>
<%--                            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                <div class="card bg-light border-0 h-100">--%>
<%--                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>--%>
<%--                                        <p class="mb-0">${b.writer.id}</p>--%>
<%--                                        <p class="mb-0">${b.content}</p>--%>
<%--                                        <p class="mb-0">${b.hash}</p>--%>
<%--                                        <c:if test="${b.img1!=null}">--%>
<%--                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">--%>
<%--                                        </c:if>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                        <hr>--%>
<%--                            <h1>제목으로 검색</h1>--%>
<%--                        <c:forEach var="b" items="${titleList}">--%>
<%--                            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                <div class="card bg-light border-0 h-100">--%>
<%--                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>--%>
<%--                                        <p class="mb-0">${b.writer.id}</p>--%>
<%--                                        <p class="mb-0">${b.content}</p>--%>
<%--                                        <p class="mb-0">${b.hash}</p>--%>
<%--                                        <c:if test="${b.img1!=null}">--%>
<%--                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">--%>
<%--                                        </c:if>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                        <hr>--%>
<%--                            <h1>작성자로 검색</h1>--%>
<%--                        <c:forEach var="b" items="${memberList}">--%>
<%--                            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                <div class="card bg-light border-0 h-100">--%>
<%--                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>--%>
<%--                                        <p class="mb-0">${b.writer.id}</p>--%>
<%--                                        <p class="mb-0">${b.content}</p>--%>
<%--                                        <p class="mb-0">${b.hash}</p>--%>
<%--                                        <c:if test="${b.img1!=null}">--%>
<%--                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">--%>
<%--                                        </c:if>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                        <hr>--%>
<%--                            <h1>내용으로 검색</h1>--%>
<%--                        <c:forEach var="b" items="${contentList}">--%>
<%--                            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                <div class="card bg-light border-0 h-100">--%>
<%--                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>--%>
<%--                                        <p class="mb-0">${b.writer.id}</p>--%>
<%--                                        <p class="mb-0">${b.content}</p>--%>
<%--                                        <p class="mb-0">${b.hash}</p>--%>
<%--                                        <c:if test="${b.img1!=null}">--%>
<%--                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">--%>
<%--                                        </c:if>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                        <hr>--%>
<%--                            <h1>hash로 검색</h1>--%>
<%--                        <c:forEach var="b" items="${hashList}">--%>
<%--                            <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                <div class="card bg-light border-0 h-100">--%>
<%--                                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                        <h2 class="fs-4 fw-bold"><a href="/board/detail?num=${b.num}">${b.title}</a></h2>--%>
<%--                                        <p class="mb-0">${b.writer.id}</p>--%>
<%--                                        <p class="mb-0">${b.content}</p>--%>
<%--                                        <p class="mb-0">${b.hash}</p>--%>
<%--                                        <c:if test="${b.img1!=null}">--%>
<%--                                            <img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">--%>
<%--                                        </c:if>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                            <hr>--%>
<%--                        <hr>--%>

<%--                    </div>--%>

<%--                </div>--%>
<%--            </section>--%>


<%--        &lt;%&ndash;  real content end  &ndash;%&gt;--%>


<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



<%--</body>--%>
<%--</html>--%>