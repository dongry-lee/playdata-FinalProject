<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-24
  Time: 오전 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<a href="/voteboard/vote">투표</a>

  <form action="/voteboard/cro/" method="post">
    <input name="num.num" type="text" value="${sessionScope.num}">
    제목
    <input name="title" type="text">
    내용
    <textarea name="content"></textarea>
    <button>작성</button>
  </form>
</div>
</body>
</html>