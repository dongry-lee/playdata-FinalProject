
<%--
  Created by IntelliJ IDEA.
  User: Playdata
  Date: 2022-09-01
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/css/idea.css" rel="stylesheet">
    <link href="/css/slide.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <title>자유게시판 글 상세페이지</title>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
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
            <div class="button-group" style="display: flex; align-content: space-between; margin-left: 1100px; position: absolute;">
                <c:if test="${sessionScope.num == null}">
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/login"><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
                <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href="/member/join"><button  type="button" class="join_button" size="10px">회원가입</button></a>
             </span>
                </c:if>
            <div class="button-group" style="display: flex; align-content: space-between;margin-left: 130px;margin-top: 5px;">
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
            <li class="sidbtn"><a href="/vote" class="item">
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
        <div class="fg-head"><h2>자유게시판</h2></div>

        <div class="idea-form">
            <div class="idea-box" style="margin-bottom: 20px;">
                <div class="title-img" style="width: 350px;margin-left: 30px;">
                  <div class="title" style="font-size: 20px;margin-top:3px; width: 611px;height: 28px;left: 240px;top: 143px;margin-left: 5px;margin-top:10px;">
                      <a href="/community/add?wnum=${b.wnum}">🖋️${b.title}</a></div>

                    <div class="section">
                        <input type="radio" name="slide" id="slide01" checked>
                        <input type="radio" name="slide" id="slide02">
                        <input type="radio" name="slide" id="slide03">
                        <div class="slidewrap">
                            <ul class="slidelist">
                                <li>
                                    <a>
                                        <label for="slide03" class="left"></label><c:if test="${b.img1 != null}">
                                        <img width="300px" height="200px" src="/community/read_img?fname=${b.img1}&wnum=${b.wnum}">
                                        <label for="slide02" class="right"></label></c:if>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <label for="slide01" class="left"></label><c:if test="${b.img2 != null}">
                                        <img width="300px" height="200px" src="/community/read_img?fname=${b.img2}&wnum=${b.wnum}">
                                        <label for="slide03" class="right"></label></c:if>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <label for="slide02" class="left"></label><c:if test="${b.img3 != null}">
                                        <img width="300px" height="200px" src="/community/read_img?fname=${b.img3}&wnum=${b.wnum}"></c:if>
                                        <label for="slide01" class="right"></label>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div><br>
                    <hr class="bottom-line">
                    <p style="font-size: 12px;">조회수:${b.views}</p>
                </div>
                    <div class="idea-info">
                        <div class="idea-content">
                                        <div class="wrote" style="font-size: 15px;margin-top: 27px;">작성자:${b.num.name}</div><br>
                            <hr class="bottom-line">
                                        <div class="realcontent" style="border:1px; width: 484px;height: 166px;left: 590px;top: 228px;font-style: normal;font-weight: 400;font-size: 16px;margin-top:9px;line-height: 24px;">${b.content}
                                        </div>
                                         </div>
                        <hr class="bottom-line">
                                    <p style="
                                        width: 291px;
                                        height: 30px;
                                         left: 570px;
                                        top: 360px;

                                        font-style: normal;
                                         font-weight: 400;
                                         font-size: 13px;
                                         color: #586672;
                                        line-height: 24px;">공모 작성일:${b.wdate}</p>

                      </div><!-- 아이디어 박스 끝 -->
                            </div>
                            <div class="addbtn-box" style="margin-left: 1000px; margin-bottom: 30px;">
                              <c:if test="${sessionScope.id==b.num.mid}">
                                <span style="padding: 5px; margin-top: 230px; border-radius:100px; border:1px; border-color: #f0f0f0;">
                                <a href="/community/edit?wnum=${b.wnum}"><button type="submit" class="cancel_button" size="10px">수정</button></a>
                                </span>
                                <span style="padding: 5px; margin-top: 230px; border-radius:100px;">
                                    <a href="/community/"><button type="button" class="cancel_button"
                                                              size="10px">목록으로</button></a>
                                 </span>
                              </c:if>
                            </div>
                                    <form action="/community/detail" method="post">
                                        <div class="detail-comment" style="border: 1px solid #dadce0;
                                             background-color: #ffffff;
                                             padding: 10px;
                                             border-radius: 10px;">
                                            <h2 class="cmt-tt" style="color: #232726;">댓글 작성</h2>
                                                <input name="num" type="hidden" value="${sessionScope.num}" style="border: 1px solid #dadce0;">
                                                <input name="wnum" type="hidden" value="${b.wnum}"style="border: 1px solid #dadce0;">
                                                <input type="text" value="${sessionScope.name}" readonly style="border: 1px solid #dadce0;">

                                            <div class="commentBox">
                                                <textarea id="writeComment" name="content" maxlength="1000" placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 삭제 또는 제제를 받을 수 있습니다." style="width: 834px;height: 40px;border: 1px solid #dadce0;"></textarea>
                                                <button class="cmtbt" type="submit"style="background-color:#3CA6AD; color:#ffffff; border: 0;padding: 1px 5px;border-radius: 6px;margin-left: 5px;">작성</button>

<%--                                                <input type="text" name="wnum" value="${b.wnum}" readonly style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--                                        <input type="text" name="num" value="${sessionScope.num}" readonly--%>
<%--                                               style="display: none">&lt;%&ndash; 안보이게 만들어야함 &ndash;%&gt;--%>
<%--                                        <input type="text" value="${sessionScope.name}" readonly>--%>
<%--                                        <input type="text" name="content" placeholder="댓글을 입력해주세요">--%>
<%--                                        <input type="submit" value="댓글달기">--%>
                                            </div>
                                        </div>
                                    </form>
                            <div class="idea-box" style="margin-top: 40px;">
                                <div class="commented" style="margin-left: 15px;">
                                    <c:forEach var="c" items="${comments}">
                                        <span>${c.num.name}</span>
                                        <span>${c.cdate}</span>
                                        <span>${c.content}</span>
                                        <c:if test="${sessionScope.num == c.num.num}">
                                            <span><a href="/community/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}"><input type="button" value="삭제"></a></span>
                                        </c:if>

                                    </c:forEach>
                                </div>
                            </div>


                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</div>
</div>
</body>
</html>