<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-24
  Time: ?��?�� 5:22
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
    <div class="wrapper"> <!--?���? ?�� -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- 메뉴�?�? -->
            <div class="search"> <!-- �??���? -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/?��?��/게시?�� 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">로그?��</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">?��?���??��</button></a>
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
                <div>?��</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>?��?��?��?�� 공모</div>
            </a></li>
            <li class="sidbtn"><a href="/voteboard/list" class="item">
                <div>?��?��?���?</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>?��?��게시?��</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
                <div>고객?��?��</div>
            </a></li>
            <div class="hhd">?��?��?���??��개인?��보처리방�?<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="voteadd-content">
        <div class="fg-head"><p>?��?�� ?��?��?���?</p></div>
        <div class="vote-addform">
            <form class="votef" action="/voteboard/writepro" method="post">
                <div class="vethead">
                    <input name="num.num" type="text" value="${sessionScope.num}">
                    <div class="titlebox">
                        <span class="v-title">?��목을 ?��?��?��?��?��</span><br/>
                        <input name="title" type="text">
                        <button>?��?��</button>
                    </div>
                    <div class="titlebox">
                        <span class="v-title">?��?�� 마감?��</span><br/>
                        <input name="date" type="date">
                    </div>
                </div>
                <div class="add-content">
                    <div class="contentbox">
                        <div class="votetex">
                        <span class="v-title">?��?�� ?��?��</span><br/>
                        <textarea class="votecntarea" name="content" type="text" placeholder="?��?��?�� ?��?��?�� 주세?��."></textarea>
                        </div>
                        <div class="vote-plus">
                            <span class="v-title">?��?�� ?���?</span><br/>
                            <ul>
                                <li><input name="item01" type="text"><br/></li>
                                <li><input name="item02" type="text"><br/></li>
                            </ul>
                        <button onclick="location.href='/voteboard/list'">게시�? ?��?��</button>
                        </div>
                    </div>
                    <div class="addimg">
                        <span class="v-title">?��미�??첨�??</span><br/>
                        <button>?��미�?? ?���?</button>
                    </div>
                </div>
                <div class="hashcode">
                    #hashtag
                </div>
                <div class="addbtn-box">
                    <div class="addbox">
                        <input type="submit" name="?��?��">
                        <button>취소</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
