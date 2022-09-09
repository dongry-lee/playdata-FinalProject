<%--
  Created by IntelliJ IDEA.
  User: Playdata
  Date: 2022-09-01
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


<head>
    <meta charset="UTF-8">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">

    <title>자유게시판 글 상세페이지</title>


</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->

            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search">
                    <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                    <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                    <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
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
            <a href="/member/logout"><button type="button" class="login_button" size="10px"
                                             style="width: 64px;">로그아웃</button></a>
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
        <div class="idea-form"> <!--  idea form vs idea write-from-->
            <c:if test="${b.img1 != null}">
            <div class="idea-box">
                <div class="idea-img">
                    <td><img width="300px" height="300px" src="/community/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>
                    </c:if>
                    <c:if test="${b.img2 != null}">
                    <div class="idea-box">
                        <div class="idea-img">
                            <td><img width="300px" height="300px"
                                     src="/community/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>
                            </c:if>
                            <c:if test="${b.img3 != null}">
                            <div class="idea-box">
                                <div class="idea-img">
                                    <td><img width="300px" height="300px"
                                             src="/community/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>
                                    </c:if>
                                    <c:if test="${b.img1 == null}">
                                        <div>이미지가 없습니다.</div>
                                    </c:if>
                                </div>
                                <div class="idea-info">
                                    <div class="idea-content">
                                        <h2>${b.title}</h2>
                                        <p>${b.num.name}</p>
                                        <p>${b.content}</p>
                                        <p>${b.wdate}</p>
                                        <p>${b.views}</p>
                                    </div>
                                </div>
                            </div><!-- 아이디어 박스 끝 -->
                            <div class="addbtn-box">
                                <c:if test="${sessionScope.id==b.num.mid}">
                            <span style="padding: 5px; margin-top: 230px; border-radius:100px; border:1px; border-color: #f0f0f0;">
                                <a href="/community/edit?wnum=${b.wnum}"><button type="submit" class="cancel_button"
                                                                                 size="10px">수정</button></a>
                                <!--button type="button"-->
                            </span>
                                    <%--                          </c:if>--%>
                                    <span style="padding: 5px; margin-top: 230px; border-radius:100px;">
                                <a href="/community/"><button type="button" class="cancel_button"
                                                              size="10px">목록으로</button></a><!--button type="button"-->
                                 </span>
                                </c:if>
                            </div>
                            <div class="idea-box" style="margin-top: 20px">
                                <div class="comment" style="margin-left: 15px;">
                                    <h3>댓글</h3>
                                    <form action="/community/detail" method="post">
                                        <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none"><%-- 안보이게 만들어야함 --%>
                                        <input type="text" name="num" value="${sessionScope.num}" readonly
                                               style="display: none"><%-- 안보이게 만들어야함 --%>
                                        <input type="text" value="${sessionScope.name}" readonly>
                                        <input type="text" name="content" placeholder="댓글을 입력해주세요">
                                        <input type="submit" value="댓글달기">
                                    </form>
                                </div>
                            </div>
                            <div class="idea-box" style="margin-top: 40px;">
                                <div class="commented" style="margin-left: 15px;">
                                    <c:forEach var="c" items="${comments}">
                                        <span>${c.num.name}</span>
                                        <span>${c.cdate}</span>
                                        <span>${c.content}</span>
                                        <c:if test="${sessionScope.num == c.num.num}">
                                            <span><a
                                                    href="/community/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}"><input
                                                    type="button" value="삭제"></a></span>
                                        </c:if>

                                    </c:forEach>
                                </div>
                            </div>


                            <%--<table border="1">--%>
                            <%--    <tr>--%>
                            <%--        <th>title</th>--%>
                            <%--        <td><input type="text" name="title" value="${b.title}" readonly></td>--%>
                            <%--    </tr>--%>
                            <%--    <tr>--%>
                            <%--        <th>name</th>--%>
                            <%--        <td><input type="text" name="writer" value="${b.num.name}" readonly></td>--%>
                            <%--    </tr>--%>
                            <%--    <tr>--%>
                            <%--        <th>등록일자</th>--%>
                            <%--        <td><input type="text" value="${b.wdate}" readonly></td>--%>
                            <%--    </tr>--%>
                            <%--    <tr>--%>
                            <%--        <th>마감일자</th>--%>
                            <%--        <td><input type="text" value="${b.ddate}" readonly></td>--%>
                            <%--    </tr>--%>

                            <%--    <tr>--%>
                            <%--        <th>hash</th>--%>
                            <%--        <td><input type="text" name="hash" value="${b.hash}" readonly></td>--%>
                            <%--    </tr>--%>
                            <%--    <tr>--%>
                            <%--        <th>content</th>--%>
                            <%--        <td><textarea rows="15" cols="20" name="content" readonly>"${b.content}"</textarea></td>--%>
                            <%--    </tr>--%>
                            <%--    <c:if test="${b.img1 != null}">--%>
                            <%--    <tr>--%>
                            <%--        <th>img1</th>--%>
                            <%--        <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>--%>
                            <%--    </tr>--%>
                            <%--    </c:if>--%>
                            <%--    <c:if test="${b.img2 != null}">--%>
                            <%--        <tr>--%>
                            <%--            <th>img1</th>--%>
                            <%--            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>--%>
                            <%--        </tr>--%>
                            <%--    </c:if>--%>
                            <%--    <c:if test="${b.img3 != null}">--%>
                            <%--        <tr>--%>
                            <%--            <th>img3</th>--%>
                            <%--            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>--%>
                            <%--        </tr>--%>
                            <%--    </c:if>--%>
                            <%--    <c:if test="${sessionScope.id==b.num.mid}">--%>
                            <%--        <tr>--%>
                            <%--            <th>수정</th>--%>
                            <%--            <td><a href="/idea/edit?wnum=${b.wnum}">수정</a></td>--%>
                            <%--        </tr>--%>
                            <%--    </c:if>--%>

                            <%--                            <div class="comment" >--%>
                            <%--<h3>댓글</h3>--%>
                            <%--<form action="/idea/detail" method="post">--%>
                            <%--    <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
                            <%--    <input type="text" name="num" value="${sessionScope.num}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
                            <%--    <input type="text" value="${sessionScope.name}" readonly>--%>
                            <%--    <input type="text" name="content" placeholder="댓글을 입력해주세요">--%>
                            <%--    <input type="submit" value="댓글달기">--%>
                            <%--</form>--%>
                            <%--</div>--%>
                            <%--    <c:forEach var="c" items="${comments}">--%>

                            <%--            <span>${c.num.name}</span>--%>
                            <%--            <span>${c.cdate}</span>--%>
                            <%--            <span>${c.content}</span>--%>
                            <%--            <c:if test="${sessionScope.num == c.num.num}">--%>
                            <%--                <span><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}">삭제</a></span>--%>
                            <%--            </c:if>--%>

                            <%--    </c:forEach>--%>


                            <%--&lt;%&ndash;  real content end  &ndash;%&gt;--%>
                            <%--<h3>Oais</h3>--%>


                            </form>
                            <%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>
