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
            <a href="?start=0${page.param}" aria-label="Previous" <c:if test="${!page.hasPre}">disabled="true"</c:if>>
                <span aria-hidden="true">‹‹</span>
            </a>
        </li>
        <li <c:if test="${!page.hasPre}">class="disabled"</c:if>>
            <a href="?start=${page.start-page.count}${page.param}" aria-label="Previous" <c:if test="${!page.hasPre}">disabled="true"</c:if>>
                <span aria-hidden="true">‹</span>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
            <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                <a <c:if test="${status.index*page.count==page.start}">class="current"</c:if>  href="?start=${status.index*page.count}${page.param}">${status.index+1}</a>
            </li>
        </c:forEach>



        <li <c:if test="${!page.hasNext}"> class="disabled"</c:if>>
            <a href="?start=${page.start+page.count}${page.param}" aria-label="Next" <c:if test="${!page.hasNext}">disabled="true" </c:if>>
                <span aria-hidden="true">›</span>
            </a>
        </li>
        <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <a href="?start=${page.finalPage}${page.param}" aria-label="Next" <c:if test="${!page.hasNext}">disabled="true" </c:if>>
                <span aria-hidden="true">››</span>
            </a>
        </li>
    </ul>

</nav>