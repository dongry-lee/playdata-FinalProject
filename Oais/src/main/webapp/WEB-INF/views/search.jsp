<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: idong-geun
  Date: 2022/08/31
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>검색</title>
</head>
<body>
<div><p>아이디어게시판</p>
<c:forEach var="item" items="${result}">
    <c:if test="${item.typecd == 0}">
        <c:if test="${item.img1 != null}">
            <img width="300px" height="300px" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
        </c:if>
        <c:if test="${item.img1 == null}">
            <div>이미지가 없습니다.</div>
        </c:if>
        <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
        <p>닉네임${item.num.name}</p>
        <p>content${item.content}</p>
        <p>마감일자${item.ddate}</p>
        <p>해쉬태그<a href="/search?val=${item.hash}">${item.hash}</a></p>
        <p>참여자${item.part}</p>
        <p>조회수${item.views}</p>
    </c:if>
</c:forEach>
</div>
<div><p>투표게시판</p>
    <c:forEach var="item" items="${result}">
        <c:if test="${item.typecd == 4}">
            <c:if test="${item.img1 != null}">
                <img width="300px" height="300px" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
            </c:if>
            <c:if test="${item.img1 == null}">
                <div>이미지가 없습니다.</div>
            </c:if>
            <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
            <p>닉네임${item.num.name}</p>
            <p>content${item.content}</p>
            <p>해쉬태그<a href="/search?val=${item.hash}">${item.hash}</a></p>
            <p>마감일${item.ddate}</p>
            <p>참여자수${item.part}</p>
            <p>조회수${item.views}</p>
        </c:if>
    </c:forEach>
</div>
<div><p>자유게시판</p>
    <c:forEach var="item" items="${result}">
        <c:if test="${item.typecd == 1}">
            <c:if test="${item.img1 != null}">
                <img width="300px" height="300px" src="/idea/read_img?fname=${item.img1}&wnum=${item.wnum}">
            </c:if>
            <c:if test="${item.img1 == null}">
                <div>이미지가 없습니다.</div>
            </c:if>
            <p><a href="/idea/detail?wnum=${item.wnum}">${item.title}</a></p>
            <p>닉네임${item.num.name}</p>
            <p>내용${item.content}</p>
            <p>해쉬태그<a href="/search?val=${item.hash}">${item.hash}</a></p>
            <p>마감일자${item.ddate}</p>
            <p>참여자${item.part}</p>
            <p>조회수${item.views}</p>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
