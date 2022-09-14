<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-09-01
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%-- css --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/service.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>
    <title>문의 글 작성</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->

        <a href="/"><h1></h1></a>

        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder= "공모/투표/게시판 찾아보기" style="margin: 20px 0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
            <div class="button-group" style="display: flex; align-content: space-between; margin-left: 1100px; position: absolute;">
                <c:if test="${sessionScope.num == null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button  type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
                </c:if>
                <div class="button-group" style="display: flex; align-content: space-between;margin-left: 130px;margin-top: 5px; position: absolute;">
                    <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                        <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="mypg_button" size="10px">마이페이지</button></a>
             </span>

                        <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="logout_button" size="10px">로그아웃</button></a>
             </span>
                    </c:if>
                </div>
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
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content" style="background-color: #f8f9fa;font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div>
            <div>
                <img src="/img/ois.png">
                <p class="ser-allheadt">문의 글 작성</p>
                <hr>

            </div>
            <div class="service_content">
                <form action="/service/add" method="post" enctype="multipart/form-data">
                    <div>
                        <div class="ser-ttbox">
                            <p class="ser-title">제목</p>
                            <input class="ser_tex" name="title" type="text">
                            <span class="ser-title" style="display: none">멤버num(displauy none해주세용)</span>
                            <input class="ser_tex" name="num" type="text" value="${sessionScope.num}"
                                   style="display: none" readonly>
                        </div>
                        <div class="ser-imgbox">
                            <p class="ser-title">첨부파일</p>
                            <div class="imglist">
                                <input type="file" name="img1">
                                <input type="file" name="img2">
                                <input type="file" name="img3">
                            </div>
                        </div>
                        <div class="ser-contbox">
                            <p class="ser-title">문의 내용</p>
                            <textarea class="ser-area" name="content" placeholder="문의 할 게시판 내용 등을 상세하게 작성해주세요!">
                            </textarea>
                        </div>

                    </div>
                    <div class="service_btnbox">
                        <button class="addser">글 작성</button>
                        <button class="cancelser">취소</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>
