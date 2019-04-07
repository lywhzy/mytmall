<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" language="java" %>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function () {
        $("#editForm").submit(function () {
            if(!checkEmpty("name","分类名称")){
                return false;
            }else return true;
        })
    })
</script>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list?start=0">所有分类</a></li>
        <li class="active">编辑分类</li>
    </ol>

    <div class="panel panel-warning editDiv">
        <div class="panel-heading">
            编辑分类
        </div>
        <div class="panel-body">
            <form action="admin_update_Category" method="post" id="editForm" enctype="multipart/form-data">
                <table class="editTable">
                    <tr>
                        <td>分类名称</td>
                        <%--<td><input id="name" value="${c.name}" type="text" name="name" class="form-control"></td>--%>
                    </tr>
                    <tr>
                        <td>分类图片</td>
                        <%--<td><input id="categoryPic" name="image" type="file" accept="image/*"></td>--%>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <%--<input type="hidden" id="id" name="id" value="${c.id}">--%>
                            <button type="submit" class="btn btn-success">提交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

    </div>
</div>















<%@include file="../include/admin/adminFooter.jsp"%>