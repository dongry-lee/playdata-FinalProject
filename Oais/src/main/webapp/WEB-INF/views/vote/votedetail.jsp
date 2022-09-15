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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['number', 'Populartiy'],
                ['${voteboard.item01}', ${item01result}],
                ['${voteboard.item02}', ${item02result}],
                ['${voteboard.item03}', ${item03result}],
                ['${voteboard.item04}', ${item04result}]
            ]);

            var options = {
                title: '${voteboard.title}'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
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
            </div>
            <div class="button-group" style="display: flex; align-content: space-between;margin-left: 1100px;margin-top: 5px; position: absolute;">
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

    <div id="content" style="background-color: #f8f9fa; width:1540px; font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div class="fg-head"><p>진행중인 아이디어 투표</p></div>
        <div class="vote-form">
            <div class="vote-box">
                <div class="vote-infoo">
                    <div class="vote-title">${voteboard.title}</div>
                    <%--입력한 글제목--%>
                    <div class="vote-img">
                        <c:if test="${voteboard.img1 != null}"> <%--img1이 null이 아니라면 img1출력--%>
                            <img src="/read_img?fname=${voteboard.img1}&wnum=${voteboard.wnum}">
                        </c:if>
                        <c:if test="${voteboard.img2 != null}"> <%--img2이 null이 아니라면 img2출력--%>
                            <img src="/read_img?fname=${voteboard.img2}&wnum=${voteboard.wnum}">
                        </c:if>
                        <c:if test="${voteboard.img3 != null}"> <%--img3이 null이 아니라면 img3출력--%>
                            <img src="/read_img?fname=${voteboard.img3}&wnum=${voteboard.wnum}">
                        </c:if>
                    </div>
                    <hr>
                    <div class="vot-cnlt">조회수 : ${voteboard.views}</div>

                </div>
                <div>
                    <div class="vote-content">${voteboard.content} <%--입력한 글내용--%></div>
                    <hr>
                    <div class="wmdate">
                        <hr>
                        <div class="vot-cnlt">등록일 : ${voteboard.wdate}</div>
                        <div class="vot-cnlt">마감일 : ${voteboard.ddate}</div>
                    </div>
                </div>
                <div class="vote-option">
                    <div class="option-select">
                        <div>

                            <%-- 투표수 출력 --%>
                            <%--                            <jsp:include page="/voteboard/count?item=${voteboard.item01}"></jsp:include>--%>
                            <%--                            <jsp:include page="/voteboard/count?item=${voteboard.item02}"></jsp:include>--%>
                            <%--                            <c:if test="${voteboard.item03!=null && voteboard.item03!=''}"> &lt;%&ndash;투표항목3이 null or 공백이 아니라면 투표항목3 투표수 출력&ndash;%&gt;--%>
                            <%--                                <jsp:include page="/voteboard/count?item=${voteboard.item03}"></jsp:include>--%>
                            <%--                            </c:if>--%>
                            <%--                            <c:if test="${voteboard.item04!=null && voteboard.item04!=''}"> &lt;%&ndash;투표항목4가 null or 공백이 아니라면 투표항목4 투표수 출력&ndash;%&gt;--%>
                            <%--                                <jsp:include page="/voteboard/count?item=${voteboard.item04}"></jsp:include>--%>
                            <%--                            </c:if>--%>
                            <%--                            &lt;%&ndash;총 투표수 출력&ndash;%&gt;--%>
                            <%--                            <jsp:include page="/voteboard/totalcount?wnum=${voteboard.wnum}"></jsp:include>--%>

                            <%--                            <span></span>--%>
                            <%--                            <input type="radio" id="vote1" name="radio"--%>
                            <%--                                   value="${voteboard.item01}"/><label><span></span>${voteboard.item01}</label>--%>
                            <%--                            <input type="radio" id="vote2" name="radio"--%>
                            <%--                                   value="${voteboard.item02}"/><label><span></span>${voteboard.item02}</label>--%>
                            <div id="piechart" style="width: 300px; height: 200px;"></div>
                            <form action="/voteboard/resultpro2" method="post">
                                <input type="hidden" name="wnum.wnum" value="${voteboard.wnum}">
                                <%--라디오버튼옆 투표항목들 출력--%>
                                <input type="radio" id="vote1" name="item"
                                       value="${voteboard.item01}"/><label><span></span>${voteboard.item01}</label>
                                <input type="radio" id="vote2" name="item"
                                       value="${voteboard.item02}"/><label><span></span>${voteboard.item02}</label>
                                <c:if test="${voteboard.item03!=null && voteboard.item03!=''}"> <%--투표항목3이 null or 공백이 아니라면 투표항목3 라디오버튼 출력--%>
                                    <input type="radio" id="vote3" name="item"
                                           value="${voteboard.item03}"/><label><span></span>${voteboard.item03}</label>
                                </c:if>
                                <c:if test="${voteboard.item04!=null && voteboard.item04!=''}"> <%--투표항목4가 null or 공백이 아니라면 투표항목4 라디오버튼 출력--%>
                                    <input type="radio" id="vote4" name="item"
                                           value="${voteboard.item04}"/><label><span></span>${voteboard.item04}</label>
                                </c:if>


                                <c:if test="${(sessionScope.domtype==false)}"> <%--로그인한상태가 아니라면 투표버튼 안보이게--%>
                                    <button>투표</button>
                                </c:if>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <form action="/voteboard/detailpro" method="post">
                <div class="detail-comment">
                    <h2 class="cmt-tt">댓글 작성</h2>

                    <input name="num.num" type="hidden" value="${sessionScope.num}">
                    <input name="wnum.wnum" type="hidden" value="${voteboard.wnum}">

                    <div class="commentBox">
                    <textarea id="writeComment" name="comment" maxlength="1000"
                              placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 삭제 또는 제제를 받을 수 있습니다."></textarea>
                        <button class="cmtbt" type="submit">작성</button>
                    </div>
                </div>
            </form>
            <c:forEach var="comment" items="${votecomment}">
            <div class="commentlist">
                <div class="cmtRod">
                    <div>
                        <form action="/voteboard/delcomment">
                            <input name="num.num" type="hidden" value="${sessionScope.num}">
                            <input name="cnum" type="hidden" value="${comment.cnum}">
                            <input name="wnum" type="hidden" value="${comment.wnum.wnum}">
                            <div class="cmt">
                                <span class="cmtwriter">${comment.num.mid}</span> <%--댓글작성한 사용자 아이디출력--%>
                                <c:if test="${(sessionScope.id==comment.num.mid)}"> <%-- 로그인아이디와 글작성자 아이디 같을시 삭제보이게--%>
                                    <button>삭제</button>
                                </c:if>
                            </div>
                        </form>
                        <p>${comment.comment}</p> <%-- 입력한 댓글출력--%>
                    </div>
                    <hr>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>

