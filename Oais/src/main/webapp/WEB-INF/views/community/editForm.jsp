<%--
  Created by IntelliJ IDEA.
  User: idong-geun
  Date: 2022/09/02
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>


    <title>자유게시판 글 수정</title>
</head>
<body>
<!-- Header -->
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder= "공모/투표/게시판 찾아보기" style="margin: 20px     0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 20px;">
                <c:if test="${sessionScope.num != null}">
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px"
                                             style="width: 75px;">마이페이지</button></a>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px" style="width: 64px;">로그아웃</button></a>
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
    <div id="content">
        <div class="fg-head"><h2>자유게시판</h2></div>
        <div class="idea-writeform">
            <form action="/community/edit" method="post" enctype="multipart/form-data" style="position: absolute; background-color: #ffffff; width: 980px; height: inherit; border-radius: 15px;">
                <div class="vethead" style="display: flex;">
                    <div class="write-info" style="width: 870px;">
                        <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none">
                        <input type="text" name="title" value="${b.title}" readonly style="font-size:15px; border:0; width:860px; margin-bottom:30px;"><br>
                        <th>이름</th>
                        <input type="text" value="${b.num.name}" readonly style="border: 0;">
                    </div>
                </div>
                <div class="add-content" style="display: flex;">
                    <div class="write-info" style="width: 400px; padding: 50px;">
                        <textarea class="titlecntarea" name="content" type="text"
                                  style="font-size:15px; border:0; width:auto; margin-bottom:auto; padding: 50px; height:auto; ">"${b.content}"</textarea><br>
                        <%--                                <th>content</th>--%>
                        <%--                                <td><textarea rows="15" cols="20" name="content"></textarea></td>--%>

                        <%--                        <th>등록일자</th>--%>
                        <%--                        <td><input type="text" value="${b.wdate}" readonly></td>--%>
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

                <%--                    <tr>--%>
                <%--                        <th>content</th>--%>
                <%--                        <td><textarea rows="15" cols="20" name="content">"${b.content}"</textarea></td>--%>
                <%--                    </tr>--%>
                <%--                    <tr>--%>
                <%--                        <th>마감일자</th>--%>
                <%--                        <td><input type="date" name="ddate" value="${b.ddate}"></td>--%>
                <%--                    </tr>--%>
                <%--                    <tr>--%>
                <%--                        <th>hash</th>--%>
                <%--                        <td><input type="text" name="hash" value="${b.hash}"></td>--%>
                <%--                    </tr>--%>

                <%--                    <tr>--%>
                <%--                        <th>img1</th>--%>
                <%--                        <td><input type="file" name="img1"></td>--%>
                <%--                    </tr>--%>

                <%--                    <tr>--%>
                <%--                        <th>img2</th>--%>
                <%--                        <td><input type="file" name="img2"></td>--%>
                <%--                    </tr>--%>

                <%--                    <tr>--%>
                <%--                        <th>img3</th>--%>
                <%--                        <td><input type="file" name="img3"></td>--%>
                <%--                    </tr>--%>
                <div class="addbtn-box">
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <button type="submit" class="cancel_button" size="10px">수정</button><!--button type="button"-->
                                 </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <button type="button" class="cancel_button" onclick="location.href='/community/delete?wnum=${b.wnum}'"size="10px">삭제</button><!--button type="button"-->
                                 </span>
                </div>


                <%--                    <tr>--%>
                <%--                        <th>수정</th>--%>
                <%--                        <td><input value="수정" type="submit"></td>--%>
                <%--                    </tr>--%>


                <%--                    <tr>--%>
                <%--                        <th>삭제</th>--%>
                <%--                        <td><input type="button" value="삭제" onclick="location.href='/idea/delete?wnum=${b.wnum}'"></td>--%>
                <%--                    </tr>--%>
                <%--                </table>--%>
            </form>
            <%--  real content end  --%>
            <%--            <h3>Deepocket</h3>--%>
        </div>
    </div>
</div>
</body>
</html>
