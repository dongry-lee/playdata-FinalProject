<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 추가</h3>
<form action="/product/add" method="post">
    <table style="border:solid 1px black">
        <tr><th>상품명</th><td><input type="text" name="name"></td></tr>
        <tr><th>정보</th><td><input type="text" name="info"></td></tr>
        <tr><th>가격</th><td><input type="text" name="price"></td></tr>
        <tr><th>수량</th><td><input type="text" name="amount"></td></tr>
        <tr><th>판매자</th><td><input type="text" name="seller.id" value="${sessionScope.id}" readonly></td></tr>

        <tr><th>수정</th><td><input type="submit" value="추가">


            <a href="/product/list">메뉴로 돌아감</a>
        </td></tr>

    </table>

</form>
</body>
</html>