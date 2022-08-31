<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">

    <title>아이디어게시판 글 상세페이지</title>


</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기" style=" margin: 20px 480px 20px 160px;">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 20px;">
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
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="content">
        <div class="fg-head"><h2>아이디어 공모하기</h2></div>
        <div class="idea-writeform">
            <form class="addef" action="/idea/add" method="post" enctype="multipart/form-data" style="position: absolute; background-color: #ffffff; width: 980px; height: inherit; border-radius: 15px;">
                <div class="vethead" style="display: flex;">
                    <div class="write-info" style="width: 870px;">
                        <input type="text" name="title" value="${b.title}" readonly style="font-size:15px; border:0; width:860px; margin-bottom:30px;"><br>
<%--                        <textarea class="titlecntarea" name="content" type="text" value="${b.title}" style="font-size:15px; border:0; width:860px; margin-bottom:30px;"></textarea><br>--%>
                        <th>이름</th>
                        <input type="text" name="name" value="${b.num.name}" readonly style="border: 0;">
                    </div>
                </div>
                <div class="add-content" style="display: flex;">
                    <div class="write-info" style="width: 400px; padding: 90px;">
                        <th style="display: none"><!--여기안보이게--></th>
                        <td><input type="text" name="num" value="${sessionScope.num}" readonly style="display: none"></td>
                        <textarea class="titlecntarea" name="content" type="text"
                                  style="font-size:15px; border:0; width:auto; margin-bottom:0px; padding: 70px; height:auto; ">"${b.content}"</textarea><br>
                        <%--                                <th>content</th>--%>
                        <%--                                <td><textarea rows="15" cols="20" name="content"></textarea></td>--%>

                        <th>등록일자</th>
                        <td><input type="text" value="${b.wdate}" readonly></td>
                        <th>마감일자</th>
                        <td><input type="text" value="${b.ddate}" readonly></td>
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





<table border="1">
    <tr>
        <th>title</th>
        <td><input type="text" name="title" value="${b.title}" readonly></td>
    </tr>
    <tr>
        <th>name</th>
        <td><input type="text" name="writer" value="${b.num.name}" readonly></td>
    </tr>
    <tr>
        <th>등록일자</th>
        <td><input type="text" value="${b.wdate}" readonly></td>
    </tr>
    <tr>
        <th>마감일자</th>
        <td><input type="text" value="${b.ddate}" readonly></td>
    </tr>

    <tr>
        <th>hash</th>
        <td><input type="text" name="hash" value="${b.hash}" readonly></td>
    </tr>
    <tr>
        <th>content</th>
        <td><textarea rows="15" cols="20" name="content" readonly>"${b.content}"</textarea></td>
    </tr>
    <c:if test="${b.img1 != null}">
    <tr>
        <th>img1</th>
        <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>
    </tr>
    </c:if>
    <c:if test="${b.img2 != null}">
        <tr>
            <th>img1</th>
            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>
        </tr>
    </c:if>
    <c:if test="${b.img3 != null}">
        <tr>
            <th>img3</th>
            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>
        </tr>
    </c:if>
    <c:if test="${sessionScope.id==b.num.mid}">
        <tr>
            <th>수정</th>
            <td><a href="/idea/edit?wnum=${b.wnum}">수정</a></td>
        </tr>
    </c:if>

</table>

<h3>댓글</h3>
<form action="/idea/detail" method="post">
    <input type="text" name="wnum" value="${b.wnum}" readonly><%-- 안보이게 만들어야함 --%>
    <input type="text" name="num" value="${sessionScope.num}" readonly><%-- 안보이게 만들어야함 --%>
    <input type="text" value="${sessionScope.name}" readonly>
    <input type="text" name="content" placeholder="댓글을 입력해주세요">
    <input type="submit" value="댓글달기">
</form>

    <c:forEach var="c" items="${comments}">

            <span>${c.num.name}</span>
            <span>${c.cdate}</span>
            <span>${c.content}</span>
            <c:if test="${sessionScope.num == c.num.num}">
                <span><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}">삭제</a></span>
            </c:if>

    </c:forEach>


<%--  real content end  --%>
<h3>Oais</h3>



</body>
</html>