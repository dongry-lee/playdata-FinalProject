<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <script src="https://code.jquery.com/jquery-3.5.0.js" integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

    <link href="/css/join.css" rel="stylesheet">

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
                    let msg = "사용 가능한 아이디";
                    //alert(obj.flag);
                    if(obj.flag){
                        msg = "사용 불가능한 아이디";
                        f1.mid.value = "";
                    }
                    let res = document.getElementById("res");
                    res.innerHTML = msg;
                }else{
                    alert(xhttp.status);//응답코드. 200이 정상.
                }

            }
            let id = f1.mid.value;
            console.log(id);
            xhttp.open("GET", "/member/idcheck2?id="+id, true);
            xhttp.send();
        }


        //비밀번호 유효성 검사
        var compare_result = false;
        function passwordcheck(){
            var password1 = $('#pwd1').val();
            var password2 = $('#pwd2').val();
            var s_relult2 = $('#s_relult2');
            if (password1 == password2) {
                if (password2 == 0) {
                    s_relult2.text("");
                }
                else {
                    compare_result = true;
                    s_relult2.text('비밀번호가 일치합니다.');
                    $("#sub").attr("disabled",false);
                }
            }
            else {
                compare_result = false;
                s_relult2.text('비밀번호가 일치하지 않습니다.');
                $("#sub").attr("disabled",true);
            }
        }

        function chkpw(){
            var pw = $("#pwd1").val();
            var num = pw.search(/[0-9]/g);
            var eng = pw.search(/[A-z]/ig);
            var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
            var s_relult1 = $('#s_relult1');

            if(pw.length < 8 || pw.length > 20){
                if(pw.length == 0){
                    s_relult1.text("영문, 숫자, 특수문자를 포함한 8자리 이상 입력하세요.");

                }
                else{
                    s_relult1.text("8자리 ~ 20자리 이내로 입력해주세요.");
                    $("#sub").attr("disabled",true);
                }
            }
            else if(pw.search(/\s/) != -1){
                s_relult1.text("비밀번호는 공백 없이 입력해주세요.");

            }
            else if(num < 0 || eng < 0 || spe < 0 ){
                s_relult1.text("영문,숫자, 특수문자를 혼합하여 입력해주세요.");

            }
            else {
                s_relult1.text("사용가능한 비밀번호입니다!");

            }

        }
    </script>

</head>
<body>
<div class="sign_up">
    <div class="sign_form">
        <form action="/member/join" method="post" type="submit" name="f1">
            <ul>
            <li>
                <img src="/img/img.png"  alt="로고" class="center-block">
            </li>
            <li>
                <label><strong>아이디</strong><br>
                    <input type="text" class="id_b" name="mid" id="new_id" minlength=5 maxlength=20 required >
                    <p><spen id= "id_result" >아이디 중복확인</spen></p>
                    <input type="button" value="중복체크" onclick="idcheck()">
                    <span id="res"></span>
                </label>
            </li>

                <li>
                    <label><strong>비밀번호</strong><br>
                        <input type="password" name="pwd" id="pwd1" class="form-control" onkeyup="chkpw()" required>

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