<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/23
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<div>
    <a href="">
        <img id="simpleLogo" class="simpleLogo" src="${pageContext.request.contextPath}/img/site/simpleLogo.png">
    </a>
    <form action="foresearch" method="post">
        <div class="simpleSearchDiv pull-right">
            <input type="text" placeholder="平衡车 原汁机" value="${param.keyword}" name="keyword">
            <button class="searchButton" type="submit">搜天猫</button>
            <div class="searchBelow">
                <c:forEach items="${cs}" var="c" varStatus="ct">
                    <c:if test="${ct.count>=8 and ct.count<=11}">
                        <a href="productByCategory?cid=${c.id}">
                            ${c.name}
                        </a>
                        <c:if test="${ct.count!=11}">
                            <span>|</span>
                        </c:if>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </form>
    <div style="clear:both"></div>
</div>

