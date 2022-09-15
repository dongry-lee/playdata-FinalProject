<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-09-01
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <%-- css --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/servicelist.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>
        <title>고객센터</title>
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
  <div id="content"style="background-color: #f8f9fa; width:1540px; font-family:'Spoqa Han Sans Neo', 'sans-serif';">
    <div>
        <img src="/img/ois.png">
        <div class="ser-head">
            <div><p class="ser-hdtitle">고객센터</p></div>
            <div class="ser-addbtn"><button onclick="location.href='/service/add';">글 작성</button></div>

        </div>
        <hr>
        <div>
            <table class="rwd-table">
                <tbody>
                <tr>
                    <th>No.</th>
                    <th style="width: 500px">제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
                <c:forEach var="service" items="${list}">
                <tr>
                    <td data-th="Supplier Code">
                        ${service.wnum}
                    </td>
                    <td data-th="Supplier Name">
                        <a href="/service/detail?wnum=${service.wnum}">${service.title}</a>
                    </td>
                    <td>
                        ${service.num.name}
                    </td>
                    <td data-th="Invoice Number">
                        ${service.wdate}
                    </td>
                </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
  </div>
</div>
</body>
</html>
