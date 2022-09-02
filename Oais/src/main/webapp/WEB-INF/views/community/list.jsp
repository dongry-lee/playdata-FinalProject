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
    <title>자유게시판</title>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <link href="/css/community.css" rel="stylesheet">
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search">

                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
                </div>
            </form>
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
            <li class="sidbtn"><a href="/service/list" class="item"><div>고객센터</div></a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais</div>
        </ul>
    </div>
    <!-- End of Sidemenu-->

    <!-- Content Wrapper -->
    <div id="content">
        <div class="fg-head"><h2>자유게시판 <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/community/add"><button  type="button" class="login_button" size="10px">글작성</button></a>
             </span></h2></div>
        <div class="idea-form">
            <c:forEach var="b" items="${list}">
                <div class="idea-box">
                    <div class="idea-img">
                        <c:if test="${b.img1 != null}">
                            <img width="300px" height="300px" src="/community/read_img?fname=${b.img1}&wnum=${b.wnum}">
                        </c:if>
                        <c:if test="${b.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if>
                    </div>
                    <div class="idea-info">
                        <div class="idea-content">
                            <h2><a href="/community/detail?wnum=${b.wnum}">${b.title}</a></h2>
                            <p>${b.num.name}</p>
                            <p>${b.content}</p>
                            <p>${b.hash}</p>
                            <p>${b.wdate}</p>
                            <p>${b.ddate}</p>
                            <p>${b.views}</p>
                            <p>${b.part}</p>
                        </div>
                    </div>
                    <c:if test="${sessionScope.num!=null}">
                        <div class="scrap button">
                            <button onclick="location.href='/scrap/add?num=${sessionScope.num}&wnum=${b.wnum}'">스크랩</button>
                        </div>
                    </c:if>

                </div>

            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>

















<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: idong-geun--%>
<%--  Date: 2022/08/31--%>
<%--  Time: 2:13 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>자유게시판</title>--%>
<%--    <link href="/css/custom.css" rel="stylesheet">--%>
<%--    <link href="/css/idea.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<header>--%>
<%--    <div class="wrapper"> <!--전체 랩 -->--%>
<%--        <a href="/"><h1></h1></a>--%>
<%--        <nav> <!-- 메뉴부분 -->--%>
<%--            <form action="/search" method="get"> <!-- 검색창 -->--%>
<%--                <div class="search">--%>

<%--                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">--%>
<%--                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>--%>
<%--                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->--%>
<%--                </div>--%>
<%--            </form>--%>
<%--            <c:if test="${sessionScope.num == null}">--%>
<%--            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href="/member/login"><button  type="button" class="login_button" size="10px">로그인</button></a>--%>
<%--             </span>--%>
<%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href="/member/join"><button  type="button" class="login_button" size="10px">회원가입</button></a>--%>
<%--             </span>--%>
<%--            </c:if>--%>
<%--            <c:if test="${sessionScope.num != null}">--%>
<%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--                환영합니다! ${sessionScope.name}님--%>
<%--             </span>--%>
<%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href="/member/logout"><button  type="button" class="login_button" size="10px">로그아웃</button></a>--%>
<%--             </span>--%>

<%--            </c:if>--%>
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
<%--            <li class="sidbtn"><a href="/voteboard/list" class="item"><div>투표하기</div></a></li>--%>
<%--            <li class="sidbtn"><a href="/community/" class="item"><div>자유게시판</div></a></li>--%>
<%--            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>--%>
<%--            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>--%>
<%--                @2022 Oais</div>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--    <!-- End of Sidemenu-->--%>
<%--    <!-- Content Wrapper -->--%>
<%--    <div id="content">--%>
<%--        <div class="fg-head"><h2>진행중인 아이디어 공모 <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
<%--            <a href="/community/add"><button  type="button" class="login_button" size="10px">글작성</button></a>--%>
<%--             </span></h2> </div>--%>
<%--        <div class="idea-form">--%>
<%--            <c:forEach var="b" items="${list}">--%>
<%--                <div class="idea-box">--%>
<%--                    <div class="idea-img">--%>
<%--                        <c:if test="${b.img1 != null}">--%>
<%--                            <img width="300px" height="300px" src="/idea/read_img?fname=${b.img1}&wnum=${b.wnum}">--%>
<%--                        </c:if>--%>
<%--                        <c:if test="${b.img1 == null}">--%>
<%--                            <div>이미지가 없습니다.</div>--%>
<%--                        </c:if>--%>
<%--                    </div>--%>
<%--                    <div class="idea-info">--%>
<%--                        <div class="idea-content">--%>
<%--                            <h2><a href="/community/detail?wnum=${b.wnum}">${b.title}</a></h2>--%>
<%--                            <p>${b.num.name}</p>--%>
<%--                            <p>${b.content}</p>--%>
<%--                            <p>${b.wdate}</p>--%>
<%--                            <p>${b.views}</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <c:if test="${sessionScope.num!=null}">--%>
<%--                        <div class="scrap button">--%>
<%--                            <button onclick="location.href='/scrap/add?num=${sessionScope.num}&wnum=${b.wnum}'">스크랩</button>--%>
<%--                        </div>--%>
<%--                    </c:if>--%>

<%--                </div>--%>

<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
