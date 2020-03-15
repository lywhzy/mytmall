<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/13
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<a href="">
    <img src="${pageContext.request.contextPath}/img/site/logo.gif" id="logo" class="logo">
</a>

<form action="foresearch" method="post">
    <div class="searchDiv">
        <input name="keyword" type="text" value="${param.keyword}" placeholder="时尚男鞋 太阳镜">
        <button type="submit" value="搜索" class="searchButton">搜天猫</button>
        <div class="searchBelow">
            <c:forEach items="${list}" var="c" varStatus="st">
                <c:if test="${st.count>=5 and st.count<=8}">
                    <span>
                        <a href="productByCategory?cid=${c.id}">
                            ${c.name}
                        </a>
                        <c:if test="${st.count!=8}">
                            <span>|</span>
                        </c:if>
                    </span>
                </c:if>
            </c:forEach>
        </div>
    </div>
</form>

