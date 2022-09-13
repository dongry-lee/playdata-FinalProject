<%--
  Created by IntelliJ IDEA.
  User: yjs61
  Date: 2022-08-30
  Time: 오후 4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>


    <title></title>
</head>
<body>
<div>
    ${item01}:
    <progress value="${votecount1}" max="50"></progress>
</div>
<div>
    ${item02}:
    <progress value="${votecount2}" max="50"></progress>
</div>
<c:if test="${item03 == ''}">
<div>
    ${item03}:
    <progress value="${votecount3}" max="50"></progress>
</div>
</c:if>

<c:if test="${item04 == ''}">
<div>
    ${item04}:
    <progress value="${votecount4}" max="50"></progress>
</div>
</c:if>
</body>
</html>
