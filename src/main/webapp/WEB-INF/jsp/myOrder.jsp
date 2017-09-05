<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
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
            <dd class="first_dd"><a href="#">全部订单</a></dd>
            <dd>
                <a href="#">
                    待付款
                    <span><!--待付款数量--></span>
                </a>
            </dd>
            <dd>
                <a href="#">
                    待收货
                    <span><!--待收货数量-->1</span>
                </a>
            </dd>
            <dd>
                <a href="#">
                    待评价<span><!--待评价数量--></span>
                </a>
            </dd>
            <dd>
                <a href="#">退货退款</a>
            </dd>
        </dl>
        <dl class="footMark">
            <dt onClick="changeImage()">我的优惠卷<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png">
            </dt>
        </dl>
        <dl class="address">
            <dt>收货地址<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png"></dt>
            <dd><a href="addressAdmin.html">地址管理</a></dd>
        </dl>
        <dl class="count_managment">
            <dt onClick="changeImage()">帐号管理<img src="${pageContext.request.contextPath}/images/myOrder/myOrder1.png">
            </dt>
            <dd class="first_dd"><a href="personage.html">我的信息</a></dd>
            <dd><a href="personal_password.html">安全管理</a></dd>
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
        <!-- 订单列表项 -->
        <div id="orderItem">
            <p class="orderItem_title">
                 <span id="order_id">
                     &nbsp;&nbsp;订单编号:<a href="#">12345678910</a>
                 </span>
                &nbsp;&nbsp;成交时间：2016-01-04 18:00&nbsp;&nbsp;
                <span>
                     <a href="#" class="servie">
                        联系客服<img src="${pageContext.request.contextPath}/images/myOrder/kefuf.gif"/>
                      </a>
                 </span>
            </p>
        </div>
        <div id="orderItem_detail">
            <ul>
                <li class="product">
                    <b><a href="#"><img
                            src="${pageContext.request.contextPath}/images/myOrder/product_img1.png"/></a></b>
                    <b class="product_name lf">
                        <a href="">联想(Lenovo)YoGA5 PRO 标配版电脑 (I5-7200U 8G 512G SSD IPS)</a>
                        <br/>
                    </b>
                    <b class="product_color ">
                        颜色：深空灰
                    </b>
                </li>
                <li class="unit_price">
                    专属价
                    <br/>
                    ￥8800
                </li>
                <li class="count">
                    1件
                </li>
                <li class="sale_support">
                    退款/退货
                    <br/>
                    我要维权
                </li>
                <li class=" payments_received">
                    ￥1222.00
                </li>
                <li class="trading_status">
                    <img src="${pageContext.request.contextPath}/images/myOrder/car.png" alt=""/>已发货
                    <br/>
                    <a href="orderInfo.html">订单详情</a>
                    <br/>
                    <a href="#" class="view_logistics">查看物流</a>
                </li>
                <li class="operate">
                    <a href="#">确认收货</a>
                </li>
            </ul>
        </div>

        <div id="orderItem">
            <p class="orderItem_title">
                 <span id="order_id">
                     &nbsp;&nbsp;订单编号:<a href="#">12345678910</a>
                 </span>
                &nbsp;&nbsp;成交时间：2016-01-04 18:00&nbsp;&nbsp;
                <span>
                     <a href="#" class="servie">
                         联系客服<img src="${pageContext.request.contextPath}/images/myOrder/kefuf.gif"/>
                     </a>
                 </span>
            </p>
        </div>
        <div id="orderItem_detail">
            <ul>
                <li class="product">
                    <b><a href="#"><img
                            src="${pageContext.request.contextPath}/images/myOrder/product_img1.png"/></a></b>
                    <b class="product_name lf">
                        <a href="">联想(Lenovo)YoGA5 PRO 标配版电脑 (I5-7200U 8G 512G SSD IPS)</a>
                        <br/>
                    </b>
                    <b class="product_color ">
                        颜色：深空灰
                    </b>
                </li>
                <li class="unit_price">
                    专属价
                    <br/>
                    ￥8800
                </li>
                <li class="count">
                    1件
                </li>
                <li class="sale_support">
                    退款/退货
                    <br/>
                    我要维权
                </li>
                <li class=" payments_received">
                    ￥1222.00
                </li>
                <li class="trading_status">
                    <img src="${pageContext.request.contextPath}/images/myOrder/car.png" alt=""/>已发货
                    <br/>
                    <a href="orderInfo.html">订单详情</a>
                    <br/>
                    <a href="#" class="view_logistics">查看物流</a>
                </li>
                <li class="operate">
                    <a href="#">确认收货</a>
                </li>
            </ul>
        </div>

        <div id="orderItem">
            <p class="orderItem_title">
                 <span id="order_id">
                     &nbsp;&nbsp;订单编号:<a href="#">12345678910</a>
                 </span>
                &nbsp;&nbsp;成交时间：2016-01-04 18:00&nbsp;&nbsp;
                <span>
                     <a href="#" class="servie">
                         联系客服<img src="${pageContext.request.contextPath}/images/myOrder/kefuf.gif"/>
                     </a>
                 </span>
            </p>
        </div>
        <div id="orderItem_detail">
            <ul>
                <li class="product">
                    <b><a href="#"><img
                            src="${pageContext.request.contextPath}/images/myOrder/product_img1.png"/></a></b>
                    <b class="product_name lf">
                        <a href="">联想(Lenovo)YoGA5 PRO 标配版电脑 (I5-7200U 8G 512G SSD IPS)</a>
                        <br/>
                    </b>
                    <b class="product_color ">
                        颜色：深空灰
                    </b>
                </li>
                <li class="unit_price">
                    专属价
                    <br/>
                    ￥8800
                </li>
                <li class="count">
                    1件
                </li>
                <li class="sale_support">
                    退款/退货
                    <br/>
                    我要维权
                </li>
                <li class=" payments_received">
                    ￥1222.00
                </li>
                <li class="trading_status">
                    <img src="${pageContext.request.contextPath}/images/myOrder/car.png" alt=""/>已发货
                    <br/>
                    <a href="orderInfo.html">订单详情</a>
                    <br/>
                    <a href="#" class="view_logistics">查看物流</a>
                </li>
                <li class="operate">
                    <a href="#">确认收货</a>
                </li>
            </ul>
        </div>


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