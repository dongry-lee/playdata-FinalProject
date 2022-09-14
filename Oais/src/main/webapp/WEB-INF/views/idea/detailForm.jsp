<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link href="/css/slide.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />


    <title>아이디어게시판 글 상세페이지</title>
    <script src="https://kit.fontawesome.com/0fa6845915.js" crossorigin="anonymous"></script>


</head>
<body>
<header>
    <div class="wrapper"> <!--전체 랩 -->
        <a href="/"><h1 class=""></h1></a>
        <nav> <!-- 메뉴부분 -->
            <form action="/search" method="get"> <!-- 검색창 -->
                <div class="search" style="position: absolute;">
                    <input type="text" name="val" placeholder= "공모/투표/게시판 찾아보기" style="margin: 20px 0px 20px 160px;">
                    <button style="border: 0;border-radius: 6px; padding: 5px; width: 0px; margin-left: -28px;"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
            </form>
            <div class="button-group" style="display: flex; align-content: space-between; padding-top: 10px;margin-left: 940px;margin-top: 17px;">
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
    <div id="content" style="background-color: #f8f9fa;font-family:'Spoqa Han Sans Neo', 'sans-serif';">
        <div class="fg-head"><h2>아이디어 공모하기</h2></div>
        <div class="idea-form"> <!--  idea form vs idea write-from-->
            <c:if test="${b.img1 != null}">
                <div class="idea-box" style="margin-bottom: 20px;">
                    <div class="title-img" style="width: 350px;">
                        <div class="title" style="font-size: 30px;width: 611px;height: 35px;left: 240px;top: 143px;margin-left: 37px;margin-top: 3px;">
                            <a href="/idea/add?wnum=${b.wnum}">${b.title}</a></div>
                        <div class="idea-img" style="width: 300px;
                                              height: 200px;
                                              border-radius: 10px;
                                             padding: 6px;
                                              margin-left: 30px;
                                             margin-bottom: 20px;">
                        <td><img width="300px" height="300px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>
                    </c:if>
                    <c:if test="${b.img2 != null}">
                        <div class="idea-box">
                            <div class="idea-img">
                            <td><img width="300px" height="300px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>
                    </c:if>
                    <c:if test="${b.img3 != null}">
                                <div class="idea-box">
                                    <div class="idea-img">
                            <td><img width="300px" height="300px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>
                    </c:if>
                     <c:if test="${b.img1 == null}">
                                <div>이미지가 없습니다.</div>
                     </c:if><br>
                                        <p style="font-size: 12px;margin-top: 15px;">조회수:${b.views}</p>
                     </div>
                                </div>
                     <div class="idea-info">
                       <div class="idea-content">
                            <div class="wrote" style="font-size: 20px;margin-top: 27px;">작성자:${b.num.name}</div>
                            <div class="realcontent" style="border: 1px;
                            width: 484px;height: 170px;left: 590px;top: 228px;font-family: 'Inter';font-style: normal;font-weight: 400;font-size: 16px;margin-top:9px; line-height: 24px;">${b.content}</div>
                       </div>
                           <p style="
                                        width: 291px;
                                        height: 30px;
                                         left: 570px;
                                        top: 360px;
                                        font-family: 'Inter';
                                        font-style: normal;
                                         font-weight: 400;
                                         font-size: 13px;
                                    line-height: 24px;">공모 작성일:${b.wdate} 공모 마감일:${b.ddate}</p>
                             <span style="
                                        width: 290px;
                                        height: 30px;
                                         left: 569px;
                                          top: 390px;
                                         font-family: 'Inter';
                                        font-style: normal;
                                         font-weight: 400;
                                         font-size: 12px;"><button type="submit" class="hashtag" size="10px" style="border-radius:100px; border:1px; border-color:#d9d9d9;">${b.hash}</button></span>
<%--                             <p>${b.views}</p>--%>
<%--                             <p>${b.part}</p>--%>
                </div><!-- 아이디어 박스 끝 -->
                            </div>
                 <div class="addbtn-box">
                      <c:if test="${sessionScope.id==b.num.mid}">
                            <span style="padding: 5px; margin-top: 230px; border-radius:100px; border:1px; border-color: #f0f0f0;">
                                <a href="/idea/edit?wnum=${b.wnum}"><button type="submit" class="cancel_button" size="10px" >수정</button></a><!--button type="button"-->
                            </span>
<%--                          </c:if>--%>
                            <span style="padding: 5px; margin-top: 230px; border-radius:100px;">
                                <a href="/idea/"><button type="button" class="cancel_button" size="10px">취소</button></a><!--button type="button"-->
                                 </span>
                      </c:if>
                 </div>
                    <form action="/idea/detail" method="post">
                      <div class="detail-comment">
                        <h2 class="cmt-tt">댓글 작성</h2>

                             <input name="num.num" type="text" value="${sessionScope.num}">
                             <input name="wnum.wnum" type="text" value="${b.wnum}">
                             <input type="text" value="${sessionScope.name}" readonly>

                        <div class="commentBox">
                              <textarea id="writeComment" name="comment" maxlength="1000"
                                placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 삭제 또는 제제를 받을 수 있습니다." style="width: 834px;height: 40px;"></textarea>
                              <button class="cmtbt" type="submit">작성</button>

                        </div>
                      </div>
                    </form>


