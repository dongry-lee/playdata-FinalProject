<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-24
  Time: ?ò§?õÑ 5:22
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
    <div class="wrapper"> <!--?†ÑÏ≤? ?û© -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- Î©îÎâ¥Î∂?Î∂? -->
            <div class="search"> <!-- Í≤??ÉâÏ∞? -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="Í≥µÎ™®/?à¨?ëú/Í≤åÏãú?åê Ï∞æÏïÑÎ≥¥Í∏∞">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">Î°úÍ∑∏?ù∏</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button type="button" class="login_button" size="10px">?öå?õêÍ∞??ûÖ</button></a>
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
                <div>?ôà</div>
            </a></li>
            <li class="sidbtn"><a href="/idea/" class="item">
                <div>?ïÑ?ù¥?îî?ñ¥ Í≥µÎ™®</div>
            </a></li>
            <li class="sidbtn"><a href="/vote/list" class="item">
                <div>?à¨?ëú?ïòÍ∏?</div>
            </a></li>
            <li class="sidbtn"><a href="/board/" class="item">
                <div>?ûê?ú†Í≤åÏãú?åê</div>
            </a></li>
            <li class="sidbtn"><a href="#" class="item">
                <div>Í≥†Í∞ù?Ñº?Ñ∞</div>
            </a></li>
            <div class="hhd">?ù¥?ö©?ïΩÍ¥??ÜçÍ∞úÏù∏?†ïÎ≥¥Ï≤òÎ¶¨Î∞©Ïπ?<br/>
                @2022 Oais
            </div>
        </ul>
    </div>
    <!-- End of Sidemenu-->
    <!-- Content -->
    <div id="voteadd-content">
        <div class="fg-head"><p>?à¨?ëú ?ûë?Ñ±?ïòÍ∏?</p></div>
        <div class="vote-addform">
            <form class="votef" action="/voteboard/votepro" method="post">
                <div class="vethead">
                    <div class="titlebox">
                        <span class="v-title">?†úÎ™©ÏùÑ ?ûë?Ñ±?ïò?Ñ∏?öî</span><br/>
                        <input name="item" type="text">
                        <button>?ûë?Ñ±</button>
                    </div>
                    <div class="titlebox">
                        <span class="v-title">?à¨?ëú ÎßàÍ∞ê?ùº</span><br/>
                        <input name="date" type="date">
                    </div>
                </div>
                <div class="add-content">
                    <div class="contentbox">
                        <div class="votetex">
                        <span class="v-title">?à¨?ëú ?Ç¥?ö©</span><br/>
                        <textarea class="votecntarea" name="content" type="text" placeholder="?Ç¥?ö©?ùÑ ?ûÖ?†•?ï¥ Ï£ºÏÑ∏?öî."></textarea>
                        </div>
                        <div class="vote-plus">
                            <span class="v-title">?à¨?ëú ?ï≠Î™?</span><br/>
                            <ul>
                                <li><input name="item01" type="text"><br/></li>
                                <li><input name="item02" type="text"><br/></li>
                            </ul>
                        <button onclick="location.href='/voteboard'">Í≤åÏãúÍ∏? ?ûë?Ñ±</button>
                        </div>
                    </div>
                    <div class="addimg">
                        <span class="v-title">?ù¥ÎØ∏Ï??Ï≤®Î??</span><br/>
                        <button>?ù¥ÎØ∏Ï?? ?ì±Î°?</button>
                    </div>
                </div>
                <div class="hashcode">
                    #hashtag
                </div>
                <div class="addbtn-box">
                    <div class="addbox">
                        <input type="submit" name="?ûë?Ñ±">
                        <button>Ï∑®ÏÜå</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
