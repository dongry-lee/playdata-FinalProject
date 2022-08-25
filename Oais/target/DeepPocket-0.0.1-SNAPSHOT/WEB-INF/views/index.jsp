
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>


    <title>DeePocket</title>
    <style>
        *{ font-family: Inter;

        }

        /*header*/
        header {
            height: 75px;
            background-color: white;
            border: 0px solid #253342;
            box-shadow: 0px 0px 2px 0px black;
            position: fixed;
            width: 100%;
            z-index: 9999;
            top: 0;
            left: 0;
            display: flex;
            justify-content: space-between;
        }
        h1 {
            float: left;
            position: absolute;
            width: 75px;
            height: 1px;
            left: 22px;
            top: 0px;

            background: url(/img/img.png);
            background-size: cover;
            background-position: left;
            border-radius: 10px;
            margin: 20px auto 20px auto;

            box-shadow: 0px 0px 0px 0px black;
            padding: 20px;

        }


        nav {
            list-style: none;
            display: flex;
            padding-left: 0;
            text-decoration: none;
        }
        nav. serach > icon {
            position: absolute;
            top: 50%;
            margin-left: 17px;
            margin-top: 17px;
            z-index: 1;
        }
        .search > input {
            border: 0;
            background-color: #f0f0f0;

            margin: 20px 600px 20px 160px;

            width: 300px;
            height: 1px;
            border-radius: 8px;
            padding: 20px 15px;
            font-size: 13px;
        }
        /*nav .menu {float:right;} */

        nav >  button  {
            line-height: 35px;
            color:black;
            padding: 8px 12px;
            /*display: block;*/
            /*position: absolute; */
            list-style: none;
            border-radius: 100px;
            font-family: Inter;
            font-style: normal;
            font-weight: 400;
            font-size: 11px;
            margin-top: 20px;
            width: 60px;
        }
        /* nav .menu .a > button:hover {
            padding:0 5px;
            display: block;
            position: absolute;
            list-style: none;
            border-radius: 80px;
            font-size: 9px;
            margin-top: 20px;
            width: 100px;
        } */
        .login_button {
            color: black;
            margin-top: 5px;
            border:0px; border-radius:10px; background-color: #D4FEF0; font-family: Inter;font-weight:400;
            font-size: 11px; line-height: 16px;
            font-style: normal;
            width: 70px;
            padding: 10px;

        }
    </style>
</head>
<body>
<header> <!-- 헤더 -->
    <div class="wrapper"> <!--전체 랩 -->
        <a href="https://www.naver.com"><h1></h1></a>
        <nav> <!-- 메뉴부분 -->
            <div class="search"> <!-- 검색창 -->

                <span class="icon"><i class="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"></i></span>
                <input type="text" placeholder="공모/투표/게시판 찾아보기">
                <!-- <img src="https://cdn-icons-png.flaticon.com/128/3917/3917061.png"> -->
            </div>

            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button  type="button" class="login_button" size="10px">로그인</button></a>
             </span>
            <span style="padding: 5px; margin-top: 15px; border-radius:100px;">
            <a href=""><button  type="button" class="login_button" size="10px">회원가입</button></a>
             </span>
        </nav>


    </div>
</header>

</body>
</html>
