<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script type="text/javascript">
        const idcheck = () => {
            //비동기 객체 생성
            const xhttp = new XMLHttpRequest();

            //핸들러 등록: 요청에 대한 응답이 왔을때 자동 호출될 함수 등록
            xhttp.onload = function() {
                // 응답 처리 내용
                if(xhttp.status==200){
                    let resVal = xhttp.responseText;//텍스트 응답
                    let obj = JSON.parse(resVal);//응답 값을 json으로 파싱{flag:true, id:aaa}
                    let msg = "사용 불가능한 아이디";
                    //alert(obj.flag);
                    if(obj.flag){
                        msg = "사용 가능한 아이디";
                    }else{
                        f1.id.value = "";
                    }
                    let res = document.getElementById("res");
                    res.innerHTML = msg;
                }else{
                    alert(xhttp.status);//응답코드. 200이 정상.
                }

            }
            let id = f1.id.value;
            xhttp.open("GET", "/member/idcheck2?id="+id, true);
            xhttp.send();
        }
    </script>
</head>
<body>
<h3>회원가입</h3>
<h5>${msg }</h5>
<form action="/member/join" method="post" name="f1">
<table style="border:solid 1px black">
<tr><th>id</th><td><input type="text" name="id"><input type="button" value="중복체크" onclick="idcheck()">
    <span id="res"></span></td></tr>
<tr><th>pwd</th><td><input type="text" name="pwd"></td></tr>
<tr><th>name</th><td><input type="text" name="name"></td></tr>
<tr><th>email</th><td><input type="text" name="email"></td></tr>
<tr><th>tel</th><td><input type="text" name="tel"></td></tr>
<tr><th>가입</th><td><input type="submit" value="가입"></td></tr>
</table>
</form>
</body>
</html>