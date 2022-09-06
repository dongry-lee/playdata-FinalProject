<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-09-01
  Time: 오전 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%-- css --%>
  <link href="/css/custom.css" rel="stylesheet">
  <link href="/css/service.css" rel="stylesheet">
    <title>문의 글 수정</title>
</head>
<body>
<header>
  <div class="wrapper"> <!--전체 랩 -->

    <a href="/"><h1></h1></a>

    <nav> <!-- 메뉴부분 -->
        <form action="/search" method="get"> <!-- 검색창 -->
            <div class="search">
                <input type="text" name="val" placeholder="공모/투표/게시판 찾아보기">
                <button><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i>검색</button>
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
        </form>
      <c:if test="${sessionScope.num == null}">
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
        <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
      </c:if>
      <c:if test="${sessionScope.num != null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                환영합니다! ${sessionScope.name}님
             </span>
        <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px">마이페이지</button></a>
             </span>

        <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
             </span>

      </c:if>


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
  <div id="content">
      <div>
          <div>
              <img src="/img/ois.png">
              <span>문의 글 수정</span>
              <hr>
              <form action="/service/edit" method="post" enctype="multipart/form-data">
                <input type="text" value="${b.num.name}" readonly/>
                  <input type="text" name="wnum" value="${b.wnum}" readonly/>
                  <input type="text" name="title" value="${b.title}"/>
                  <input type="text" name="content" value="${b.content}"/>
                  <input type="file" name="img1"/>
                  <input type="file" name="img2"/>
                  <input type="file" name="img3"/>
                  <input type="submit" value="수정"/>
              </form>
              <button onclick="location.href='/service/delete?wnum=${b.wnum}'">삭제</button>
              </div>

          </div>
          <div class="service_content">
              <div>
                  <span class="ser-title">제목</span>
                  <input class="ser_tex" type="text">
                  <span class="ser-title">첨부파일</span>
                  <input type="file">
                  <span class="ser-title">문의 내용</span>
                  <textarea></textarea>
              </div>
              <div class="service_btnbox">
                  <button>글 수정</button>
                  <button>삭제</button>
              </div>
          </div>
      </div>
  </div>
</div>
</body>
</html>
