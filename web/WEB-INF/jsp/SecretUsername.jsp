<%-- 
    Document   : SecretUsername
    Created on : 2020-3-20, 20:25:57
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>secretUsername</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <h1>SecretUsername</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>公开秘密记录</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>秘密ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>记录时间</th>
                    <th>状态</th>
                    <th>记录人</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${secretList}" var="s">
                    <tr id="tr${s.sid}">
                        
                        <td>${s.sid}</td>
                        <td>${s.stitle}</td>
                        <td>${s.scontext}</td>
                        <td>${s.stime}</td>
                        <td>${s.stype}</td>
                        <td>${s.username}</td>
                        <td>
                            <a href="users/${s.sid}/${user.username}/selectSecretDetail" target="iframe_a">详情</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
    </body>
</html>
