<%-- 
    Document   : userRegister
    Created on : 2020-2-8, 23:05:21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户注册</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <h1>用户注册</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>用户注册</legend>
            <form action="users/userRegister" method="post">
      
                <label for="username">用户名</label>
                <input id="username" type="text" name="username" value=""/>
                <br><br>
                <label for="userpassword">密码</label>
                <input id="userpassword" type="password" name="userpassword" value=""/>
                <br><br>
                <label for="usergender">性别</label>
                <select id="usergender" name="usergender">
                    <option selected>保密</option>
                    <option>男</option>
                    <option>女</option>
                </select>
                <br><br>
                <label for="userphone">手机号</label>
                <input id="userphone" type="text" name="userphone" value=""/>
                <br><br>
                <label for="usermoney">金币数</label>
                <input id="usermoney" type="text" name="usermoney" value="0" readonly="true"/>
                <br><br>
                <label for="usercredit">信用值</label>
                <input id="usercredit" type="text" name="usercredit" value="70" readonly="true"/>
                <br><br>
                
                
                <input type="submit" value="提交注册"/> 
            </form>
        </fieldset>
    </body>
</html>
