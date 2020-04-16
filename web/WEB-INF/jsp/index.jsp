<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>主页</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>

    <body>
        <h1>解忧网</h1>
        <a class="register" href="users/selectAllSecret">秘密大厅</a>
        <a class="register" href="users/selectAllProblem">问题社区</a>
        <br><br>
        <fieldset>
            <legend>用户登录</legend>
            <form action="users/login" method="post">
                <label for="username">用户名</label>
                <input id="username" type="text" name="username" value=""/>
                <br><br>
                <label for="userpassword">密码</label>
                <input id="userpassword" type="password" name="userpassword" value=""/>
                <br><br>
                <input type="submit" value="登录"/>
                &nbsp;&nbsp;
                <a class="register" href="users/toRegister">注册</a>
            </form>
        </fieldset>
    </body>
</html>
