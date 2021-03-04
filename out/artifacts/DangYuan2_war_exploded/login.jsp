<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/22
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="util.Token" %>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>党支部管理系统-登录</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="css/fontawesome.css"/>
    <link rel="stylesheet" href="css/templatemo-style.css"/>
    <link rel="stylesheet" href="css/owl.css"/>
    <link rel="stylesheet" href="css/lightbox.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <style>
        #login-wraper {
            width: 100%;
            height: 100%;
            padding-top: 150px;
        }

        .main-login {
            width: 60%;
            margin: 0 auto;
            background-color: #EFEFEF;
            height: 430px;
            padding-top: 50px;
        }

        .login-heading {
            height: 70px;
            width: 100%;
            padding-top: 10px;
            margin-bottom: 40px;
        }

        .login-heading h2 {
            color: #a23e48;
            width: 60%;
            font-size: 30px;
            line-height: 40px;
            text-align: center;
            margin: 0 20%;
            padding-bottom: 10px;
            border-bottom: #A23E48 2px solid;
        }

        #login-form {
            width: 80%;
            margin: auto 0;
        }

        .form-item {
            width: 100%;
            height: 60px;
            line-height: 40px;
            font-size: 16px;
        }

        .form-item p {
            width: 10%;
            color: #333333;
            display: inline-flex;
            margin-left: 25%;
            margin-right: 10%;
        }

        .input-item {
            width: 50%;
            height: 30px;
            font-size: 16px;
            padding-left: 8px;
        }

        .input-item-submit {
            color: #fff;
            background-color: #A23E48;
            height: 30px;
            line-height: 30px;
            font-size: 16px;
            width: 20%;
            margin-left: 40%;
            margin-right: 10%;
            border: none;
            display: inline-flex;
        }

        .input-item-reset {
            color: #A23E48;
            background-color: #fff;
            border: 1px solid #EFEFEF;
            height: 30px;
            line-height: 30px;
            font-size: 16px;
            width: 20%;
            display: inline-flex;
        }

        .showError{
            width: 100%;
            text-align: center;
            color: orangered;
            font-size:16px;
            font-weight: bolder;
            margin-left: 20%;
        }
    </style>
</head>

<body>

<div id="login-wraper">
    <div class="main-login">
        <div class="login-heading">
            <h2>党支部管理系统</h2>
        </div>
        <form id="login-form" action="loginService" method="post">
            <div class="form-item">
                <p>用户名</p>
                <input name="id" type="text" class="input-item" id="id" placeholder="学号/工号"/>
            </div>
            <div class="form-item">
                <p>密&nbsp;&nbsp;码</p>
                <input name="pwd" type="password" class="input-item" id="pwd" placeholder="密码"/>
            </div>
            <div class="form-item">
                <p>身份</p>
                <select class="input-item" name="type">
                    <option type="radio"  value="member"/>
                    成员
                    <option type="radio" value="head"/>
                    组长
                    <option type="radio" value="admin"/>
                    管理员
                </select>
            </div>
            <div class="form-item">
                <input type="submit" class="input-item-submit" value="登录"/>
                <input type="reset" class="input-item-reset" value="重置" onclick="resetForm()"/>
            </div>

               <div class="showError">${error}</div>

            <input type="hidden" name="<%=Token.TOKEN_STRING_NAME %>" value="<%=Token.getTokenString(session) %>">
        </form>
    </div>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

<script src="js/isotope.min.js"></script>
<script src="js/owl-carousel.js"></script>
<script src="js/lightbox.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript" language="JavaScript">
    resetForm()
    {
        document.getElementById("id").innerText = ""
        document.getElementById("pwd").innerText = ""
        document.getElementById("type").innerText = "成员"
        alert("reset")
    }
</script>
</body>
</html>

