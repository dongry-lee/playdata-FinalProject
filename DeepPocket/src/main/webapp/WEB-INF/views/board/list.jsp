<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
const a = (num) => {
	//1. 비동기 요청 객체 생성
	const xhttp = new XMLHttpRequest();

	//핸들러 등록: 요청에 대한 응답이 왔을때 자동 호출될 함수 등록
	xhttp.onload = function() {
	  // 응답 처리 내용
	  if(xhttp.status==200){
		  let resVal = xhttp.responseText;//텍스트 응답 {"num":3, "w_date":2022-03-02, "writer":"aaa", "title":...}
		  //alert(resVal);
		  let obj = JSON.parse(resVal);//응답 값을 json으로 파싱
		  let div = document.getElementById("detail");
		  let html = num+"번글 상세내용<br/>";
		  html += "num:"+obj.num+"<br/>";
		  html += "w_date:"+obj.w_date+"<br/>";
		  html += "writer:"+obj.writer.id+"<br/>";
		  html += "title:"+obj.title+"<br/>";
		  html += "content:"+obj.content+"<br/>";
		  div.innerHTML = html;
	  }else{
		  alert(xhttp.status);//응답코드. 200이 정상.
	  }
	}
	//2. 요청 객체 오픈. 요청 설정. 서버 페이지경로. 비동기(true)/동기(false)
	xhttp.open("GET", "/board/getByNum?num="+num, true);
	//3. 요청 전송
	xhttp.send();
}

const b = () => {
	let div = document.getElementById("detail");
	div.innerHTML = "";
}

const search = (x) =>{
    f1.action = "/board/getby"+x;
    f1.submit(); // 폼 전송
}
</script>
</head>
<body>
<h3>글목록</h3>
<form action="" name="f1" method="post">
    <select name="s1">
        <option value="title" selected>제목</option>
        <option value="writer">작성자</option>
    </select>
    <input type="text" name="val">
    <input type="button" value="검색" onclick="search(this.form.s1.value)">

</form>
<c:if test="${not empty sessionScope.id}">
<a href="/board/add">글작성</a>
</c:if>
<table border="1">
<tr><th>num</th><th>title</th><th>writer</th></tr>
<c:forEach var="b" items="${list }">
<tr>
<td>${b.num }</td><td onmouseover="a(${b.num})" onmouseout="b()">
    <c:if test="${sessionScope.id == b.writer.id}">
        <a href="/board/detail?num=${b.num}">${b.title }</a><button onclick="location.href='/board/delete?num=${b.num}'">삭제</button>
    </c:if>
    <c:if test="${sessionScope.id != b.writer.id}">${b.title }</c:if>
</td><td>${b.writer.id }</td></tr>
</c:forEach>
</table>

<div id="detail" style="position:absolute;top:100px;left:300px">


</div>
</body>
</html>