<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/13
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>


<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li><a href="list_product?cid=${prod.cid}">${prod.category.name}</a></li>
        <li class="active">编辑产品</li>
    </ol>
    <div class="panel panel-warning editDiv">
        <div class="panel-heading">
            编辑产品
        </div>
        <div class="panel-body">
            <form action="edit_product" method="post" id="editForm">
                <table class="editTable">
                    <tr>
                        <td>产品名称</td>
                        <td><input type="text" name="name" value="${prod.name}"></td>
                    </tr>
                    <tr>
                        <td>产品小标题</td>
                        <td><input type="text" name="subTitle" value="${prod.subTitle}"></td>
                    </tr>
                    <tr>
                        <td>原价格</td>
                        <td><input type="text" name="originalPrice" value="${prod.originalPrice}"></td>
                    </tr>
                    <tr>
                        <td>优惠价格</td>
                        <td><input type="text" name="promotePrice" value="${prod.promotePrice}"></td>
                    </tr>
                    <tr>
                        <td>库存</td>
                        <td><input type="text" name="stock" value="${prod.stock}"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" value="${prod.id}" name="id">
                            <input type="hidden" value="${prod.cid}" name="cid">
                            <button type="submit" class="btn btn-success">提交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

<%@include file="../include/admin/adminFooter.jsp"%>
