<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<div class="categoryMenu">
    <c:forEach items="${list}" var="c">
        <div cid="${c.id}" class="eachCategory">
            <span class="glyphicon glyphicon-link"></span>
            <a href="productByCategory?cid=${c.id}">${c.name}</a>
        </div>
    </c:forEach>
</div>