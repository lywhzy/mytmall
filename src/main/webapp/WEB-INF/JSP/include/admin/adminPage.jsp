<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/3/31
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<nav>
    <ul class="pagination">
        <li <c:if test="${!page.hasPre}"> class="disabled"</c:if>>
            <a href="admin_category_list?page.start=0${page.param}" aria-label="Previous">
                <span aria-hidden="true">‹‹</span>
            </a>
        </li>
        <li <c:if test="${!page.hasPre}">class="disabled"</c:if>>
            <a href="admin_category_list?page.start=${page.start-page.count}${page.param}" aria-label="Previous" >
                <span aria-hidden="true">‹</span>
            </a>
        </li>
    </ul>

</nav>