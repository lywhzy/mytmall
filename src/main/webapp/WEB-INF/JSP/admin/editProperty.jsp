<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/11
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<%@include file="../include/admin/adminHeader.jsp"%>

<%@include file="../include/admin/adminNavigator.jsp"%>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list?start=0">所有分类</a></li>
        <li><a href="list_property?cid=${prop.category.id}">${prop.category.name}</a></li>
        <li class="active">编辑属性</li>
    </ol>
    <div class="panel panel-warning editDiv">
        <div class="panel-heading">
            编辑分类
        </div>
        <div class="panel-body">
            <form action="edit_Property" method="post" id="editForm">
                <table class="editTable">
                    <tr>
                        <td>属性名称</td>
                        <td><input type="text" id="name" name="name" value="${prop.name}"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="id" value="${prop.id}">
                            <input type="hidden" name="cid" value="${prop.cid}">
                            <button type="submit" class="btn btn-success">提交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>


<%@include file="../include/admin/adminFooter.jsp"%>
