<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.mem_type == true}">
<a href="${pageContext.request.contextPath }/product/add">상품등록</a><br/>
    <h3>판매자화면입니다</h3>
<%--    <h3>"${sessionScope.id}"님의 판매상품</h3>--%>
</c:if>

<c:if test="${sessionScope.mem_type == false}">
<%--    <a href="${pageContext.request.contextPath }/order/cart">장바구니</a><br/>--%>
<%--    <a href="${pageContext.request.contextPath }/order/list">결제된항목</a><br/>--%>
    <h3>구매자입니다</h3>
</c:if>


<div>
    <form action="/product/getBySeller" method="post">
        <input type="text" placeholder="판매자명으로 검색", name="id">
        <input type="submit" value="검색">
    </form>
    <form action="/product/getByName" method="post">
        <input type="text" placeholder="상품명으로 검색", name="name">
        <input type="submit" value="검색">
    </form>
    <form action="/product/getByPrice" method="post">
        <input type="number" placeholder="시작가격", name="min">
        <input type="number" placeholder="끝가격", name="max">
        <input type="submit" value="가격대로 검색">
    </form>
    <button onclick="location.href='/product/list'">전체리스트보기</button>
</div>
<c:forEach var="p" items="${list }">
    <table border="1">
        <tr><th>상품번호</th><td>${p.num }</td></tr>
        <tr><th>상품명</th><td><a href="/product/detail?num=${p.num}">${p.name }</a></td></tr>
        <tr><th>가격</th><td>${p.price}</td></tr>
        <tr><th>물량</th><td>${p.amount}</td></tr>
    </table>
</c:forEach>
</body>
</html>