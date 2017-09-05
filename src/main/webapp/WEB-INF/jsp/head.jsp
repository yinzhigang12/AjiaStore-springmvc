<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
</head>
<body>
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
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="index.html">首页</a></li>
        <li><a href="item_food.html">生活餐饮</a></li>
        <li><a href="itemCat.html">学习用品</a></li>
        <li><a href="lookforward.html">私人定制</a></li>
    </ul>
</nav>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
</body>
</html>