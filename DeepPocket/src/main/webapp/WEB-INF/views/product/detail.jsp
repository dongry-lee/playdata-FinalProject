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
<h3>상품 정보</h3>
<c:if test="${p.seller.id.equals(sessionScope.id)==false}">
<c:set var="read">readonly</c:set>
</c:if>
<table style="border:solid 1px black">
    <form action="/product/edit" method="post">
        <tr><th>num</th><td><input type="text" name="num" value="${p.num }" readonly></td></tr>
        <tr><th>상품명</th><td><input type="text" name="name" value="${p.name }" readonly></td></tr>
        <tr><th>정보</th><td><input type="text" name="info" value="${p.info }" ${read}></td></tr>
        <tr><th>가격</th><td><input type="text" name="price" value="${p.price }" ${read}></td></tr>
        <tr><th>수량</th><td><input type="text" name="amount" value="${p.amount}" ${read}></td></tr>
        <tr><th>판매자</th><td><input type="text" name="seller" value="${p.seller.id}" readonly></td></tr>

        <c:if test="${p.seller.id.equals(sessionScope.id)}">
            <tr><th>수정</th><td><input type="submit" value="수정"></td></tr>
            <tr><th>삭제</th><td><button onclick="location.href='/product/delete?num=${p.num}'">삭제</button></td></tr>
        </c:if>



        <tr><td>
            <a href="${pageContext.request.contextPath }/product/list">메뉴로 돌아감</a>
        </td></tr>


    </form>
<%--        <c:if test="${sessionScope.mem_type == false}">--%>
<%--            <form action="${pageContext.request.contextPath}/order/add" method="post">--%>
<%--                <tr><td>${msg}</td></tr>--%>
<%--                <tr><th>장바구니 추가</th><td><input type="number", name="cnt"><input type="text" name="num" value="${p.num}" style="display: none"><br/>--%>
<%--                    <input type="text", name="addr", placeholder="주소를 입력해주세요">--%>
<%--                    <input type="submit" value="추가"></td></tr>--%>
<%--            </form>--%>
<%--        </c:if>--%>
</table>


</body>
</html>