<%-- 
    Document   : OpenSecret
    Created on : 2020-3-20, 18:49:08
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <h1>OpenSecret</h1>
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
                            <input type="submit" name="Submit" value="详情" onclick="ale()" />
                        </td>
                    </tr>
                </c:forEach>
            </table>
            
            <script language="javascript">  
                function ale()
                {
                    if(confirm("登录后可查看详情，现在要跳转到登录页嘛？QAQ"))
                    {//如果是true ，那么就把页面转向
                        location.href="http://localhost:8080/App/";
                    }
//                    else
//                    {//否则说明下了，赫赫
//                        alert("你取消了跳转");
//                    }
                }
            </script>
        </fieldset>
    </body>
</html>
