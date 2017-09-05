<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>阿甲学子商城——支付页面</title>
    <link href="${pageContext.request.contextPath}/css/payment.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
</head>
<body>
<!-- 页面顶部-->
<header id="top">
    <div id="logo" class="lf">
        <img class="animated jello" src="${pageContext.request.contextPath}/images/header/logo.png" alt="logo"/>
    </div>
    <div id="top_input" class="lf">
        <input id="input" type="text" placeholder="请输入您要搜索的内容"/>
        <div class="seek" tabindex="-1">
            <div class="actived"><span>分类搜索</span> <img
                    src="${pageContext.request.contextPath}/images/header/header_normal.png" alt=""/></div>
            <div class="seek_content">
                <div id="shcy">生活餐饮</div>
                <div id="xxyp">学习用品</div>
                <div id="srdz">私人订制</div>
            </div>
        </div>
        <a href="" class="rt"><img id="search" src="${pageContext.request.contextPath}/images/header/search.png"
                                   alt="搜索"/></a>
    </div>
    <div class="rt">
        <ul class="lf">
            <li><a href="myCollect.html" title="我的收藏"><img class="care"
                                                           src="${pageContext.request.contextPath}/images/header/care.png"
                                                           alt=""/></a><b>|</b></li>
            <li><a href="myOrder.html" title="我的订单"><img class="order"
                                                         src="${pageContext.request.contextPath}/images/header/order.png"
                                                         alt=""/></a><b>|</b></li>
            <li><a href="cart.html" title="我的购物车"><img class="shopcar"
                                                       src="${pageContext.request.contextPath}/images/header/shop_car.png"
                                                       alt=""/></a><b>|</b></li>
            <li><a href="lookforward.html">帮助</a><b>|</b></li>
            <li><a href="login.html">登录</a></li>
        </ul>
    </div>
</header>
<div id="navlist">
    <ul>
        <li class="navlist_gray_left"></li>
        <li class="navlist_gray">确认订单信息</li>
        <li class="navlist_gray_arrow"></li>
        <li class="navlist_gray">支付订单<b></b></li>
        <li class="navlist_gray_arrow"></li>
        <li class="navlist_blue">支付结果<b></b></li>
        <li class="navlist_blue_right"></li>
    </ul>
</div>
<div id="container">
    <div>
        <h1><i>支付失败</i>
            <span class="rt">支付订单：123455666677 &nbsp;支付金额：<b>4999.00元</b></span></h1>
    </div>
    <div class="rightsidebar_box rt">
        <div class="pay_result">
            <img src="${pageContext.request.contextPath}/images/pay/pay_fail.png" alt=""/>
            <p>支付失败</p>
            <span><a href="#">查看订单状态？ </a><b><a href="#">查看订单&gt;&gt;</a></b></span>
            <br/>
            阿甲学子商城不会以系统异常、订单升级为由，要求你点击任何链接进行退款操作！
        </div>

    </div>
</div>

<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
</body>
</html>