<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>내 정보</h3>
<form action="/member/edit" method="post">

<table style="border:solid 1px black">
<tr><th>id</th><td><input type="text" name="id" value="${m.id }" readonly></td></tr>
<tr><th>pwd</th><td><input type="text" name="pwd" value="${m.pwd }"></td></tr>
<tr><th>name</th><td><input type="text" name="name" value="${m.name }"></td></tr>
<tr><th>email</th><td><input type="text" name="email" value="${m.email }"></td></tr>
<tr><th>tel</th><td><input type="text" name="tel" value="${m.tel }"></td></tr>
<tr><td>수정</th><td><input type="submit" value="수정">
<a href="/">메뉴로 돌아감</a>
</td></tr>

</table>

</form>
</body>
</html>