<%--                 <div class="idea-box" style="margin-top: 20px">--%>
<%--                      <div class="comment" style="margin-left: 15px;" >--%>
<%--                       <h3>댓글</h3>--%>
<%--                       <form action="/idea/detail" method="post">--%>
<%--                       <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--                       <input type="text" name="num" value="${sessionScope.num}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--                       <input type="text" value="${sessionScope.name}" readonly>--%>
<%--                       <input type="text" name="content" placeholder="댓글을 입력해주세요">--%>
<%--                        <input type="submit" value="댓글달기">--%>
<%--                        </form>--%>
<%--                      </div>--%>
<%--                 </div>--%>
                 <div class="idea-box" style="margin-top: 40px;">
                     <div class="commented" style="margin-left: 15px;" >
                        <c:forEach var="c" items="${comments}">
                                        <span>${c.num.name}</span>
                                        <span>${c.cdate}</span>
                                        <span>${c.content}</span>
                                        <c:if test="${sessionScope.num == c.num.num}">
                                            <span><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}"><input type="button" value="삭제"></a></span>
                                        </c:if>

                        </c:forEach>
                      </div>
                 </div>


<%--                                <div class="commentlist">--%>
<%--                                    <div class="cmtRod">--%>
<%--                                        <div>--%>
<%--                                            <div class="cmt">--%>
<%--                                                <span class="cmtwriter">${sessionScope.num}</span>--%>
<%--                                                <button class="eddelbt" onclick="">수정</button>--%>
<%--                                                <button class="eddelbt">삭제</button>--%>
<%--                                            </div>--%>
<%--                                            <p></p>--%>
<%--                                        </div>--%>
<%--                                        <hr>--%>
<%--                                    </div>--%>
<%--                                --%>


<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <th>title</th>--%>
<%--        <td><input type="text" name="title" value="${b.title}" readonly></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th>name</th>--%>
<%--        <td><input type="text" name="writer" value="${b.num.name}" readonly></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th>등록일자</th>--%>
<%--        <td><input type="text" value="${b.wdate}" readonly></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th>마감일자</th>--%>
<%--        <td><input type="text" value="${b.ddate}" readonly></td>--%>
<%--    </tr>--%>

<%--    <tr>--%>
<%--        <th>hash</th>--%>
<%--        <td><input type="text" name="hash" value="${b.hash}" readonly></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th>content</th>--%>
<%--        <td><textarea rows="15" cols="20" name="content" readonly>"${b.content}"</textarea></td>--%>
<%--    </tr>--%>
<%--    <c:if test="${b.img1 != null}">--%>
<%--    <tr>--%>
<%--        <th>img1</th>--%>
<%--        <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>--%>
<%--    </tr>--%>
<%--    </c:if>--%>
<%--    <c:if test="${b.img2 != null}">--%>
<%--        <tr>--%>
<%--            <th>img1</th>--%>
<%--            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>--%>
<%--        </tr>--%>
<%--    </c:if>--%>
<%--    <c:if test="${b.img3 != null}">--%>
<%--        <tr>--%>
<%--            <th>img3</th>--%>
<%--            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>--%>
<%--        </tr>--%>
<%--    </c:if>--%>
<%--    <c:if test="${sessionScope.id==b.num.mid}">--%>
<%--        <tr>--%>
<%--            <th>수정</th>--%>
<%--            <td><a href="/idea/edit?wnum=${b.wnum}">수정</a></td>--%>
<%--        </tr>--%>
<%--    </c:if>--%>

<%--<h3>댓글</h3>--%>
<%--<form action="/idea/detail" method="post">--%>
<%--    <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--    <input type="text" name="num" value="${sessionScope.num}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--    <input type="text" value="${sessionScope.name}" readonly>--%>
<%--    <input type="text" name="content" placeholder="댓글을 입력해주세요">--%>
<%--    <input type="submit" value="댓글달기">--%>
<%--</form>--%>
<%--</div>--%>
<%--    <c:forEach var="c" items="${comments}">--%>

<%--            <span>${c.num.name}</span>--%>
<%--            <span>${c.cdate}</span>--%>
<%--            <span>${c.content}</span>--%>
<%--            <c:if test="${sessionScope.num == c.num.num}">--%>
<%--                <span><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}">삭제</a></span>--%>
<%--            </c:if>--%>

<%--    </c:forEach>--%>


<%--&lt;%&ndash;  real content end  &ndash;%&gt;--%>
<%--<h3>Oais</h3>--%>



        </div>
    </div>
</div>
                </div>
                </div>
    </div>
</div>
</body>
</html>