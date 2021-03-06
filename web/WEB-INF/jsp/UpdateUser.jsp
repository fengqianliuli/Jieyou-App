<%-- 
    Document   : UpdateUser
    Created on : 2020-3-20, 20:38:16
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改个人信息</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <h1>修改个人信息</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>用户注册</legend>
            <form action="users/updateUser" method="post">
      
                <label for="username">用户名</label>
                <input id="username" type="text" name="username" value="${user.username}" readonly="true"/>
                <br><br>
                <label for="userpassword">密码</label>
                <input id="userpassword" type="password" name="userpassword" value="${user.userpassword}"/>
                <br><br>
                <label for="usergender">性别</label>
                <select id="usergender" name="usergender">
                    <option selected>${user.usergender}</option>
                    <option>保密</option>
                    <option>男</option>
                    <option>女</option>
                </select>
                <br><br>
                <label for="userphone">手机号</label>
                <input id="userphone" type="text" name="userphone" value="${user.userphone}"/>
                <br><br>
                <label for="usermoney">金币数</label>
                <input id="usermoney" type="text" name="usermoney" value="${user.usermoney}" readonly="true"/>
                <br><br>
                <label for="usercredit">信用值</label>
                <input id="usercredit" type="text" name="usercredit" value="${user.usercredit}" readonly="true"/>
                <br><br>
                
                
                <input type="submit" value="确认更改"/> 
            </form>
        </fieldset>
    </body>
</html>
