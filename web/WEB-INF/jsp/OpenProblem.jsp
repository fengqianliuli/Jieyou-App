<%-- 
    Document   : OpenProblem
    Created on : 2020-3-20, 18:48:43
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
        <h1>OpenProblem</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>所有问题</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>问题ID</th>
                    <th>问题标题</th>
                    <th>具体内容</th>
                    <th>提问者</th>
                    <th>操作</th>
                </tr>
                
                <c:forEach items="${problemList}" var="p">
                    <tr id="tr${p.pid}">
                        
                        <td>${p.pid}</td>
                        <td>${p.ptitle}</td>
                        <td>${p.pcontext}</td>
                        <td>${p.username}</td>
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
                    else
                    {//否则说明下了，赫赫
                        alert("你取消了跳转");
                    }
                }
            </script>
        </fieldset>
    </body>
</html>
