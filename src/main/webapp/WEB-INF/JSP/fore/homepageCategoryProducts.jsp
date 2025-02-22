<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/14
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>


<c:if test="${empty param.categorycount}">
    <c:set var="categorycount" scope="page" value="100"/>
</c:if>

<c:if test="${!empty param.categorycount}">
    <c:set var="categorycount" scope="page" value="${param.categorycount}"/>
</c:if>

<div class="homepageCategoryProducts">
    <c:forEach items="${list}" var="c" varStatus="stc">
        <c:if test="${stc.count<categorycount}">
            <div class="eachHomepageCategoryProducts">
                <div class="left-mark"></div>
                <span class="categoryTitle">${c.name}</span>
                <br>
                <c:forEach items="${c.productList}" var="p" varStatus="st">
                    <c:if test="${st.count<5}">
                        <div class="productItem">
                            <a href="foreProduct?pid=${p.id}"><img width="100px" src="${pageContext.request.contextPath}/img/productSingle_middle/${p.ptid}.jpg"></a>
                            <a class="productItemDescLink" href="foreProduct?pid=${p.id}">
                                <span class="productItemDesc">
                                    [热销]${fn:substring(p.name,0,20)}
                                </span>
                            </a>
                            <span class="productPrice">
                                <fmt:formatNumber type="number" value="${p.promotePrice}" minFractionDigits="2"/>
                            </span>
                        </div>
                    </c:if>
                </c:forEach>
                <div style="clear:both"></div>
            </div>
        </c:if>
    </c:forEach>
    <img id="endpng" class="endpng" src="${pageContext.request.contextPath}/img/site/end.png">
</div>
