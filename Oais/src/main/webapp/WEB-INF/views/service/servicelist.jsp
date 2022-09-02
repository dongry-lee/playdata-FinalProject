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
    <title>고객센터</title>
</head>
<body>
<header>
  <div class="wrapper"> <!--전체 랩 -->

    <a href="/"><h1></h1></a>

    <nav> <!-- 메뉴부분 -->
      <div class="search"> <!-- 검색창 -->

        <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
        <input type="text" placeholder="공모/투표/게시판 찾아보기">
        <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
      </div>
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
    <div>
        <div>
            <img src="/img/ois.png">
            <p>고객센터</p>
            <hr>
        </div>
        <div><button onclick="location.href='/service/add';">글 작성</button></div>
        <div>
            <table class="rwd-table">
                <tbody>
                <tr>
                    <th>No.</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <tr>
                    <td data-th="Supplier Code">
                        1
                    </td>
                    <td data-th="Supplier Name">
                        오아이스 공식 서비스 오픈 이벤트
                    </td>
                    <td data-th="Invoice Number">
                        2022/09/01
                    </td>
                </tr>
                <tr>
                    <td data-th="Supplier Code">
                        2
                    </td>
                    <td data-th="Supplier Name">
                        로그인문제 해결 공지사항
                    </td>
                    <td data-th="Invoice Number">
                        2022/08/31
                    </td>
                </tr>
                <tr>
                    <td data-th="Supplier Code">
                        3
                    </td>
                    <td data-th="Supplier Name">
                        2022년은 왜 벌써4개월 남았는지
                    </td>
                    <td data-th="Invoice Number">
                        2022/09/01
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
  </div>
</div>
</body>
</html>
