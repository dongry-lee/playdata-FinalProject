<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-09-06
  Time: 오전 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--  css  --%>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/vote/addvote.css" rel="stylesheet">
    <%--  js  --%>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="/js/vote.js"></script>
    <script>

    </script>
</head>

<body>
<header>

    <div class="wrapper"> <!-- 전체 랩 -->
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
            <li class="sidbtn"><a href="/service/list" class="item">
                <div>고객센터</div>
            </a></li>
            <div class="hhd">이용약관ㆍ개인정보처리방침<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="voteadd-content">
        <div class="fg-head"><p>투표 작성하기</p></div>
        <div class="vote-addform">
            <form class="votef" action="/voteboard/edit" method="post" enctype="multipart/form-data">
                <div class="vethead">
                    <input name="wnum" type="hidden" value="${voteboard.wnum}">
                    <input name="num.num" type="hidden" value="${sessionScope.num}">
                    <div class="titlebox">
                        <input class="vottitle" name="title" value="${voteboard.title}" type="text" placeholder="제목">
                    </div>

                </div>
                <div class="add-content">
                    <div class="contentbox">
                        <div class="votetex">
                            <span class="v-title">투표내용</span><br/>

                            <textarea class="votecntarea" name="content" type="text"
                                      placeholder="내용을 입력해 주세요.">${voteboard.content}<%--입력한 글내용--%>
                            </textarea>
                        </div>
                        <div class="vote-plus">
                            <span class="v-title">투표항목</span><br/>
                            <ul>
                                <li><input name="item01" value="${voteboard.item01}" type="text"><br/></li>
                                <li><input name="item02" value="${voteboard.item02}" type="text"><br/></li>
                                <li><input name="item03" value="${voteboard.item03}" type="text"><br/></li>
                                <li><input name="item04" value="${voteboard.item04}" type="text"><br/></li>
                            </ul>
                            <%--항목추가 기능 / 나중에 살려보아요--%>
                            <%--                            <table>--%>
                            <%--                                <tr>--%>
                            <%--                                    <td>--%>
                            <%--                                        <table>--%>
                            <%--                                            <tr>--%>
                            <%--                                                <td>--%>
                            <%--                                                    <input name="addButton" type="button" style="cursor:hand"--%>
                            <%--                                                           onClick="insRow()" value="추가">--%>
                            <%--                                                    <span style="color: #FF0000; ">*</span>추가버튼을 클릭해 보세요.--%>
                            <%--                                                </td>--%>
                            <%--                                            </tr>--%>
                            <%--                                            <tr>--%>
                            <%--                                                <td height="25">--%>
                            <%--                                                    <table id="addTable">--%>
                            <%--                                                        <tr>--%>
                            <%--                                                            <td><input type="text" name="addText"--%>
                            <%--                                                                       style="width:200px; height:20px;"></td>--%>
                            <%--                                                            <td></td>--%>
                            <%--                                                        </tr>--%>
                            <%--                                                    </table>--%>
                            <%--                                                </td>--%>
                            <%--                                            </tr>--%>
                            <%--                                        </table>--%>
                            <%--                                    </td>--%>
                            <%--                                </tr>--%>
                            </table>
                        </div>
                        <div >
                            <div>

                                <span class="v-title">이미지 첨부</span>
                                <div class="addimg">
                                    <input type="file" name="img1"><%--첨부한 이미지1--%>
                                    <input type="file" name="img2"><%--첨부한 이미지2--%>
                                    <input type="file" name="img3"><%--첨부한 이미지3--%>

                                </div>
                            </div>
                            <div>
                                <span class="v-title">해시태그</span>
                                <div class="hashcode">
                                    <div class="tr_hashTag_area">
                                        <input type="text" name="hash" placeholder="#으로 구분해주세요">

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
                <div class="addbtn-box">
                    <div class="addbox">
                        <button onclick="location.href='/voteboard'">게시글 작성</button>
                        <button>취소</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
