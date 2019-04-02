<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/2
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>

</script>

<div class="workingArea">
    <h1 class="label label-info">分类管理</h1>
    <br><br>
    <div class="listDataTableDiv">
        <table class="table table-striped table-bordered table-hover  table-condensed">
            <thead>
                <tr class="success">
                    <th>ID</th>
                    <th>图片</th>
                    <th>分类名称</th>
                    <th>属性管理</th>
                    <th>产品管理</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td><img height="40px" src="${pageContext.request.contextPath}/img/category/${item.id}.jpg"></td>
                        <td>${item.name}</td>
                        <td><a href="/admin_category_list"><span class="glyphicon glyphicon-th-list"></span></a></td>
                        <td><a href="/admin_category_list"><span class="glyphicon glyphicon-shopping-cart"></span> </a></td>
                        <td><a href="/admin_category_list"><span class="glyphicon glyphicon-edit"></span></a></td>
                        <td><a deleteLink="true" href="/admin_category_list"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="pageDiv">

    </div>
    <div class="panel panel-warning addDiv">
        <div class="panel-heading">新增分类</div>
        <div class="panel-body">
            <form id="addForm" action="/admin_category_list" method="post" enctype="multipart/form-data">
                <table class="addTable">
                    <tr>
                        <td>分类名称</td>
                        <td><input id="name" name="name" type="text" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>分类图片</td>
                        <td><input id="categoryPic" accept="image/*" type="file" name="image"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">提交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

<%@include file="../include/admin/adminFooter.jsp"%>