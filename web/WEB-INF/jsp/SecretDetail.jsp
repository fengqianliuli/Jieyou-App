<%-- 
    Document   : SecretDetail
    Created on : 2020-3-21, 15:23:41
    Author     : Administrator
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SecretDetail</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <h1>SecretDetail</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        
        <fieldset>
            <legend>秘密详情</legend>
            <form action="" method="">
      
                <label for="sid">秘密ID</label>
                <input id="sid" type="text" name="sid" value="${Secret.sid}" readonly="true"/>
                <br><br>
                <label for="stitle">秘密标题</label>
                <input id="stitle" type="text" name="stitle" value="${Secret.stitle}" readonly="true"/>
                <br><br>
                <label for="scontext">具体内容</label>
                <input id="scontext" type="text" name="scontext" value="${Secret.scontext}" readonly="true"/>
                <br><br>
                <label for="stime">记录时间</label>
                <input id="stime" type="text" name="stime" value="${Secret.stime}" readonly="true"/>
                <br><br>
                <label for="username">记录人</label>
                <input id="username" type="text" name="username" value="${Secret.username}" readonly="true"/>
                <br><br>

            </form>
        </fieldset>
                <br>
        <fieldset>
                <legend>所有评论</legend>
            <table class="table table-hover table-striped">
                <tr>
                    <th>评论ID</th>
                    <th>评论内容</th>
                    <th>评论人</th>
                </tr>
                
                <c:forEach items="${RemarkList}" var="r">
                    <tr id="tr${r.rid}">
                        
                        <td>${r.rid}</td>
                        <td>${r.rcontext}</td>
                        <td>${r.username}</td>
<!--                        <td>
                            <input type="submit" name="Submit" value="详情" onclick="ale()" />
                        </td>-->
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
            <br>        
        <fieldset>
            <legend>评论</legend>
            <form action="users/addRemark" method="post">
      
                <label for="rcontext">评论内容</label>
                <input id="rcontext" type="text" name="rcontext"/>
                <br><br>
                
                <label for="username">评论人</label>
                <select id="username" name="username">
                    <option selected>${user.username}</option>
                    <option>匿名</option>
                </select>
                <br><br>
                
                <label for="sid">所属秘密ID</label>
                <input id="sid" type="text" name="sid" value="${Secret.sid}" readonly=""/>
                <br><br>

                <input type="submit" value="提交评论"/> 
            </form>
        </fieldset>
    </body>
</html>
