<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-24
  Time: 오후 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote/addvote.css" rel="stylesheet">
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button  type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
        </nav>
    </div>
</header>

<!-- Page Wrapper -->
<div class="wrapper">

    <!-- Sidemenu -->
    <div class="menu">
        <ul class="sidemenu">
            <li class="sidbtn"><a href="/" class="item"><div>홈</div></a></li>
            <li class="sidbtn"><a href="/idea/" class="item"><div>아이디어 공모</div></a></li>
            <li class="sidbtn"><a href="/vote/list" class="item"><div>투표하기</div></a></li>
            <li class="sidbtn"><a href="/board/" class="item"><div>자유게시판</div></a></li>
            <li class="sidbtn"><a href="#" class="item"><div>고객센터</div></a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais</div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="voteadd-content">
        <div class="fg-head"><p>투표 작성하기</p></div>
        <div class="vote-addform">
            <form class="votef" action="/voteboard/votepro" method="post">
                <div class="titlebox">
                <span class="v-title">제목을 작성하세요</span><br/>
                <input name="item" type="text">
                <button>작성</button>
                </div>
                <div class="add-content">
                    <div class="contentbox">
                        <div class="votetex">
                        <span class="v-title">투표 내용</span><br/>
                        <textarea class="votecntarea" name="" type="text" placeholder="내용을 입력해 주세요."></textarea>
                        </div>
                        <div class="vote-plus">
                        <span class="v-title">투표 항목</span><br/>
                            <ul>
                                <li><input type="text"><br/></li>
                            </ul>
                        <button>항목 추가</button>
                        </div>
                    </div>
                    <div class="addimg">
                      <span class="v-title">이미지첨부</span><br/>
                        <button>이미지 등록</button>
                     </div>
                </div>
                <div class="hashcode">
                    #hashtag
                </div>
                <div class="addbtn-box">
                    <div class="addbox">
                    <input type="submit" name="작성">
                    <button>취소</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
