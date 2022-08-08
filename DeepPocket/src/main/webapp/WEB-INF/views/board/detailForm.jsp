<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.id != writer.id }">
<c:set var="readAttr">readonly</c:set> <!-- 변수 선언 태그 -->
</c:if>
<h3>상세페이지</h3>
<form action="/board/edit" method="post">
<table border="1">
<tr><th>num</th><td><input type="text" name="num" value="${num}" readonly></td></tr>
<tr><th>writer</th><td><input type="text" name="writer" value="${writer.id}" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title" value="${title}" ${readAttr }></td></tr>
<tr><th>w_date</th><td><input type="text" value="${w_date}" readonly></td></tr>
<tr><th>content</th><td><textarea rows="15" cols="20" name="content" ${readAttr }>"${content}"</textarea></td></tr>
<c:if test="${sessionScope.id==writer.id}" >
<tr><th>수정</th><td><input value="수정" type="submit"></td></tr>
</c:if>
</table>
</form>
</body>
</html>