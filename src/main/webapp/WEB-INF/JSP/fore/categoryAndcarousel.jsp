<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/14
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<script>
    function showProductsAsideCategorys(cid) {
        $("div.eachCategory[cid="+cid+"]").css("background-color","white");
        $("div.eachCategory[cid="+cid+"] a").css("color","#87CEFA");
        $("div.productsAsideCategorys[cid="+cid+"]").show();
    }

    function hideProductsAsideCategorys(cid){
        $("div.eachCategory[cid="+cid+"]").css("background-color","#e2e2e3");
        $("div.eachCategory[cid="+cid+"] a").css("color","#000");
        $("div.productsAsideCategorys[cid="+cid+"]").hide();
    }
    $(function(){
        $("div.eachCategory").mouseenter(function(){
            var cid = $(this).attr("cid");
            showProductsAsideCategorys(cid);
        });
        $("div.eachCategory").mouseleave(function(){
            var cid = $(this).attr("cid");
            hideProductsAsideCategorys(cid);
        });
        $("div.productsAsideCategorys").mouseenter(function(){
            var cid = $(this).attr("cid");
            showProductsAsideCategorys(cid);
        });
        $("div.productsAsideCategorys").mouseleave(function(){
            var cid = $(this).attr("cid");
            hideProductsAsideCategorys(cid);
        });

        $("div.rightMenu span").mouseenter(function(){
            var left = $(this).position().left;
            var top = $(this).position().top;
            var width = $(this).css("width");
            var destLeft = parseInt(left) + parseInt(width)/2;
            $("img#catear").css("left",destLeft);
            $("img#catear").css("top",top-20);
            $("img#catear").fadeIn(500);

        });
        $("div.rightMenu span").mouseleave(function(){
            $("img#catear").hide();
        });

        var left = $("div#carousel-of-product").offset().left;
        $("div.categoryMenu").css("left",left-20);
        $("div.categoryWithCarousel div.head").css("margin-left",left);
        $("div.productsAsideCategorys").css("left",left-20);

    });
</script>

<img src="${pageContext.request.contextPath}/img/site/catear.png" id="catear" class="catear">

<div class="categoryWithCarousel">
    <div class="headbar show1">
        <div class="head">
            <span style="margin-left: 10px" class="glyphicon glyphicon-th-list"></span>
            <span style="margin-left: 10px">商品分类</span>
        </div>
        <div class="rightMenu">
            <span><a href=""><img src="${pageContext.request.contextPath}/img/site/chaoshi.png"></a></span>
            <span><a href=""><img src="${pageContext.request.contextPath}/img/site/guoji.png"></a></span>

            <c:forEach items="${list}" var="c" varStatus="st">
                <c:if test="${st.count<=4}">
                    <span>
                        <a href="productByCategory?cid=${c.id}">${c.name}</a>
                    </span>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <div style="position:relative">
        <%@include file="categoryMenu.jsp"%>
    </div>

    <div style="position: relative;top: 0;left: 0">
        <%@include file="productsAsideCategorys.jsp"%>
    </div>

    <%@include file="carousel.jsp"%>

    <div class="carouselBackgroundDiv"></div>
</div>