<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.5.0.js" integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

    <link href="/bootstrap/layout/member/join.css" rel="stylesheet">

    <title>내 정보확인</title>
</head>
<body>
<h3>내 정보</h3>

<div class="sign_up">
    <div class="sign_form">
        <form action="/member/edit" method="post">
            <ul>
                <li>
                    <img src=""  alt="로고" class="center-block">
                </li>
                <li>
                    <label><strong>아이디</strong><br>
                        <input type="text" class="id_b" name="id" id="new_id" value="${m.id}" minlength=5 maxlength=20 readonly>

                    </label>
                </li>

                <li>
                    <label><strong>비밀번호</strong><br>
                        <input type="text" name="pwd" id="pwd1" value="${m.pwd}"  class="form-control" required>

                    </label>
                    <p><spen id=s_relult1>영문, 숫자, 특수문자를 포함한 8자리 이상 입력하세요.</spen></p>
                </li>
                <li>
                    <label>
                        <strong>이름</strong><br>
                        <input type="text" name="name" id="new_name" value="${m.name}" required>
                    </label>
                </li>
                <li>
                    <label><strong>전화번호 입력</strong></label><br>
                    <div class="str_phonecan">
                        <input type="text" name="tel" value="${m.tel}" id="phone" required="required">
                    </div>
                </li>
                <li>
                    <label><strong>email</strong></label><br>
                    <div class="str_phonecan">
                        <input type="text" name="email" value="${m.email}" id="email" required="required">
                    </div>
                </li>
                <li>
                    <button type="submit" class="sand"  id="sub" >
                        <b>수정하기</b>
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