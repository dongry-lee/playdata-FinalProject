<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-24
  Time: 오전 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>진행중인 투표</title>
    <%--style css--%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote.css" rel="stylesheet">
</head>
<body>

<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search">
                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
                </div>
            </form>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span></nav>
    </div>
</header>
<!-- Page Wrapper -->
<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item">
                <div>홈</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>아이디어 공모</div>
            </a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item">
                <div>투표하기</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="/service/list" class="item">
                <div>고객센터</div>
            </a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <div class="fg-head">
            <p>진행중인 아이디어 투표</p>
            <c:if test="${sessionScope.num != null}">
            <a class="addvote" href="/voteboard/write">게시글 작성</a>
            </c:if>
        </div>
        <div class="vote-form">
            <c:forEach var="item" items="${itemlist}">
            <div class="vote-box">
                <div class="vote-info">
                    <div class="vote-cntbox">
                        <p class="vote-title"><a href="/voteboard/detail?wnum=${item.wnum}">${item.title}</a></p>
                        <div class="vote-content">
                                ${item.content}
                        </div>
                    </div>
                    <div class="vote-img">
                        <c:if test="${item.img1 != null}"><%--삽입한 이미지파일1이 null이 아닐때 이미지출력--%>
                        <img src="/read_img?fname=${item.img1}&wnum=${item.wnum}"><%--삽입한 이미지파일1 출력--%>
                        </c:if>
                    </div>
                    <div class="vote-option">
                        <div class="option-select">
                            <div>
                                <form action="/voteboard/resultpro" method="post">
                                    <input type="hidden" name="wnum" value="${item.wnum}">
                                    <div class="voteitmrad">
                                    <input type="radio" id="vote1" name="item" value="${item.item01}"/>
                                        <label>${item.item01}</label>
                                    </div>
                                    <div class="voteitmrad">
                                    <input type="radio" id="vote2" name="item" value="${item.item02}"/>
                                        <label>${item.item02}</label>
                                    </div>
                                    <c:if test="${item.item03!=null && item.item03!=''}">
                                    <div class="voteitmrad">
                                        <input type="radio" id="vote3" name="item" value="${item.item03}"/>
                                        <label>${item.item03}</label>
                                    </div>
                                    </c:if>
                                    <c:if test="${item.item04!=null && item.item04!=''}">
                                    <div class="voteitmrad">
                                        <input type="radio" id="vote4" name="item" value="${item.item04}"/>
                                        <label>${item.item04}</label>
                                    </div>
                                    </c:if>

                                    <%--로그인안했다면 투표 불가능--%>
                                    <c:if test="${(sessionScope.domtype==false)}">
                                    <button>투표</button>
                                    </c:if>
                                    <span>투표 마감일 : ${item.wdate}</span>
                                </form>

                                    <%--라디오버튼 누르고 투표시 투표항목 투표수 출력--%>

<%--                                <jsp:include page="/voteboard/count?item=${item.item01}"></jsp:include>--%>
<%--                                <jsp:include page="/voteboard/count?item=${item.item02}"></jsp:include>--%>
<%--                                <c:if test="${item.item03!=null && item.item03!=''}">&lt;%&ndash;투표항목3이 null or 공백이 아니라면 투표항목3 투표수 출력&ndash;%&gt;--%>
<%--                                    <jsp:include page="/voteboard/count?item=${item.item03}"></jsp:include>--%>
<%--                                </c:if>--%>
<%--                                <c:if test="${item.item04!=null && item.item04!=''}">&lt;%&ndash;투표항목4가 null or 공백이 아니라면 투표항목4 투표수 출력&ndash;%&gt;--%>
<%--                                    <jsp:include page="/voteboard/count?item=${item.item04}"></jsp:include>--%>
<%--                                </c:if>--%>
<%--                                    &lt;%&ndash;총투표수 출력&ndash;%&gt;--%>
<%--                                <jsp:include page="/voteboard/totalcount?wnum=${item.wnum}"></jsp:include>--%>

                                <jsp:include page="/voteboard/count?item01=${item.item01}&item02=${item.item02}&item03=${item.item03}&item04=${item.item04}&wnum=${item.wnum}"></jsp:include>

                                    <input name="num.num" type="hidden" value="${sessionScope.num}">
                                    <input name="wnum" type="hidden" value="${item.wnum}">
                                    <c:if test="${(sessionScope.id==item.num.mid)}"> <%--글작성자 num과 로그인중num이 같을때만 수정버튼을 보여줌--%>
                                        <button onclick="location.href='/voteboard/edit?wnum=${item.wnum}'">수정</button>
                                    </c:if>
                                </form>
                                <form action="/voteboard/delVoteBoard">
                                    <input name="num.num" type="hidden" value="${sessionScope.num}">
                                    <input name="wnum" type="hidden" value="${item.wnum}">
                                    <c:if test="${(sessionScope.id==item.num.mid)}"> <%--글작성자 num과 로그인중num이 같을때만 삭제버튼을 보여줌--%>
                                        <button>삭제</button>
                                    </c:if>
                                </form>
                                    <%--스크랩버튼--%>
                                <c:if test="${sessionScope.num!=null}">
                                    <div class="scrap button">
                                        <button onclick="location.href='/scrap/vote/add?num=${sessionScope.num}&wnum2=${item.wnum}'">스크랩</button>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
</body>
</html>