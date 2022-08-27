<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-27
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="layout">
  <form action="/voteboard/writepro" method="post">
    <input name="num.num" type="text" value="${sessionScope.num}">
    <input name="title" type="text">
    <textarea name="content"></textarea>
    <input name="item01" type="text">
    <input name="item02" type="text">
    <button>작성</button>
  </form>
</div>
</body>
</html>
