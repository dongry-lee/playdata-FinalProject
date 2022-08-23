<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-23
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="container" action="/articles/create" method="post">
  <div class="mb-3">
    <label class="form-label"></label>
    <!-- 입력값: title -->
    투표항목을 입력하세요
    <input type="text" class="form-control" name="item">

  <button type="submit" class="btn btn-primary">Submit</button>

</form>
</body>
</html>
