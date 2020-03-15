<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/25
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<div class="searchProducts">

    <c:forEach items="${ps}" var="p">
    <div class="productUnit" price="${p.promotePrice}">
        <a href="foreProduct?pid=${p.id}">
            <img class="productImage" src="img/productSingle/${p.ptid}.jpg">
        </a>
        <span class="productPrice">¥<fmt:formatNumber type="number" value="${p.promotePrice}" minFractionDigits="2"/></span>
        <a class="productLink" href="foreProduct?pid=${p.id}">
                ${fn:substring(p.name, 0, 50)}
        </a>

        <a class="tmallLink" href="foreProduct?pid=${p.id}">天猫专卖</a>

        <div class="productInfo">
            <span class="monthDeal ">月成交 <span class="productDealNumber">${p.saleCount}笔</span></span>
            <span class="productReview">评价<span class="productReviewNumber">${p.reviewCount}</span></span>
            <span class="wangwang"><img src="img/site/wangwang.png"></span>
        </div>

    </div>
    </c:forEach>
    <c:if test="${empty ps}">
    <div class="noMatch">没有满足条件的产品</div>
    </c:if>

    <div style="clear:both"></div>
</div>