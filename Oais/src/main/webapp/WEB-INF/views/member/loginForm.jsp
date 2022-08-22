<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/member/login.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        *{
            margin: auto;
            padding:0;

        }
        body{
            background-color: #f5f6f7;
        }

        a{
            text-decoration:none;
        }

        .login_form li{
            list-style: none;
            display: block;

        }

        .login_layout{

            border-radius: 12px;
            margin-top: 5%;
            margin-bottom: 5%;
            margin-left: auto;
            margin-right: auto;
            width:460px;
            display: block;
            /* background-image: url("/img/dadang.jpg"); */
        }


        .login_form{
            /* padding: 70px 0; */
            text-align: center;
        }
        .logbt{
            border: 0;
            outline: 0;
            border: 0;
            color: #fff;
            background-color: #3858a6;
        }
        #id, #pw, #repw, #login_bt{
            margin: 2%;
            width: 90%;
            height: 50px;
            border: 1px solid #dadada;

        }

        .center-block{
            margin:auto;
            /* padding: 10%; */
            width: 60%;
            height: auto;
        }
        @media screen and (max-width: 800px){
            .login_layout{
                width: auto;
                height: auto;
            }
        }
    </style>
</head>
<body>
<div class="login_layout">
    <div class="login_form">
    <h3>로그인</h3>
    <h5>${msg }</h5>
    <form action="/member/login" method="post">
        <ul>
            <li>
                <a href="/"><img src="/img/tangtang.png"  alt="로고" class="center-block"></a>
            </li>
            <li>
                <label><strong>ID(아이디)</strong><br>
                    <input type="text" name="id" id="id" placeholder="ID입력(필수)" required><br>
                </label>
            </li>
            <li>
                <label><strong>Password(비밀번호)</strong><br>
                    <input type="password" name="pwd" id="pw" placeholder="비밀번호" required><br>
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
<%--        <table style="border:solid 1px black">--%>
<%--            --%>
<%--            <tr><th>pwd</th><td><input type="password" name="pwd"></td></tr>--%>
<%--            <tr><th>로그인</th><td><input type="submit" value="로그인">--%>
<%--                <a href="/member/join">회원가입</a></td></tr>--%>
<%--        </table>--%>
    </form>
    </div>
</div>
</body>
</html>