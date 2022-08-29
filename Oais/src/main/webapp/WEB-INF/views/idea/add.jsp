<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-10
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<html>
<head>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">

    <title>아이디어게시판 글작성</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;"> <!-- 버튼 -->
            <a href="/member/memservice"><button type="button" class="welcome_button" size="10px">환영합니다 도르마무님!</button></a>
             </span>
<%--            <span class="icon"><i class=/img/icons8-bell-48.png"></i></span>--%>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="mypg_button" size="10px">마이페이지</button></a>
             </span>

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
            <li class="sidbtn"><a href="/vote" class="item">
                <div>투표하기</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>자유게시판</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
                <div>고객센터</div>
            </a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <div id="content">
        <div class="fg-head">
            <h2>아이디어 공모하기<span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="write_button" size="10px">작성</button></a>
             </span></h2>
        </div>
        <div class="idea-form">
            <div class="idea-box">
                <%--                <div class="write-form">--%>
                <div class="write-info">
                    <form action="/idea/add" method="post" enctype="multipart/form-data">
                        <table border="1">
                            <tr>
                                <th>title</th>
                                <td><input type="text" name="title"></td>
                            </tr>
                            <tr>
                                <th>name</th>
                                <td><input type="text" name="name" value="${sessionScope.name}" readonly></td>
                            </tr>
                            <tr>
                                <th>여기안보이게</th>
                                <td><input type="text" name="num" value="${sessionScope.num}" readonly style="display: none"></td>
                            </tr>
                            <tr>
                                <th>content</th>
                                <td><textarea rows="15" cols="20" name="content"></textarea></td>
                            </tr>
                            <tr>
                                <th>마감일자</th>
                                <td><input type="date" name="ddate"></td>
                            </tr>
                            <tr>
                                <th>hash</th>
                                <td><input type="text" name="hash"></td>
                            </tr>
                            <tr>
                                <th>이미지1</th>
                                <td><input name="img1" type="file"></td>
                            </tr>
                            <tr>
                                <th>이미지2</th>
                                <td><input name="img2" type="file"></td>
                            </tr>
                            <tr>
                                <th>이미지3</th>
                                <td><input name="img3" type="file"></td>
                            </tr>
                            <tr>
                                <th>취소</th>
                                <td><a href="/idea/">취소</a></td>
                            </tr>
                            <tr>
                                <th>글작성</th>
                                <td><input type="submit" value="글작성"></td>
                            </tr>

                        </table>
                    </form>
                </div>
</body>
</html>
