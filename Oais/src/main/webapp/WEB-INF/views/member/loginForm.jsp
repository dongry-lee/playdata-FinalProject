<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="/layout/member/login.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="/css/login.css" rel="stylesheet">
</head>
<body>
<div class="login_layout">
    <div class="login_form">
    <h3>로그인</h3>
    <h5>${msg }</h5>
    <form action="/member/login" method="post">
        <ul>
            <li>
                <a href="/"><img src="/img/img.png"  alt="로고" class="center-block"></a>
            </li>
            <li>
                <label>
                    <input type="text" name="id" id="id" placeholder="ID" required><br>
                </label>
            </li>
            <li>
                <label>
                    <input type="password" name="pwd" id="pw" placeholder="Password" required><br>
                </label>
            </li>
            <li>
                <button type="submit" class="logbt" id="login_bt" name="login">로그인</button>
            </li>
            <li>
                <a href="/">ID/Password 찾기</a>
                <a href="/member/join">회원가입</a>
            </li>
            <li>
                <a href="/">메인으로</a>
            </li>
        </ul>
    </form>
    </div>
</div>
</body>
</html>