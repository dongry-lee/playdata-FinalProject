<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OAIS</title>
 <!-- css 링크 걸거면 <link rel="stylesheet" href="css파일이름 like css/main.css"/> -->
  <style>
    * {
    }
    .header {
        gird-area: header;
        box-sizing: border-box;
        padding: 0px 12px;
        position: sticky;
        top: 0;
        height: calc(6rem - 1px);
        width: 100%;
        display: flex;
        flex-direction: row;
        -webkit-box-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        align-items: center;
        z-index: 3;
        backdrop-filter: blur(6px);
        /*
      color: pink;
        flex-direction: column;
        align-items: center;
         */


        font-family: 'Single Day', cursive;
        font-size: 20px;
        font-weight: bold;
        }

    .header > button {
        width: 100%;
        margin-top:300px;
        margin-left: 1100px;

    }
    </style>
    <script>
      function Login() {
        window.location.href = '로그인페이지 path 입력';
    }
    </script>
</head>

<body>

   <div class= "header">
        <h1><img src="img/LogoSample_ByTailorBrands.jpg"> </h1>
        <div class="menu">
            <ul>
            <li><a href="#"><button onclick="Login()" type="button" class="btn btn-light">로그인</button></li>

            </ul>
        </div>
   </div>
</body>
</html>