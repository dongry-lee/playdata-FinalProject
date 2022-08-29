<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>아이디어게시판 수정폼</title>
</head>
<body>

<form action="/idea/edit" method="post" enctype="multipart/form-data">
    <table border="1">
        <tr>
            <th>이거안보이게할거임</th>
            <td><input type="text" name="wnum" value="${b.wnum}" readonly></td>
        </tr>
        <tr>
            <th>title</th>
            <td><input type="text" name="title" value="${b.title}"></td>
        </tr>
        <tr>
            <th>name</th>
            <td><input type="text" name="name" value="${b.num.name}" readonly></td>
        </tr>
        <tr>
            <th>content</th>
            <td><textarea rows="15" cols="20" name="content">"${b.content}"</textarea></td>
        </tr>
        <tr>
            <th>마감일자</th>
            <td><input type="date" name="ddate" value="${b.ddate}"></td>
        </tr>
        <tr>
            <th>hash</th>
            <td><input type="text" name="hash" value="${b.hash}"></td>
        </tr>

        <tr>
            <th>img1</th>
            <td><input type="file" name="img1"></td>
        </tr>

        <tr>
            <th>img2</th>
            <td><input type="file" name="img2"></td>
        </tr>

        <tr>
            <th>img3</th>
            <td><input type="file" name="img3"></td>
        </tr>


        <tr>
            <th>수정</th>
            <td><input value="수정" type="submit"></td>
        </tr>



        <tr>
            <th>삭제</th>
            <td><input type="button" value="삭제" onclick="location.href='/idea/delete?wnum=${b.wnum}'"></td>
        </tr>
    </table>
</form>
<%--  real content end  --%>
<h3>Deepocket</h3>


</body>
</html>