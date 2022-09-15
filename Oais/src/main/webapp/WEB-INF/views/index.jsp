<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>


    <link href="/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <title>오늘의 아이디어스!</title>
</head>

<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->

                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder= "공모/투표/게시판 찾아보기" style="margin: 20px     0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                    <%--                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">--%>
                </div>

            </form>
            <div class="button-group" style="display: flex; align-content: space-between; margin-left: 1100px; position: absolute;">
                <c:if test="${sessionScope.num == null}">
             <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="join_button" size="10px">회원가입</button></a>
             </span>
                </c:if>
            </div>
            <div class="button-group" style="display: flex; align-content: space-between;margin-left: 940px; margin-top:5px;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 0px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>

                    <span style="padding: 13px; margin-top: 0px; border-radius:100px;">
                    <a href="/member/mypage"><button class="mypg_button"><span style="color:#3CA6AD"><i class="fa-thin fa-user fa-lg"></i></span></button>
            </a>
             </span>
                    <span style="padding: 0px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button class="logout_button"><i class="fa-thin fa-door-open"></i></button></a>

             </span>
                </c:if>
            </div>
            <%--            <c:if test="${sessionScope.num != null}">--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--                환영합니다! ${sessionScope.name}님--%>
            <%--             </span>--%>
            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>--%>
            <%--             </span>--%>

            <%--                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">--%>
            <%--            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>--%>
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
            <li class="sidbtn"><a href="/" class="item">
                <div>홈</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>아이디어 공모</div>
            </a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item">
                <div>투표하기</div>
            </a></li>
            <li class="sidbtn"><a href="/community/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="/service/" class="item">
                <div>고객센터</div>
            </a></li>
        </ul>
        <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
            @2022 Oais
        </div>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content"style="background-color: #f8f9fa;font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div class="slidebanner-box">
            <!-- Swiper -->
            <div class="banner-container">
                <div class="banner">
                    <div data-index=1>
                        <div class="combine-banner" style="display: flex">
                        <div class="banner-tit">세상의 모든 아이디어가 모이는 곳,<br>
                            오아이스</div>
                        <img class="banerimg" src="img/—Pngtree—splashed blue water splash water_3845982 (2).png">
                        </div>
                    </div>
                    <div data-index=2>
                        <div class="combine-banner2" style="display: flex">
                            <div class="banner-tit">작고 소중한 아이디어들을 <br> 많은 사람들과 자유롭게 나누어 보세요
                                </div>
                            <img class="banerimg2" src="/img/—Pngtree—25d flat blue business office_7451206.png">
                        </div>
                    </div>
                    <div data-index=3>
                        <div class="combine-banner3" style="display: flex">
                            <div class="banner-tit">투표하기 페이지에서 <br> 다양한 아이디어 중 <br> 당신의 픽을 투표해주세요
                            </div>
                            <img class="banerimg3" src="/img/—Pngtree—vector flat fresh blue business_7508047.jpg">
                        </div>
                    </div>
                    <div data-index=4>
                        <div class="combine-banner4" style="display: flex">
                            <div class="banner-tit">마음에 드는 아이디어글을 <br> 스크랩해서 마이페이지에 모아두고 <br> 언제든 다시 찾아보세요
                            </div>
                            <img class="banerimg4" src="/img/—Pngtree—oval water droplet round water_3819695.png">
                        </div>
                </div>
            </div>
            <%--            <div class="list-button">--%>
            <%--                <span class="list-button-item active"></span>--%>
            <%--                <span class="list-button-item"></span>--%>
            <%--                <span class="list-button-item"></span>--%>
            <%--                <span class="list-button-item"></span>--%>
            <%--            </div>--%>

            <%-- real Content--%>
            <div class="hedtitle">
                <p class="hottitle" style="margin-right: 580px">Cool 아이디어☄️</p>
                <p class="hottitle">Hot 투표🗳️</p>
            </div>
            <div class="hothotbox">
                <div class="hotidbox">
                    <c:forEach var="item" items="${hotList}">
                        <div class="hotidea" onclick="location.href='/idea/detail?wnum=${item.wnum}'">
                            <c:if test="${item.img1 != null && item.img1!=''}">
                                <img class="hotimg" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
                            </c:if>
                            <div>
                                <p href="/idea/detail?wnum=${item.wnum}">${item.title}</p>
                                <p>아이디어 참여 인원 : ${item.part}</p>
                                <p>조회수 : ${item.views}</p>
                                <p>해시태그 : <c:set var="hashtag" value="${fn:split(item.hash,'#')}"/>
                                    <c:forEach var="hashelement" items="${hashtag}">
                                        <c:if test="${hashelement != ''}">
                                            <a href="/search?val=${hashelement}">#${hashelement}</a>
                                        </c:if>
                                    </c:forEach>

                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="hotvotebox">
                    <c:forEach var="hotvotelist" items="${hotVoteListLast}">
                        <div class="hotvote">
                            <h2>${hotvotelist.title}</h2>
                                ${hotvotelist.content}
                            <div class="vovoto">
                                <c:if test="${hotvotelist.img1 != null && hotvotelist.img1!=''}">
                                    <img class="hotimg"
                                         src="/idea/read_img?fname=${hotvotelist.img1}&wnum=${hotvotelist.wnum}">
                                </c:if>
                                <jsp:include
                                        page="/voteboard/count?item01=${hotvotelist.item01}&item02=${hotvotelist.item02}&item03=${hotvotelist.item03}&item04=${hotvotelist.item04}&wnum=${hotvotelist.wnum}"></jsp:include>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
