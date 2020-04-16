<%-- 
    Document   : userBackpage
    Created on : 2020-2-10, 13:46:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>我的</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <h1>${user.username}的空间</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <a href="users/selectUser/${user.username}" target="iframe_a">修改个人信息</a>
        <a href="users/deleteUser/${user.username}" target="iframe_a">注销此账号</a>
        <a href="users/selectOneselfAll/${user.username}" target="iframe_a">我的所有记录</a>
        <a href="users/selectAllSecretWithUsername/${user.username}" target="iframe_a">秘密</a>
        <a href="users/selectAllProblemWithUsername/${user.username}" target="iframe_a">问答</a>
        
        <br><br>
        
        <fieldset>                   
            <legend>记录秘密</legend>
            <br>
            
            <form action="users/addSecret" method="post">
      
                <label for="stitle">秘密标题</label>
                <input id="stitle" type="text" name="stitle"/>
                <br><br>
                
                <label for="scontext">秘密内容</label>
                <input id="scontext" type="text" name="scontext"/>
                <br><br>
                
                <label for="stime">记录时间</label>
                <input id="stime" type="text" name="stime" />
                <br><br>
                
                <label for="stype">是否隐藏</label>
                <select id="stype" name="stype">
                    <option selected>公开</option>
                    <option>仅自己可见</option>
                </select>
                <br><br>
                
                <label for="username">记录人</label>
                <input id="username" type="text" name="username" value="${user.username}" readonly="true"/>
                <br><br>
                
                <input type="submit" value="记录"/> 
            </form>
        </fieldset>
    
        <br><br>
                
        <fieldset>                   
            <legend>发布问题</legend>
            <br>
            
            <form action="users/addProblem" method="post">
      
                <label for="ptitle">问题标题</label>
                <input id="ptitle" type="text" name="ptitle"/>
                <br><br>
                
                <label for="pcontext">问题详细描述</label>
                <input id="pcontext" type="text" name="pcontext"/>
                <br><br>
                
                <label for="username">提问者</label>
                <input id="username" type="text" name="username" value="${user.username}" readonly="true"/>
                <br><br>
                
                <input type="submit" value="确定提问"/> 
            </form>
        </fieldset>
    
        <br><br>
    </body>
</html>
