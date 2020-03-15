<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2019/5/6
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function(){
        $("button.orderPageCheckOrderItems").click(function () {
            var oid = $(this).attr("oid");
            $("tr.orderPageOrderItemTR[oid="+oid+"]").toggle();
        });
    });
</script>

<div class="workingArea">
    <h1 class="label label-info">订单管理</h1>
    <br>
    <br>

    <div class="listDataTableDiv">
        <table class="table table-striped table-bordered table-hover1  table-condensed">
            <thead>
            <tr class="success">
                <th>ID</th>
                <th>状态</th>
                <th>金额</th>
                <th width="100px">商品数量</th>
                <th width="100px">买家名称</th>
                <th>创建时间</th>
                <th>支付时间</th>
                <th>发货时间</th>
                <th>确认收货时间</th>
                <th width="120px">操作</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="order">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.status}</td>
                        <td>￥<fmt:formatNumber type="number" value="${order.totalPrice}" minFractionDigits="2"/></td>
                        <td align="center">${order.totalNum}</td>
                        <td align="center">${order.user.name}</td>
                        <td><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><fmt:formatDate value="${order.payDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><fmt:formatDate value="${order.deliveryDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><fmt:formatDate value="${order.confirmDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>
                            <button oid="${order.id}" class="orderPageCheckOrderItems btn btn-primary btn-xs">查看详情</button>
                            <c:if test="${order.status=='waitDelivery'}">
                                <a href="send_order?id=${order.id}">
                                    <button class="btn btn-primary btn-xs">发货</button>
                                </a>
                            </c:if>
                        </td>
                    </tr>
                    <tr class="orderPageOrderItemTR" oid="${order.id}">
                        <td colspan="10" align="center">
                            <div class="orderPageOrderItem">
                                <table width="800px" align="center" class="orderListItemTable">
                                    <c:forEach items="${order.list}" var="orderItem">
                                        <tr>
                                            <td align="left">
                                                <img src="${pageContext.request.contextPath}/img/productSingle/${orderItem.product.ptid}.jpg"
                                                width="40px" height="40px">
                                            </td>
                                            <td>
                                                <a href="">
                                                    <span>${orderItem.product.name}</span>
                                                </a>
                                            </td>
                                            <td align="right">
                                                <span class="text-muted">${orderItem.number}个</span>
                                            </td>
                                            <td align="right">
                                                <span class="text-muted">单价：￥${orderItem.product.promotePrice}</span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp"%>
    </div>
</div>




<%@include file="../include/admin/adminFooter.jsp"%>
