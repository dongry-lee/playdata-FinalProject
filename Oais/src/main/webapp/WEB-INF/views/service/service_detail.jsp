<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-09-01
  Time: ?��?�� 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%-- css --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/service.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>

    <link href="/css/service_detail.css" rel="stylesheet">

    <title>문의 글 상세 페이지</title>
</head>
<body>
<header>
    <div class="wrapper"> 

        <a href="/"><h1></h1></a>

        <nav> 
            <form action="/search" method="get"> 
                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder= "공모/투표/게시판 찾아보기" style="margin: 20px 0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
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
                <div class="button-group" style="display: flex; align-content: space-between;margin-left: 130px;margin-top: 5px; position: absolute;">
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
    <div id="content"style="background-color: #f8f9fa;font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div class="hdcan">
            <img src="/img/ois.png">
            <p class="serd-hdtitle">작성글 내용</p>
            <hr>
        </div>
        <div class="serv_detbox">
            <div>
                <p class="cnttit">${b.title}</p>
                <div class="writ-dat">
                    <div><p>작성자 : ${b.num.name}</p></div>
                    <div><p>작성일 : ${b.wdate}</p></div>
                </div>


                <div class="serv-content">
                    ${b.content}
                    <c:if test="${b.img1 != null}">
                        <img width="300px" height="300px" src="/service/read_img?wnum=${b.wnum}&fname=${b.img1}">
                    </c:if>
                    <c:if test="${b.img2 != null}">
                        <img width="300px" height="300px" src="/service/read_img?wnum=${b.wnum}&fname=${b.img2}">
                    </c:if>
                    <c:if test="${b.img3 != null}">
                        <img width="300px" height="300px" src="/service/read_img?wnum=${b.wnum}&fname=${b.img3}">
                    </c:if>
                </div>
                <div class="dtilbtn">
                    <c:if test="${sessionScope.id==b.num.mid}">
                        <a href="/service/edit?wnum=${b.wnum}">수정</a>
                        <a href="/service/">목록으로</a>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="cmtchg">
            <form action="/service/detail" method="post">
                <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none"><%-- 안보이게 만들어야함 --%>
                <input type="text" name="num" value="${sessionScope.num}" readonly style="display: none"><%-- 안보이게 만들어야함 --%>
                <input type="text" value="${sessionScope.name}" readonly>
                <input type="text" name="content" placeholder="댓글을 입력해주세요">
                <input type="submit" value="댓글달기">
            </form>
            <div class="달린댓글창" style="margin-left: 15px;">
                <c:forEach var="c" items="${comments}">
                    <span>${c.num.name}</span>
                    <span>${c.cdate}</span>
                    <span>${c.content}</span>
                    <c:if test="${sessionScope.num == c.num.num}">
                <span><a href="/service/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}"><input type="button"
                                                                                                  value="삭제"></a></span>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>
