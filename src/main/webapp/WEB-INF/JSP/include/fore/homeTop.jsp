
<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/13
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<nav class="top">
    <a href="homePage">
        <span style="color:#C40000;margin: 0px" class="glyphicon glyphicon-home redColor"></span>
        天猫首页
    </a>

    <span>欢迎来到天猫</span>

    <c:if test="${!empty user}">
        <a href="">${user.name}</a>
        <a href="loginout">退出</a>
    </c:if>

    <c:if test="${empty user}">
        <a href="login">请登录</a>
        <a href="registerPage">免费注册</a>
    </c:if>

    <span class="pull-right">
        <a href="">我的订单</a>
        <a href="forecart">
            <span style="color: #C40000;margin: 0px" class="glyphicon glyphicon-shopping-cart redColor"></span>
            购物车<strong></strong>件
        </a>
    </span>
</nav>

