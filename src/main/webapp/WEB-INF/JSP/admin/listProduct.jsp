<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/11
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<%@include file="../include/admin/adminHeader.jsp"%>

<%@include file="../include/admin/adminNavigator.jsp"%>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li><a href="list_product?cid=${c.id}">${c.name}</a></li>
        <li class="active">产品管理</li>
    </ol>

    <div class="listDataTableDiv">
        <table class="table table-striped table-bordered table-hover table-condensed">
            <thead>
                <tr class="success">
                    <th>ID</th>
                    <th>图片</th>
                    <th>产品名称</th>
                    <th>产品小标题</th>
                    <th>原价格</th>
                    <th>优惠价格</th>
                    <th>库存数量</th>
                    <th>图片管理</th>
                    <th>属性设置</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="prod">
                    <tr>
                        <td>${prod.id}</td>
                        <td><img src="${pageContext.request.contextPath}/img/productSingle/${prod.ptid}.jpg" height="40px"></td>
                        <td>${prod.name}</td>
                        <td>${prod.subTitle}</td>
                        <td>${prod.originalPrice}</td>
                        <td>${prod.promotePrice}</td>
                        <td>${prod.stock}</td>
                        <td><a href="listProductImage?pid=${prod.id}"><span class="glyphicon glyphicon-picture"></span></a></td>
                        <td><a href="update_PropertyValue?pid=${prod.id}"><span class="glyphicon glyphicon-th-list"></span></a></td>
                        <td><a href="update_product?pid=${prod.id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                        <td><a href="delete_product?pid=${prod.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp"%>
    </div>
    <div class="panel panel-warning addDiv">
        <div class="panel-heading">
            新增产品
        </div>
        <div class="panel-body">
            <form action="add_product" method="post" id="addForm">
                <table class="addTable">
                    <tr>
                        <td>产品名称</td>
                        <td><input id="name" name="name" type="text"></td>
                    </tr>
                    <tr>
                        <td>产品小标题</td>
                        <td><input id="subTitle" name="subTitle" type="text"></td>
                    </tr>
                    <tr>
                        <td>原价格</td>
                        <td><input id="originalPrice" name="originalPrice" type="text"></td>
                    </tr>
                    <tr>
                        <td>优惠价格</td>
                        <td><input id="promotePrice" name="promotePrice" type="text"></td>
                    </tr>
                    <tr>
                        <td>库存</td>
                        <td><input id="stock" name="stock" type="text"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="cid" value="${c.id}">
                            <button class="btn btn-success" type="submit">提交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>



<%@include file="../include/admin/adminFooter.jsp"%>

