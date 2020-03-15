<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/13
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li><a href="list_product?cid=${prod.cid}">${prod.category.name}</a></li>
        <li class="active">${prod.name}</li>
        <li class="active">图片管理</li>
    </ol>
    <table class="addPictureTable" align="center">
        <tr>
            <td class="addPictureTableTD">
                <div>
                    <div class="panel panel-warning addPictureDiv">
                        <div class="panel-heading">新增产品<b class="text-primary">单个</b>图片</div>
                        <div class="panel-body">
                            <form action="add_productImage" method="post" enctype="multipart/form-data" class="addFormSingle">
                                <table class="addTable">
                                    <tr>
                                        <td align="center">请选择本地图片 尺寸400*400最佳</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="filepathSingle" type="file" name="image">
                                        </td>
                                    </tr>
                                    <tr class="submitTR">
                                        <td align="center" colspan="2">
                                            <input type="hidden" name="type" value="type_single">
                                            <input type="hidden" name="pid" value="${prod.id}">
                                            <button type="submit" class="btn btn-success">提交</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>

                    <table class="table table-striped table-bordered table-hover  table-condensed">
                        <thead>
                        <tr class="success">
                            <th>ID</th>
                            <th>产品单个缩略图</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list_single}" var="pic">
                                <tr>
                                    <td>${pic.id}</td>
                                    <td>
                                        <a title="点击查看原图" href="${pageContext.request.contextPath}/img/productSingle/${pic.id}.jpg"><img  height="50px" src="${pageContext.request.contextPath}/img/productSingle/${pic.id}.jpg" alt=""></a>
                                    </td>
                                    <td><a href="delete_productImage?picId=${pic.id}&type=${pic.type}" deletelink="true"><span class="glyphicon-trash glyphicon"></span></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </td>
            <td class="addPictureTableTD">
                <div>
                    <div class="panel panel-warning addPictureDiv">
                        <div class="panel-heading">新增产品<b class="text-primary">详情</b>图片</div>
                        <div class="panel-body">
                            <form action="add_productImage" method="post" enctype="multipart/form-data" class="addFormDetail">
                                <table class="addTable">
                                    <tr>
                                        <td align="center">请选择本地图片 尺寸790最佳</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="filepathDetail" type="file" name="image">
                                        </td>
                                    </tr>
                                    <tr class="submitTR">
                                        <td align="center" colspan="2">
                                            <input type="hidden" name="type" value="type_detail">
                                            <input type="hidden" name="pid" value="${prod.id}">
                                            <button type="submit" class="btn btn-success">提交</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>

                    <table class="table table-striped table-bordered table-hover  table-condensed">
                        <thead>
                        <tr class="success">
                            <th>ID</th>
                            <th>产品详情缩略图</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list_detail}" var="pic">
                            <tr>
                                <td>${pic.id}</td>
                                <td>
                                    <a title="点击查看原图" href="${pageContext.request.contextPath}/img/productDetail/${pic.id}.jpg"><img  height="50px" src="${pageContext.request.contextPath}/img/productDetail/${pic.id}.jpg" alt=""></a>
                                </td>
                                <td><a href="delete_productImage?picId=${pic.id}&type=${pic.type}" deletelink="true"><span class="glyphicon-trash glyphicon"></span></a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</div>





<%@include file="../include/admin/adminFooter.jsp"%>
