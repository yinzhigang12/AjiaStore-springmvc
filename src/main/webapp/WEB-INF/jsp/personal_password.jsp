<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单 - 达内学子商城</title>
    <link href="${pageContext.request.contextPath}/css/myOrder.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/personage.css" rel="stylesheet"/>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="commons/header.jsp"></jsp:include>
<!-- 我的订单导航栏-->
<div id="nav_order">
    <ul>
        <li><a href="">首页<span>&gt;</span>个人中心</a></li>
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
            <dd class="first_dd"><a href="myOrder.html">全部订单</a></dd>
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
    <!-- 右边栏-->
    <!--个人信息头部-->
    <div class="rightsidebar_box rt">
        <div class="rs_header">
            <span><a href="personage.html">我的信息</a></span>
            <span class="rs_header_active"><a href="personal_password.html">安全管理</a></span>
        </div>

        <!--安全管理 -->
        <div class="rs_content">
            <p class="change_password_title">更改密码</p>
            <div class="new_password">
                <span class="word">输入旧密码：</span><input type="password"/><span class="change_hint"></span>
            </div>
            <div class="new_password">
                <span class="word">输入新密码：</span><input type="password"/><span class="change_hint"></span>
            </div>
            <div class="confirm_password">
                <span class="word">确认新密码：</span><input type="password"/><span class="confirm_hint"></span>
            </div>
            <div class="save_password">
                保存更改
            </div>
        </div>


    </div>
</div>

<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.page.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.js"></script>
</html>