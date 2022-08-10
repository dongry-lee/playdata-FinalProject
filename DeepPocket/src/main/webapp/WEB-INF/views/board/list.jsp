<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<%--<c:if test="${sessionScope.id != writer.id }">--%>
<%--    <c:set var="readAttr">readonly</c:set> <!-- 변수 선언 태그 -->--%>
<%--</c:if>--%>
<h3>상세페이지</h3>
<c:forEach var="b" items="${list}">
    <table border="1">
        <tr><th>num</th><td>${b.num}</td></tr>
        <tr><th>writer</th><td>${b.writer.id}</td></tr>
        <tr><th>title</th><td>${b.title}</td></tr>
        <tr><th>w_date</th><td>${b.w_date}></td></tr>
        <tr><th>content</th><td>${b.content}</td></tr>
        <tr><th>hash</th><td>${b.hash}</td></tr>
        <tr><th>img</th><td><img src="#"></td></tr>
        <c:if test="${sessionScope.id==b.writer.id}" ><tr><th>수정</th><td><input value="수정" type="submit"></td></tr>
        </c:if>
    </table>
</c:forEach>

</body>
</html>