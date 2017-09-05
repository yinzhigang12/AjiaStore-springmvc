<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>阿甲学子商城——支付页面</title>
    <link href="${pageContext.request.contextPath}/css/payment.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
    <style>
        .okPay a {
            color: #FFFFFF;
        }
    </style>
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
        <li class="navlist_gray_arro">
            <canvas id="canvas_gray" width="20" height="38"></canvas>
        </li>
        <li class="navlist_blue">支付订单<b></b></li>
        <li class="navlist_blue_arro">
            <canvas id="canvas_blue" width="20" height="38"></canvas>
        </li>
        <li class="navlist_gray">支付完成<b></b></li>
        <li class="navlist_gray_right"></li>
    </ul>
</div>
<!--订单确认-->
<form action="pay_success.html" method="post" id="pay_form">
    <div id="container" class="clearfix">
        <!-- 支付订单信息-->
        <div class="pay_info">
            <b>支付金额：<i>4800元</i></b><input type="hidden" name="payment" value="0.01"/>
            <span>支付订单：324235435 收款方：阿甲商城</span><input type="hidden" name="orderId"/>
        </div>
        <!--支付方式-->
        <div id="pay_type">
            <!-- 支付方式头-->
            <div class="pay_type_title">
                <b>网上银行支付</b>
            </div>
            <div id="dnBank">
                <ul>
                    <li><input type="radio" name="bankId" value="BOC-NET-B2C" id="02zg">
                        <label for="02zg"><img src="${pageContext.request.contextPath}/images/pay/pay_img1.jpg" alt=""/></label>
                    </li>
                    <li><input type="radio" name="bankId" value="ICBC-NET-B2C" id="03gs">
                        <label for="03gs"><img src="${pageContext.request.contextPath}/images/pay/pay_img2.jpg" alt=""/></label>
                    </li>
                    <li><input type="radio" name="bankId" value="CMBCHINA-NET-B2C" id="04zs">
                        <label for="04zs"><img src="${pageContext.request.contextPath}/images/pay/pay_img3.jpg" alt=""/></label>
                    </li>
                    <li><input type="radio" name="bankId" value="CCB-NET-B2C" id="05js">
                        <label for="05js"><img src="${pageContext.request.contextPath}/images/pay/pay_img4.jpg" alt=""/></label>
                    </li>
                    <li><input type="radio" name="bankId" value="ABC-NET-B2C" id="06ny">
                        <label for="06ny"><span><img src="${pageContext.request.contextPath}/images/pay/pay_img5.jpg"
                                                     alt=""/></span></label>
                    </li>

                </ul>
            </div>

        </div>
        <!--结算条-->
        <div id="count_bar">
        <span class="pay_leftTime">
            剩余付款时间：<b>15：00</b>
            <!--获取待支付时间并更改订单状态-->
        </span>
            <span class="okPay"><a href="pay_success.html">确认支付</a></span>
            <!-- <input type="submit" value="立即付款"> -->
        </div>

    </div>
</form>
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
<script>
    $("#count_bar .okPay").css("display", "none");
    $("#dnBank>ul>li img").click(function () {
        $(this).addClass("hover");
        $(this).parent().parent().siblings().children('label').children('img').removeClass('hover');
        $("#count_bar .okPay").show("3000");
    });
    /* $(":not(#count_bar .okPay)").css("display","none"); */
</script>
<script type="text/javascript">
    function payment() {
        $("#pay_form").submit();
        // document.getElementById('pay_form').submit();
        alert(11);
    }
</script>
<script>
    $(".okPay").click(function () {
        Window.location.href = "pay_success.html";
    })
</script>
<script>
    var canvas = document.getElementById("canvas_gray");
    var cxt = canvas.getContext("2d");
    var gray = cxt.createLinearGradient(10, 0, 10, 38);
    gray.addColorStop(0, '#f5f4f5');
    gray.addColorStop(1, '#e6e6e5');
    cxt.beginPath();
    cxt.fillStyle = gray;
    cxt.moveTo(20, 19);
    cxt.lineTo(0, 38);
    cxt.lineTo(0, 0);
    cxt.fill();
    cxt.closePath();
</script>
<script>
    var canvas = document.getElementById("canvas_blue");
    var cxt = canvas.getContext("2d");
    var blue = cxt.createLinearGradient(10, 0, 10, 38);
    blue.addColorStop(0, '#27b0f6');
    blue.addColorStop(1, '#0aa1ed');
    cxt.beginPath();
    cxt.fillStyle = blue;
    cxt.moveTo(20, 19);
    cxt.lineTo(0, 38);
    cxt.lineTo(0, 0);
    cxt.fill();
    cxt.closePath();
</script>
</body>
</html>

