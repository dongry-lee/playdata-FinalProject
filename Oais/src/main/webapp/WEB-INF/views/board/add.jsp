<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <meta charset="UTF-8">
<title>자유게시판 글작성</title>
</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기" style=" margin: 20px 480px 20px 160px;">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 20px;">
                <c:if test="${sessionScope.num != null}">
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;"><!-- 버튼 -->
               <button type="button" class="welcome_button" size="10px">환영합니다! ${sessionScope.name}님</button>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/mypage"><button type="button" class="login_button" size="10px" style="width: auto;">마이페이지</button></a>
             </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/logout"><button type="button" class="login_button" size="10px">로그아웃</button></a>
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
            <li class="sidbtn"><a href="/vote" class="item">
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
        <div class="fg-head"><h2>자유게시판</h2>
        </div>
        <div class="idea-writeform">
            <%--            <div class="idea-box">--%>
            <%--                <div class="write-form">--%>
            <%--                <div class="write-info">--%>
            <form class="addef" action="/idea/add" method="post" enctype="multipart/form-data" style="position: absolute; background-color: #ffffff; width: 980px; height: inherit; border-radius: 15px;">
                <%--                        <table border="1" style="width: 921px;height: 112px; padding: 20px; background-color: #d4fef0; border-radius: 15px; margin-top: 15px;margin-left: 20px;">--%>
                <div class="vethead" style="display: flex;">
                    <div class="write-info" style="width: 870px;">
                        <%--                                <th>title</th>--%>
                        <textarea class="titlecntarea" name="title" type="text" placeholder="제목을 입력해 주세요." style="font-size:15px; border:0; width:860px; margin-bottom:30px;"></textarea><br>
                        <%--                                <td><input type="text" name="title" placeholder="제목을 입력해주세요"></td>--%>
                        <th>이름</th>
                        <input type="text" name="name" value="${sessionScope.name}" readonly style="border: 0;">
                        <%--</div>--%>
                    </div>
                </div>
                <div class="add-content" style="display: flex;">
                    <div class="write-info" style="width: 400px; padding: 90px;">
                        <th style="display: none"><!--여기안보이게--></th>
                        <td><input type="text" name="num" value="${sessionScope.num}" readonly style="display: none"></td>
                        <textarea class="titlecntarea" name="content" type="text" placeholder="내용을 입력해 주세요."
                                  style="font-size:15px; border:0; width:465px; margin-bottom:30px; padding: 50px; height:100px; "></textarea><br>
                        <%--                                <th>content</th>--%>
                        <%--                                <td><textarea rows="15" cols="20" name="content"></textarea></td>--%>
                        <th>마감일자</th>
                        <td><input type="date" name="ddate"></td>
                    </div>
                    <div class="addimg" style="padding:40px;">
                        <span class="v-title" style=" font-size: 17px; padding: 10px 0px 0px 30px;">이미지 첨부📁</span><br/>
                        <div class="write-info" style="width:200px;">
                            <span class="v-title" style="font-size: 13px;">이미지1</span><br/>
                            <td><input name="img1" type="file"></td>
                            <span class="v-title" style="font-size: 13px;">이미지2</span><br/>
                            <td><input name="img2" type="file"></td>
                            <span class="v-title" style="font-size: 13px;">이미지3</span><br/>
                            <td><input name="img3" type="file"></td>
                        </div>
                    </div>

                </div>
                <div class="hashcode">
                    <div class="write-info" style="width: 647px; height: 49px;">
                        <th>  hash</th>
                        <td><input type="text" name="hash" style="margin-top: 15px; margin-left:10px; width:450px; border: 0; padding:5px "></td>
                    </div>
                </div>
                <div class="addbtn-box">
                    <%--                                <a href="/idea/"><button type="button" class="cancel_button" size="10px" style="width: auto;">취소</button></a>--%>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <a href=""><input type="submit" class="write_button" size="10px"></a>
                                </span>
                    <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
                                <a href="/idea/"><button type="button" class="cancel_button" size="10px">취소</button></a><!--button type="button"-->
                                 </span>

                    <%--                            <tr>--%>
                    <%--                                <td><input type="submit" value="글작성"></td>--%>
                    <%--                            </tr>--%>
                </div>

            </form>
        </div>
    </div>
</div>
</div>
</body>
</html>






<%--        <div id="content">--%>
<%--            &lt;%&ndash;  real content  &ndash;%&gt;--%>


<%--                <h3>글작성 폼</h3>--%>
<%--                <form action="/board/add" method="post" enctype="multipart/form-data">--%>

<%--                    <table border="1">--%>
<%--                        <tr><th>writer</th><td><input type="text" name="writer" value="${sessionScope.id }"readonly></td></tr>--%>
<%--                        <tr><th>title</th><td><input type="text" name="title"></td></tr>--%>
<%--                        <tr><th>content</th><td><textarea rows="15" cols="20" name="content"></textarea></td></tr>--%>
<%--                        <tr><th>hash</th><td><input type="text" name="hash"></td></tr>--%>
<%--                        <tr><th>img</th><td><input type="file" name="f"></td></tr>--%>
<%--                        <tr><th>save</th><td><input type="submit" value="작성"><a href="/board/">취소</a></td></tr>--%>

<%--                    </table>--%>

<%--                </form>--%>
<%--            --%>
<%--            &lt;%&ndash;  main content   &ndash;%&gt;--%>
<%--            <div class="main-content">--%>
<%--                <div class="totalbox">--%>
<%--                    <div class="hot-idea">--%>
<%--                        <div class="ideabox"></div>--%>

<%--                    </div>--%>
<%--                    <div class="hot-vote">--%>
<%--                        <div class="vote-box"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;  real content end  &ndash;%&gt;--%>



<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Bootstrap core JavaScript-->--%>
<%--&lt;%&ndash;<script src="vendor/jquery/jquery.min.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>&ndash;%&gt;--%>

<%--&lt;%&ndash;<!-- Core plugin JavaScript-->&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="vendor/jquery-easing/jquery.easing.min.js"></script>&ndash;%&gt;--%>

<%--&lt;%&ndash;<!-- Custom scripts for all pages-->&ndash;%&gt;--%>


<%--&lt;%&ndash;<!-- Page level plugins -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="vendor/chart.js/Chart.min.js"></script>&ndash;%&gt;--%>

<%--<!-- Page level custom scripts -->--%>
<%--&lt;%&ndash;<script src="js/demo/chart-area-demo.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="js/demo/chart-pie-demo.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash; JS   &ndash;%&gt;--%>


<%--</body>--%>

<%--</html>--%>