<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/4/20
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function () {
        $("input.pvValue").keyup(function () {
            var value = $(this).val();
            var page = "edit_PropertyValue";
            var pvid = $(this).attr("id");
            var parentSpan = $(this).parent("span");
            parentSpan.css("border","1px solid yellow");
            $.post(
                page,
                {"value":value,"id":pvid},
                function (result) {
                    if(result!="success"){
                        parentSpan.css("border","1px solid red");
                    }else{
                        parentSpan.css("border","1px solid green");
                    }
                }
            );
        });
    });
</script>

<div class="workingArea">
    <ol class="breadcrumb">
        <li><a href="admin_category_list">所有分类</a></li>
        <li><a href="list_product?cid=${product.category.id}">${product.category.name}</a></li>
        <li class="active">${product.name}</li>
        <li class="active">编辑属性</li>
    </ol>

    <div class="editPVDiv">
        <c:forEach items="${list}" var="pv">
            <div class="eachPV">
                <span class="pvName">${pv.property.name}</span>
                <span class="pvValue"><input class="pvValue" type="text" value="${pv.value}" id="${pv.id}"></span>
            </div>
        </c:forEach>
        <div class="clear:both"></div>
    </div>
</div>





<%@include file="../include/admin/adminFooter.jsp"%>