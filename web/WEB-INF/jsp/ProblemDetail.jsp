<%-- 
    Document   : ProblemDetail
    Created on : 2020-3-21, 14:42:29
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProblemDetail</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <h1>ProblemDetail</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>问题详情</legend>
            <form action="" method="">
      
                <label for="pid">问题ID</label>
                <input id="pid" type="text" name="pid" value="${Problem.pid}" readonly="true"/>
                <br><br>
                <label for="ptitle">问题标题</label>
                <input id="ptitle" type="text" name="ptitle" value="${Problem.ptitle}" readonly="true"/>
                <br><br>
                <label for="pcontext">具体内容</label>
                <input id="pcontext" type="text" name="pcontext" value="${Problem.pcontext}" readonly="true"/>
                <br><br>
                <label for="username">提问者</label>
                <input id="username" type="text" name="username" value="${Problem.username}" readonly="true"/>
                <br><br>

            </form>
        </fieldset>
            <br>    
                
        <fieldset>
                <legend>所有回答</legend>
            <table class="table table-hover table-striped">
                <tr>
                    <th>回答ID</th>
                    <th>具体内容</th>
                    <th>回答人</th>
                    <!--<th>操作</th>-->
                </tr>
                
                <c:forEach items="${AnswerList}" var="a">
                    <tr id="tr${a.aid}">
                        
                        <td>${a.aid}</td>
                        <td>${a.acontext}</td>
                        <td>${a.username}</td>
<!--                        <td>
                            <input type="submit" name="Submit" value="详情" onclick="ale()" />
                        </td>-->
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
            <br>
        <fieldset>
            <legend>回答此问题</legend>
            <form action="users/addAnswer" method="post">
      
                <label for="acontext">具体回答</label>
                <input id="acontext" type="text" name="acontext"/>
                <br><br>
                <label for="username">回答人</label>
                <select id="username" name="username">
                    <option selected>${user.username}</option>
                    <option>匿名</option>
                </select>
                <br><br>
                <label for="pid">所属问题ID</label>
                <input id="pid" type="text" name="pid" value="${Problem.pid}" readonly=""/>
                <br><br>
                
                <input type="submit" value="确认回答"/> 
            </form>
        </fieldset>
            
    </body>
</html>
