<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/25
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

<script>
    $(function(){
        $("input.sortBarPrice").keyup(function(){
            var num= $(this).val();
            if(num.length==0){
                $("div.productUnit").show();
                return;
            }

            num = parseInt(num);
            if(isNaN(num))
                num= 1;
            if(num<=0)
                num = 1;
            $(this).val(num);

            var begin = $("input.beginPrice").val();
            var end = $("input.endPrice").val();
            if(!isNaN(begin) && !isNaN(end)){
                console.log(begin);
                console.log(end);
                $("div.productUnit").hide();
                $("div.productUnit").each(function(){
                    var price = $(this).attr("price");
                    price = new Number(price);

                    if(price<=end && price>=begin)
                        $(this).show();
                });
            }

        });
    });
</script>
<div class="categorySortBar">

    <table class="categorySortBarTable categorySortTable">
        <tr>
            <td <c:if test="${'all'==param.sort||empty param.sort}">class="grayColumn"</c:if> ><a href="?cid=${c.id}&sort=All">综合<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td <c:if test="${'review'==param.sort}">class="grayColumn"</c:if> ><a href="?cid=${c.id}&sort=Review">人气<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td <c:if test="${'date'==param.sort}">class="grayColumn"</c:if>><a href="?cid=${c.id}&sort=Date">新品<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td <c:if test="${'saleCount'==param.sort}">class="grayColumn"</c:if>><a href="?cid=${c.id}&sort=SaleCount">销量<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td <c:if test="${'price'==param.sort}">class="grayColumn"</c:if>><a href="?cid=${c.id}&sort=Price">价格<span class="glyphicon glyphicon-resize-vertical"></span></a></td>
        </tr>
    </table>

    <table class="categorySortBarTable">
        <tr>
            <td><input class="sortBarPrice beginPrice" type="text" placeholder="请输入"></td>
            <td class="grayColumn priceMiddleColumn">-</td>
            <td><input class="sortBarPrice endPrice" type="text" placeholder="请输入"></td>
        </tr>
    </table>

</div>