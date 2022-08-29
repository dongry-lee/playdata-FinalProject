<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디어게시판 글 상세페이지</title>


</head>
<body>


<table border="1">
    <tr>
        <th>title</th>
        <td><input type="text" name="title" value="${b.title}" readonly></td>
    </tr>
    <tr>
        <th>name</th>
        <td><input type="text" name="writer" value="${b.num.name}" readonly></td>
    </tr>
    <tr>
        <th>등록일자</th>
        <td><input type="text" value="${b.wdate}" readonly></td>
    </tr>
    <tr>
        <th>마감일자</th>
        <td><input type="text" value="${b.ddate}" readonly></td>
    </tr>

    <tr>
        <th>hash</th>
        <td><input type="text" name="hash" value="${b.hash}" readonly></td>
    </tr>
    <tr>
        <th>content</th>
        <td><textarea rows="15" cols="20" name="content" readonly>"${b.content}"</textarea></td>
    </tr>
    <c:if test="${b.img1 != null}">
    <tr>
        <th>img1</th>
        <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img1}"></td>
    </tr>
    </c:if>
    <c:if test="${b.img2 != null}">
        <tr>
            <th>img1</th>
            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img2}"></td>
        </tr>
    </c:if>
    <c:if test="${b.img3 != null}">
        <tr>
            <th>img3</th>
            <td><img width="500px" height="500px" src="/idea/read_img?wnum=${b.wnum}&fname=${b.img3}"></td>
        </tr>
    </c:if>
    <c:if test="${sessionScope.id==b.num.mid}">
        <tr>
            <th>수정</th>
            <td><a href="/idea/edit?wnum=${b.wnum}">수정</a></td>
        </tr>
    </c:if>

</table>

<h3>댓글</h3>
<form action="/idea/detail" method="post">
    <input type="text" name="wnum" value="${b.wnum}" readonly><%-- 안보이게 만들어야함 --%>
    <input type="text" name="num" value="${sessionScope.num}" readonly><%-- 안보이게 만들어야함 --%>
    <input type="text" value="${sessionScope.name}" readonly>
    <input type="text" name="content" placeholder="댓글을 입력해주세요">
    <input type="submit" value="댓글달기">
</form>

    <c:forEach var="c" items="${comments}">

            <span>${c.num.name}</span>
            <span>${c.cdate}</span>
            <span>${c.content}</span>
            <c:if test="${sessionScope.num == c.num.num}">
                <span><a href="/idea/comment/delete?cnum=${c.cnum}&wnum=${c.wnum.wnum}">삭제</a></span>
            </c:if>

    </c:forEach>


<%--  real content end  --%>
<h3>Oais</h3>



</body>
</html>