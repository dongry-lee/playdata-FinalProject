<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-24
  Time: ?€? 5:22
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
    <div class="wrapper"> <!--? μ²? ?© -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- λ©λ΄λΆ?λΆ? -->
            <div class="search"> <!-- κ²??μ°? -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="κ³΅λͺ¨/?¬?/κ²μ? μ°Ύμλ³΄κΈ°">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">λ‘κ·Έ?Έ</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">??κ°??</button></a>
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
                <div>?</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>??΄??΄ κ³΅λͺ¨</div>
            </a></li>
            <li class="sidbtn"><a href="/vote/list" class="item">
                <div>?¬??κΈ?</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>?? κ²μ?</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
                <div>κ³ κ°?Ό?°</div>
            </a></li>
            <div class="hhd">?΄?©?½κ΄??κ°μΈ? λ³΄μ²λ¦¬λ°©μΉ?<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="voteadd-content">
        <div class="fg-head"><p>?¬? ??±?κΈ?</p></div>
        <div class="vote-addform">
            <form class="votef" action="/voteboard/votepro" method="post">
                <div class="vethead">
                    <div class="titlebox">
                        <span class="v-title">? λͺ©μ ??±??Έ?</span><br/>
                        <input name="item" type="text">
                        <button>??±</button>
                    </div>
                    <div class="titlebox">
                        <span class="v-title">?¬? λ§κ°?Ό</span><br/>
                        <input name="date" type="date">
                    </div>
                </div>
                <div class="add-content">
                    <div class="contentbox">
                        <div class="votetex">
                        <span class="v-title">?¬? ?΄?©</span><br/>
                        <textarea class="votecntarea" name="content" type="text" placeholder="?΄?©? ?? ₯?΄ μ£ΌμΈ?."></textarea>
                        </div>
                        <div class="vote-plus">
                            <span class="v-title">?¬? ?­λͺ?</span><br/>
                            <ul>
                                <li><input name="item01" type="text"><br/></li>
                                <li><input name="item02" type="text"><br/></li>
                            </ul>
                        <button onclick="location.href='/voteboard'">κ²μκΈ? ??±</button>
                        </div>
                    </div>
                    <div class="addimg">
                        <span class="v-title">?΄λ―Έμ??μ²¨λ??</span><br/>
                        <button>?΄λ―Έμ?? ?±λ‘?</button>
                    </div>
                </div>
                <div class="hashcode">
                    #hashtag
                </div>
                <div class="addbtn-box">
                    <div class="addbox">
                        <input type="submit" name="??±">
                        <button>μ·¨μ</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
