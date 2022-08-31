<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-24
  Time: 오후 5:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <%--style css--%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote.css" rel="stylesheet">
    <link href="/css/vote/votedetail.css" rel="stylesheet">
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
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">회원가입</button></a>
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
        <div class="fg-head"><p>진행중인 아이디어 투표</p></div>
        <div class="vote-form">
            <div class="vote-box">
                <div class="vote-info">
                    <p class="vote-title">강아지 vs 고양이</p>
                    <div class="vote-content">
                        뭐 키울까요?
                    </div>
                </div>
                <div class="vote-img">
                    <img src="/img/catanddog.png">
                </div>
                <div class="vote-option">
                    <div class="option-select">
                        <div>
                            <span></span>
                            <input type="radio" id="count01" name="radio"
                                   value="${item.count01}"/><label><span></span>강아지</label>
                            <input type="radio" id="count02" name="radio"
                                   value="${item.count02}"/><label><span></span>고양이</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="detail-comment">
                <h2 class="cmt-tt">댓글 작성</h2>
                <div class="commentBox">
                    <textarea id="writeComment" name="cmtcontent" maxlength="1000"
                              placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 삭제 또는 제제를 받을 수 있습니다."></textarea>
                    <button class="cmtbt" type="submit">작성</button>
                </div>
            </div>
            <div class="commentlist">
                <div class="cmtRod">
                    <div>
                        <div class="cmt">
                            <span class="cmtwriter">김춘식</span>
                            <button class="eddelbt" onclick="">수정</button>
                            <button class="eddelbt">삭제</button>
                        </div>
                        <p>강아지 추천 드립니다 둘 다 키워봐서 알아요!</p>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

