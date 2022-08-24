<%--
  Created by IntelliJ IDEA.
  User: 27251
  Date: 2022-08-10
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <title>아이디어게시판 글작성</title>
</head>

<body>
<form action="/idea/add" method="post">
    <table border="1">
        <tr><th>title</th><td><input type="text" name="title"></td></tr>
        <tr><th>name</th><td><input type="text" name="name" value="${sessionScope.name}" readonly></td></tr>
        <tr><th>여기안보이게</th><td><input type="text" name="num" value="${sessionScope.num}" readonly></td></tr>
        <tr><th>content</th><td><textarea rows="15" cols="20" name="content" ></textarea></td></tr>
        <tr><th>마감일자</th><td><input type="date" name="ddate"></td></tr>
        <tr><th>hash</th><td><input type="text" name="hash"></td></tr>
        <tr><th>취소</th><td><a href="/idea/">취소</a></td></tr>
        <tr><th>글작성</th><td><input type="submit" value="글작성"></td></tr>


    </table>
</form>
</body>
</html>
