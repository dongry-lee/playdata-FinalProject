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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>

</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search" style="position: absolute;">
                      <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                      <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
            <div class="button-group" style="display: flex; align-content: space-between; margin-left: 800px; position: absolute;">
             <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button  type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
            </c:if>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 10px;margin-left: 950px; position: absolute;">
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
            <li class="sidbtn"><a href="/service/" class="item"><div>고객센터</div></a></li>
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
                    <h2 style="font-size: 31px; position: absolute;width: 611px;height: 35px;left: 240px;top: 163px;">
                        <a href="/community/detail?wnum=${b.wnum}">${b.title}</a></h2>
                    <div class="idea-img">
                        <c:if test="${b.img1 != null}">
                            <img width="300px" height="300px" src="/community/read_img?fname=${b.img1}&wnum=${b.wnum}">
                        </c:if>
                        <c:if test="${b.img1 == null}">
                            <div>이미지가 없습니다.</div>
                        </c:if><br>
                        <p style="font-size: 12px;">조회수:${b.views}</p>
                    </div>
                    <div class="idea-info"style="width: 500px;">
                        <div class="idea-content">
                            <div class="wrote" style="font-size: 20px;">작성자:${b.num.name}</div>
                            <div class="realcontent" style="position: absolute;width: 484px;height: 26px;left: 590px;top: 245px;font-family: 'Inter';font-style: normal;font-weight: 400;font-size: 20px;line-height: 24px;">${b.content}</div>
                        </div>
                        <p style="position: absolute;
                                        width: 291px;
                                        height: 30px;
                                         left: 570px;
                                        top: 370px;
                                        font-family: 'Inter';
                                        font-style: normal;
                                         font-weight: 400;
                                         font-size: 13px;
                                    line-height: 24px;">게시글 작성일:${b.wdate}</p>

                        </div>
                    </div>

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
