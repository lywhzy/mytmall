<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/25
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<c:if test="${empty param.categorycount}">
    <c:set var="categorycount" scope="page" value="100"/>
</c:if>

<c:if test="${!empty param.categorycount}">
    <c:set var="categorycount" scope="page" value="${param.categorycount}"/>
</c:if>

<div class="categoryProducts">
    <c:forEach items="${c.productList}" var="p" varStatus="stc">
        <c:if test="${stc.count<=categorycount}">
            <div class="productUnit" price="${p.promotePrice}">
                <div class="productUnitFrame">
                    <a href="foreProduct?pid=${p.id}">
                        <img class="productImage" src="img/productSingle_middle/${p.ptid}.jpg">
                    </a>
                    <span class="productPrice">¥<fmt:formatNumber type="number" value="${p.promotePrice}" minFractionDigits="2"/></span>
                    <a class="productLink" href="foreProduct?pid=${p.id}">
                            ${fn:substring(p.name, 0, 50)}
                    </a>

                    <a  class="tmallLink" href="foreProduct?pid=${p.id}">天猫专卖</a>

                    <div class="show1 productInfo">
                        <span class="monthDeal ">月成交 <span class="productDealNumber">${p.saleCount}笔</span></span>
                        <span class="productReview">评价<span class="productReviewNumber">${p.reviewCount}</span></span>
                        <span class="wangwang">
                    <a class="wangwanglink" href="#nowhere">
                        <img src="img/site/wangwang.png">
                    </a>

                    </span>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
    <div style="clear:both"></div>
</div>