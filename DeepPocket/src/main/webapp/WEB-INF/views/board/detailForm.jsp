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
<c:if test="${sessionScope.id != b.writer.id }">
<c:set var="readAttr">readonly</c:set> <!-- 변수 선언 태그 -->
</c:if>
<h3>상세페이지</h3>
<form action="/board/edit" method="post" enctype="multipart/form-data">
<table border="1">
<tr><th>num</th><td><input type="text" name="num" value="${b.num}" readonly></td></tr>
<tr><th>writer</th><td><input type="text" name="writer" value="${b.writer.id}" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title" value="${b.title}" ${readAttr }></td></tr>
<tr><th>w_date</th><td><input type="text" value="${b.w_date}" readonly></td></tr>
<tr><th>hash</th><td><input type="text" name="hash" value="${b.hash}" ${readAttr }></td></tr>
<tr><th>content</th><td><textarea rows="15" cols="20" name="content" ${readAttr }>"${b.content}"</textarea></td></tr>
<%--    사진수정은 어떻게..?--%>
<tr><th>img1</th><td><input type="file" name="f" ${readAttr }></td>
<td><img width="100px"  height="100px" src="/board/read_img?fname=${b.img1 }&num=${b.num}">
</td>
</tr>
<c:if test="${sessionScope.id==b.writer.id}" >
<tr><th>수정</th><td><input value="수정" type="submit"></td></tr>
</c:if>
<c:if test="${(sessionScope.id==b.writer.id) || (sessionScope.mem_type == true)}" >
<tr><th>삭제</th><td><input  type="button" value="삭제" onclick="location.href='/board/delete?num=${b.num}'"></td></tr>
</c:if>
</table>
</form>
</body>
</html>