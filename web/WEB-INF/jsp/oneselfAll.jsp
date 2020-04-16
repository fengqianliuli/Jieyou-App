<%-- 
    Document   : success
    Created on : 2020-2-8, 23:04:50
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>秘密空间</title>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script src="resources/js/jquery-3.4.1.min.js"></script>
    </head>
    <body>
        <h1>${user.username}的所有记录</h1>
        <a href="/App" target="iframe_a">返回主页</a>
        <br><br>
        <fieldset>
            <legend>秘密记录</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>秘密ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>记录时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${secretList}" var="s">
                    <tr id="tr${s.sid}">
                        
                        <td>${s.sid}</td>
                        <td>${s.stitle}</td>
                        <td>${s.scontext}</td>
                        <td>${s.stime}</td>
                        <td>${s.stype}</td>
                        <td>
                            <a href="users/${s.sid}/${user.username}/selectSecretDetail" target="iframe_a">详情</a>
                            <a href="javascript:deleteSecret('${s.sid}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <script>  
                function deleteSecret(sid) {
                    $.ajax({
                        url: 'users/deleteSecret',
                        type: 'POST',
                        data: {sid: sid}, 
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + sid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </fieldset>
        <br><br>
        <fieldset>
            <legend>问题记录</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>问题ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${problemList}" var="p">
                    <tr id="tr${p.pid}">
                        
                        <td>${p.pid}</td>
                        <td>${p.ptitle}</td>
                        <td>${p.pcontext}</td>
                        <td>
                            <a href="users/${p.pid}/${user.username}/selectProblemDetail" target="iframe_a">详情</a>
                            <a href="javascript:deleteProblem('${p.pid}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <script>  
                function deleteProblem(pid) {
                    $.ajax({
                        url: 'users/deleteProblem',
                        type: 'POST',
                        data: {pid: pid}, 
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + pid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        </fieldset>
        <br><br>
        <fieldset>
            <legend>回答记录</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>回答ID</th>
                    <th>所属回答ID</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${answerList}" var="a">
                    <tr id="tr${a.aid}">
                        
                        <td>${a.aid}</td>
                        <td>${a.pid}</td>
                        <td>${a.acontext}</td>
                        <td>
                            <a href="javascript:deleteAnswer('${a.aid}');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
        <script>  
                function deleteAnswer(aid) {
                    $.ajax({
                        url: 'users/deleteAnswer',
                        type: 'POST',
                        data: {aid: aid}, 
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + aid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
        <br><br>
        <fieldset>
            <legend>评论记录</legend>
            
        <table class="table table-hover table-striped">
                <tr>
                    <th>评论ID</th>
                    <th>所属秘密ID</th>
                    <th>内容</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${remarkList}" var="r">
                    <tr id="tr${r.rid}">
                        
                        <td>${r.rid}</td>
                        <td>${r.sid}</td>
                        <td>${r.rcontext}</td>
                        <td>
                            <a href="javascript:deleteRemark('${r.rid}');">详情</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
        <br><br>
        
            
            <script>  
                function deleteRemark(rid) {
                    $.ajax({
                        url: 'users/deleteRemark',
                        type: 'POST',
                        data: {rid: rid}, 
                        success: function () {
                            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
                            $("#tr" + rid).remove(); // remove是删除当前元素和其内容
                        },
                        error: function () {
                            alert("未知原因删除失败");
                        }
                    });
                }
            </script>
    </body>
</html>
