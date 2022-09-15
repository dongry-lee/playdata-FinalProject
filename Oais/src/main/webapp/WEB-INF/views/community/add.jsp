<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <meta charset="UTF-8">
    <title>자유게시판 글작성</title>
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
                <div class="button-group" style="display: flex; align-content: space-between; margin-left: 1100px; position: absolute;">
                <c:if test="${sessionScope.num == null}">
                 <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button  type="button" class="join_button" size="10px">회원가입</button></a>
             </span>
                </c:if>
            </div>
            <div class="button-group" style="display: flex; align-content: space-between;margin-left: 1100px;margin-top: 5px; position: absolute;">
                <c:if test="${sessionScope.num != null}">
                <span style="padding: 0px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>

                    <span style="padding: 3px 13px 13px 13px; margin-top: 0px; border-radius:100px;">
                    <a href="/member/mypage"><button class="mypg_button"><span style="color:#3CA6AD"><i class="fa-thin fa-user fa-lg"></i></span></button>
            </a>
             </span>
                    <span style="padding: 0px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button class="logout_button"><i class="fa-thin fa-door-open"></i></button></a>
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
    <div id="content" style="background-color: #f8f9fa; width:1540px; font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div class="fg-head"><h2>자유게시판</h2>
        </div>
        <div class="idea-writeform">
            <%--            <div class="idea-box">--%>
            <%--                <div class="write-form">--%>
            <%--                <div class="write-info">--%>
            <form class="addef" action="/community/add" method="post" enctype="multipart/form-data" style="position: absolute; background-color: #ffffff; width: 980px; height: inherit; border-radius: 15px;">
                <%--                        <table border="1" style="width: 921px;height: 112px; padding: 20px; background-color: #d4fef0; border-radius: 15px; margin-top: 15px;margin-left: 20px;">--%>
                <div class="vethead" style="display: flex;">
                    <div class="write-info" style="width: 870px;">
                        <%--                                <th>title</th>--%>
                        <textarea class="titlecntarea" name="title" type="text" placeholder="제목을 입력해 주세요." style="font-size:15px; border:0; width:860px; margin-bottom:30px;"></textarea><br>
                        <%--                                <td><input type="text" name="title" placeholder="제목을 입력해주세요"></td>--%>
                        <th>이름</th>
                        <input type="text" name="name" value="${sessionScope.name}" readonly style="border: 0;">
                        <%--</div>--%>
                    </div>
                </div>
                <div class="add-content" style="display: flex;">
                    <div class="write-info" style="width: 400px; padding: 90px;">
                        <th style="display: none"><!--여기안보이게--></th>
                        <td><input type="text" name="num" value="${sessionScope.num}" readonly style="display: none"></td>
                        <textarea class="titlecntarea" name="content" type="text" placeholder="내용을 입력해 주세요."
                                  style="font-size:15px; border:0; width:465px; margin-bottom:30px; padding: 50px; height:100px; "></textarea><br>
                        <%--                                <th>content</th>--%>
                        <%--                                <td><textarea rows="15" cols="20" name="content"></textarea></td>--%>
                    </div>
                    <div class="addimg" style="padding:40px;">
                        <span class="v-title" style=" font-size: 17px; padding: 10px 0px 0px 30px;">이미지 첨부📁</span><br/>
                        <div class="write-info" style="width:200px;">
                            <span class="v-title" style="font-size: 13px;">이미지1</span><br/>
                            <td><input name="img1" type="file"></td>
                            <span class="v-title" style="font-size: 13px;">이미지2</span><br/>
                            <td><input name="img2" type="file"></td>
                            <span class="v-title" style="font-size: 13px;">이미지3</span><br/>
                            <td><input name="img3" type="file"></td>
                        </div>
                    </div>

                </div>
                <div class="addbtn-box">
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <a href=""><input type="submit" class="write_button" size="10px"></a>
                                </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <a href="/community/"><button type="button" class="cancel_button" size="10px">취소</button></a><!--button type="button"-->
                                 </span>

                    <%--                            <tr>--%>
                    <%--                                <td><input type="submit" value="글작성"></td>--%>
                    <%--                            </tr>--%>
                </div>

            </form>
        </div
    </div>
</div>
</div>
</body>
</html>





























<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: idong-geun--%>
<%--  Date: 2022/08/31--%>
<%--  Time: 2:24 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>자유게시판 글작성</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="/community/add" method="post" enctype="multipart/form-data">--%>
<%--    <table border="1">--%>
<%--        <tr><th>title</th><td><input type="text" name="title"></td></tr>--%>
<%--        <tr><th>name</th><td><input type="text" name="name" value="${sessionScope.name}" readonly></td></tr>--%>
<%--        <tr><th>여기안보이게</th><td><input type="text" name="num" value="${sessionScope.num}" readonly></td></tr>--%>
<%--        <tr><th>content</th><td><textarea rows="15" cols="20" name="content" ></textarea></td></tr>--%>
<%--        <tr><th>이미지1</th><td><input name="img1" type="file"></td></tr>--%>
<%--        <tr><th>이미지2</th><td><input name="img2" type="file"></td></tr>--%>
<%--        <tr><th>이미지3</th><td><input name="img3" type="file"></td></tr>--%>
<%--        <tr><th>취소</th><td><a href="/community/">취소</a></td></tr>--%>
<%--        <tr><th>글작성</th><td><input type="submit" value="글작성"></td></tr>--%>

<%--    </table>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
