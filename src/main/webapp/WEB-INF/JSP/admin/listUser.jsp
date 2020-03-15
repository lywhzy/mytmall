<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/20
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<div class="workingArea">
    <h1 class="label label-info">用户管理</h1>
    <br>
    <br>

    <div class="listDataTableDiv">
        <table class="table table-striped table-bordered table-hover  table-condensed">
            <thead>
                <tr class="success">
                    <th>ID</th>
                    <th>用户名称</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp"%>
    </div>
</div>


<%@include file="../include/admin/adminFooter.jsp"%>
