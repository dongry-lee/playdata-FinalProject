<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script type="text/javascript">
        window.onload = () => {
            let radio = null;
            if(${m.mem_type}){
                radio = document.getElementById("mem2");
            }else{
                radio = document.getElementById("mem1");
            }
            radio.checked = true;
        }
    </script>
</head>
<body>
<h3>내 정보</h3>
<form action="/member/edit" method="post">

<table style="border:solid 1px black">
<tr><th>id</th><td><input type="text" name="id" value="${m.id }" readonly></td></tr>
<tr><th>pwd</th><td><input type="text" name="pwd" value="${m.pwd }"></td></tr>
<tr><th>tel</th><td><input type="text" name="tel" value="${m.tel }"></td></tr>
<tr><th>addr</th><td><input type="text" name="addr" value="${m.addr }"></td></tr>
<tr><th>가입형태</th><td><input type="radio" name="mem_type" id="mem1" value="false" disabled>구매자
    <input type="radio" name="mem_type" id="mem2" value="true" disabled>판매자</td></tr>
<tr><td>수정</th><td><input type="submit" value="수정">
<a href="/">메뉴로 돌아감</a>
</td></tr>

</table>

</form>
</body>
</html>