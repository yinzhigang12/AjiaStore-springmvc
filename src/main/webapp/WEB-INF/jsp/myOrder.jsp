<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单 - 阿甲学子商城</title>
    <link href="${pageContext.request.contextPath}/css/myOrder.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="commons/header.jsp"></jsp:include>
<!-- 我的订单导航栏-->
<div id="nav_order">
    <ul>
        <li><a href="">首页<span>&gt;</span>订单管理</a></li>
    </ul>
</div>
<!--我的订单内容区域 #container-->
<div id="container" class="clearfix">
    <!-- 左边栏-->
    <div id="leftsidebar_box" class="lf">
        <div class="line"></div>
        <dl class="my_order">
            <dt onClick="changeImage()">我的订单
                <img src="${pageContext.request.contextPath}/images/myOrder/myOrder2.png">
            </dt>
            <dd class="first_dd">
                <a href="/order/toMyOrder.html?code=all">
                    <c:choose>
                        <c:when test='${code=="all"}'>
                            <span>全部订单</span>
                            <span>${pageInfo.total}</span>
                        </c:when>
                        <c:otherwise>
                            全部订单
                        </c:otherwise>
                    </c:choose>
                </a>
            </dd>
            <dd>
                <a href="/order/toMyOrder.html?code=wait_pay">
                    <c:choose>
                        <c:when test='${code=="wait_pay"}'>
                            <span>待付款</span>
                            <span>${pageInfo.total}</span>
                        </c:when>
                        <c:otherwise>
                            待付款
                        </c:otherwise>
                    </c:choose>
                </a>
            </dd>
            <dd>
                <a href="/order/toMyOrder.html?code=wait_send">
                    <c:choose>
                        <c:when test='${code="wait_send"}'>
                            <span>待发货</span>
                            <span>${pageInfo.total}</span>
                        </c:when>
                        <c:otherwise>
                            待发货
                        </c:otherwise>
                    </c:choose>
                </a>
            </dd>
            <dd>
                <a href="/order/toMyOrder.html?code=wait_get">
                    <c:choose>
                        <c:when test='${code=="wait_get"}'>
                            <span>待收货</span>
                            <span>${pageInfo.total}</span>
                        </c:when>
                        <c:otherwise>
                            待收货
                        </c:otherwise>
                    </c:choose>
                </a>
            </dd>
            <dd>
                <a href="/order/toMyOrder.html?code=wait_ass">
                    <c:choose>
                        <c:when test='${code=="wait_ass"}'>
                            <span>待评价</span>
                            <span>${pageInfo.total}</span>
                        </c:when>
                        <c:otherwise>
                            待评价
                        </c:otherwise>
                    </c:choose>
                </a>
            </dd>
        </dl>
        <dl class="footMark">
            <dt onClick="changeImage()">
                我的优惠卷<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png">
            </dt>
        </dl>
        <dl class="address">
            <dt>
                收货地址<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png">
            </dt>
            <dd><a href="addressAdmin.html">地址管理</a></dd>
        </dl>
        <dl class="count_managment">
            <dt onClick="changeImage()">
                帐号管理<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png">
            </dt>
            <dd class="first_dd">
                <a href="personage.html">我的信息</a>
            </dd>
            <dd>
                <a href="personal_password.html">安全管理</a>
            </dd>
        </dl>
    </div>
    -->
    <!-- 右边栏-->
    <div class="rightsidebar_box rt">
        <!-- 商品信息标题-->
        <table id="order_list_title" cellpadding="0" cellspacing="0">
            <tr>
                <th width="345">商品</th>
                <th width="82">单价（元）</th>
                <th width="50">数量</th>
                <th width="82">售后</th>
                <th width="100">实付款（元）</th>
                <th width="90">交易状态</th>
                <th width="92">操作</th>
            </tr>
        </table>

        <c:forEach items="${orderVos}" var="orderVo">
            <!-- 订单列表项 -->
            <div id="orderItem">
                <p class="orderItem_title">
                 <span id="order_id">
                     &nbsp;&nbsp;订单编号:<a href="#">${orderVo.order.orderId}</a>
                 </span>
                    &nbsp;&nbsp;成交时间：<fmt:formatDate value="${orderVo.order.createTime}" pattern="yyyy-MM-dd HH:mm"/>&nbsp;&nbsp;
                    <span>
                     <a href="#" class="servie">
                        联系客服<img src="${pageContext.request.contextPath}/images/myOrder/kefuf.gif"/>
                      </a>
                        <c:if test="${orderVo.order.status==1}">
                            <a style="margin-left:5px;" href="/order/payment.html?orderId=${orderVo.order.orderId}"
                               class="rt button button1">去付款</a>
                            <a style="margin-left:5px;" href="/order/cancel.html?orderId=${orderVo.order.orderId}"
                               class="rt button button1" onclick='return confirm("确认取消吗？");'>取消订单</a>
                        </c:if>
                        <c:if test="${orderVo.order.status==2|| orderVo.order.status== 3}">
                            <a style="margin-left:5px;" href="#" class="rt button button1">退款</a>
                        </c:if>
                        <c:if test="${orderVo.order.status == 8}">
                            <a style="margin-left:5px;" onclick='return confirm("确认删除吗？")'
                               href="/order/delete.html?orderId=${orderVo.order.orderId}"
                               class="rt button button1">删除订单</a>
                        </c:if>
                 </span>
                </p>
            </div>
            <div id="orderItem_detail">
                <c:forEach items="${orderVo.itemVos}" var="itemVo">
                    <ul>
                        <li class="product">
                            <b><a href="/toItemInfo/${itemVo.item.itemId}.html">
                                <img style="width:84px;height:84px;" src="${itemVo.item.picPath}"/>
                            </a></b>
                            <b class="product_name lf">
                                <a href="/toItemInfo/${itemVo.item.itemId}.html">${itemVo.item.title}</a>
                                <br/>
                            </b>
                            <c:forEach items="${itemVo.params}" var="mParam">
                                <b class="product_color ">
                                        ${mParam.key}:${mParam.values[0]}
                                </b>
                            </c:forEach>

                        </li>
                        <li class="unit_price">
                            专属价
                            <br/>
                            ￥${itemVo.item.price}
                        </li>
                        <li class="count">
                                ${itemVo.item.num}件
                        </li>
                        <li class="sale_support" style="line-height:80px;">
                                ${orderVo.order.shippingName}
                        </li>
                        <li class=" payments_received">
                            ￥${itemVo.item.totalFee}
                        </li>
                        <li class="trading_status" style="line-height:80px;">
                            <c:if test="${orderVo.order.status==1}">
                                待付款
                            </c:if>
                            <c:if test="${orderVo.order.status==3 || orderVo.order.status==2}">
                                待发货
                            </c:if>
                            <c:if test="${orderVo.order.status==4 || orderVo.order.status==5}">
                                待收货
                            </c:if>
                            <c:if test="${orderVo.order.status ==6}">
                                待评价
                            </c:if>
                            <c:if test="${orderVo.order.status==7}">
                                交易完成
                            </c:if>
                            <c:if test="${orderVo.order.status == 8}">
                                订单关闭
                            </c:if>
                        </li>
                        <li class="operate">
                            ---
                        </li>
                    </ul>
                </c:forEach>
            </div>
        </c:forEach>

        <!--分页器-->
        <div class="tcdPageCode"></div>

    </div>
</div>

<!--<iframe src="order_status.html" width="1000" height=500""></iframe>-->
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.page.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.js"></script>
</html>