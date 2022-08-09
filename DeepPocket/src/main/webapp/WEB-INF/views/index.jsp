<%--
  Created by IntelliJ IDEA.
  User: idong-geun
  Date: 2022/07/20
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Deepocket</h3>
<c:if test="${empty sessionScope.id}">
    <a href="/member/login">로그인</a>
    <a href="/member/join">회원가입</a>
</c:if>
<c:if test="${not empty sessionScope.id}">
    ${sessionScope.id }님 로그인중 /
    <c:if test="${sessionScope.mem_type==false}">당신은 일반회원입니다</c:if>
    <c:if test="${sessionScope.mem_type==true}">당신은 관리자입니다</c:if>
    <a href="/member/detail">내정보확인</a><br/>
    <a href="/member/logout">로그아웃</a><br/>
    <a href="/member/out">탈퇴</a><br/>
</c:if>
<a href="/board/">커뮤니티로</a>


</body>
</html>
