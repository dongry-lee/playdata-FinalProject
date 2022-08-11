<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


    <link href="/bootstrap/layout/member/join.css" rel="stylesheet">

<title>회원가입</title>

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
<h5>${msg }</h5>
<%--<form action="/member/join" method="post" name="f1">--%>
<%--<table style="border:solid 1px black">--%>
<%--<tr><th>id</th><td><input type="text" name="id"><input type="button" value="중복체크" onclick="idcheck()">--%>
<%--    <span id="res"></span></td></tr>--%>
<%--<tr><th>pwd</th><td><input type="text" name="pwd"></td></tr>--%>
<%--<tr><th>name</th><td><input type="text" name="name"></td></tr>--%>
<%--<tr><th>email</th><td><input type="text" name="email"></td></tr>--%>
<%--<tr><th>tel</th><td><input type="text" name="tel"></td></tr>--%>
<%--</table>--%>
<%--</form>--%>

<div class="sign_up">
    <div class="sign_form">
        <form action="/member/join" method="post" type="submit" name="f1">
            <ul>
            <li>
                <img src=""  alt="로고" class="center-block">
            </li>
            <li>
                <label><strong>아이디</strong><br>
                    <input type="text" class="id_b" name="id" id="new_id" minlength=5 maxlength=20 required >
                    <p><spen id= "id_result" >아이디 중복확인</spen></p>
                    <input type="button" value="중복체크" onclick="idcheck()">
                    <span id="res"></span>
                </label>
            </li>

            <li>
                <label><strong>비밀번호</strong><br>
                    <input type="password" name="pwd" id="pwd1" onKeyup="chkpw()" class="form-control" required>

                </label>
                <p><spen id=s_relult1>영문, 숫자, 특수문자를 포함한 8자리 이상 입력하세요.</spen></p>
            </li>
            <li>
                <label><strong>비밀번호 확인</strong><br>
                    <input type="password" name="reuserPwd" id="pwd2"  onKeyup="passwordcheck()" class="form-control" required>
                </label>
                <p><spen id= "s_relult2"></spen></p>
            </li>
            <li>
                <label>
                    <strong>이름</strong><br>
                    <input type="text" name="name" id="new_name" required>
                </label>
            </li>

            <li>
                <label>
                    <strong>생년월일</strong><br>
                    <input type="date" id="birthday" name="birthday"
                           value="1985-01-01"
                           min="1930-01-01" max="2050-12-31" required>
                </label>
            </li>

            <li>
                <label><strong>성별</strong><br>
                    <select name="gender" id = "gender" required="required">
                        <option value="m">남자</option>
                        <option value="w">여자</option>
                    </select>
                </label>
            </li>
            <li>
                <label><strong>이메일</strong></label><br>
                <div class="emailcontent">
                    <input type="text" name="email" id="email" required="required">
                </div>
            </li>
            <li>
                <label><strong>전화번호 입력</strong></label><br>
                <div class="str_phonecan">
                    <input type="text" name="tel" id="phone" required="required">
                </div>
            </li>
            <li>
                <button type="submit" class="sand"  id="sub" >
                    <b>가입하기</b>
                </button>
                <button class="canslbtn" onclick="location.href='/' "  id="subcc" >
                    <b>취소</b>
                </button>
            </li>
        </ul>
        </form>
    </div>
</div>
</body>
</html>