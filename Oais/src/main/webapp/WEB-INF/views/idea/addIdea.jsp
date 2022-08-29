%--
Created by IntelliJ IDEA.
User: 27251
Date: 2022-08-10
Time: 오후 12:34
To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>아이디어 공모</title>--%>
<%--    <link href="/css/custom.css" rel="stylesheet">--%>
<%--    <link href="/css/idea.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<header>--%>
<%--    <div class="wrapper"> <!--전체 랩 -->--%>
<%--        <a href="https://www.naver.com"><h1 class=""></h1></a>--%>
<%--        <nav> <!-- 메뉴부분 -->--%>
<%--            <div class="search"> <!-- 검색창 -->--%>

<%--                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>--%>
<%--                <input type="text" placeholder="공모/투표/게시판 찾아보기">--%>
<%--                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->--%>
<%--            </div>--%>
<%--            <span style="padding: 5px; margin-top: 15px; border-radius:100px;"> <!-- 버튼 -->--%>
<%--            <a href=""><button  type="button" class="welcome_button" size="10px">환영합니다 도르마무님!</button></a>--%>
<%--             </span>--%>
<%--            <span class="icon"><i class=/img/icons8-bell-48.png"></i></span>--%>
<%--            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href=""><button  type="button" class="mypg_button" size="10px">마이페이지</button></a>--%>
<%--             </span>--%>
<%--        </nav>--%>
<%--    </div>--%>
<%--</header>--%>
<%--<!-- Page Wrapper -->--%>
<%--<div class="wrapper">--%>
<%--    <!-- Sidemenu -->--%>
<%--    <div class="menu">--%>
<%--        <ul class="sidemenu">--%>
<%--            <li class="sidbtn"><a href="/" class="item"><div>홈</div></a></li>--%>
<%--            <li class="sidbtn"><a href="/idea/" class="item"><div>아이디어 공모</div></a></li>--%>
<%--            <li class="sidbtn"><a href="/vote" class="item"><div>투표하기</div></a></li>--%>
<%--            <li class="sidbtn"><a href="/board/" class="item"><div>자유게시판</div></a></li>--%>
<%--            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>--%>
<%--            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>--%>
<%--                @2022 Oais</div>--%>
<%--        </ul>--%>
<%--    </div>--%>

<%--    <div id="content">--%>
<%--        <div class="fg-head"><h2>아이디어 공모<span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href=""><button  type="button" class="login_button" size="10px">작성</button></a>--%>
<%--             </span></h2></div>--%>
<%--        <div class="idea-form">--%>
<%--            <div class="idea-box">--%>
<%--&lt;%&ndash;                <div class="write-form">&ndash;%&gt;--%>
<%--                    <div class="write-info">--%>
<%--                        <div class="idea-content">--%>
<%--                            <c:forEach var="b" items="${list}">--%>
<%--                                <div class="col-lg-6 col-xxl-4 mb-5">--%>
<%--                                    <div class="card bg-light border-0 h-100">--%>
<%--                                        <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">--%>
<%--                                            <h2 class="fs-4 fw-bold"><a--%>
<%--                                                    href="/idea/detail?wnum=${b.wnum}">${b.title}</a></h2>--%>
<%--                                            <p class="mb-0">${b.num.name}</p>--%>
<%--                                            <p class="mb-0">${b.content}</p>--%>
<%--                                            <p class="mb-0">${b.hash}</p>--%>
<%--                                            <p class="mb-0">${b.wdate}</p>--%>
<%--                                            <p class="mb-0">${b.ddate}</p>--%>
<%--                                            <p class="mb-0">${b.views}</p>--%>
<%--                                            <p class="mb-0">${b.part}</p>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </c:forEach>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>

<%--                &lt;%&ndash;  real content  &ndash;%&gt;--%>
<%--                &lt;%&ndash;            <c:forEach var="b" items="${list}">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                <div class="col-lg-6 col-xxl-4 mb-5">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    <div class="card bg-light border-0 h-100">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                        <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <h2 class="fs-4 fw-bold"><a href="/idea/detail?wnum=${b.wnum}">${b.title}</a></h2>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.num.name}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.content}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.hash}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.wdate}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.ddate}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.views}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <p class="mb-0">${b.part}</p>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--                &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                &lt;%&ndash;            </c:forEach>&ndash;%&gt;--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</body>--%>
<%--</html>--%>
