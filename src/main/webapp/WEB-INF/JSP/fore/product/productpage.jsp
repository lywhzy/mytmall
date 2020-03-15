<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/24
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<title>模仿天猫官网${p.name}</title>
<div class="categoryPictureInProductPageDiv">
    <img src="${pageContext.request.contextPath}/img/category/${p.category.id}.jpg">
</div>

<div class="productPageDiv">
<%@include file="imgAndInfo.jsp"%>

<%@include file="Review.jsp"%>

<%@include file="DetailProductImg.jsp"%>
</div>