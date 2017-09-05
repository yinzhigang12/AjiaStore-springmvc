<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单 - 阿甲学子商城</title>
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
            <dd><a href="personal_icon.html">个人头像</a></dd>
            <dd><a href="personal_password.html">安全管理</a></dd>
        </dl>
    </div>
    <!-- 右边栏-->
    <div class="rightsidebar_box rt">
        <!--标题栏-->
        <div class="rs_header">
            <span class="address_title">收获地址管理</span>
        </div>
        <!--收货人信息填写栏-->
        <div class="rs_content">
            <form method="post" action="/addr/saveAddress.html">
                <!--收货人姓名-->
                <div class="recipients">
                    <span class="red">*</span><span class="kuan">收货人：</span><input type="text" name="receiverName"
                                                                                   id="receiverName"/>
                </div>
                <!--收货人所在城市等信息-->
                <div data-toggle="distpicker" class="address_content">
                    <span class="red">*</span><span class="kuan">省&nbsp;&nbsp;份：</span><select name="receiverState"
                                                                                               data-province="---- 选择省 ----" id="receiverState"></select>
                    城市：<select name="receiverCity" data-city="---- 选择市 ----" id="receiverCity"></select>
                    区/县：<select name="receiverDistrict" data-district="---- 选择区 ----" id="receiverDistrict"></select>
                </div>


                <!--收货人详细地址-->
                <div class="address_particular">
                    <span class="red">*</span><span class="kuan">详细地址：</span><textarea name="receiverAddress"
                                                                                       id="receiverAddress" cols="60"
                                                                                       rows="3"
                                                                                       placeholder="建议您如实填写详细收货地址"></textarea>
                </div>
                <!--收货人地址-->
                <div class="address_tel">
                    <span class="red">*</span><span class="kuan">手机号码：</span><input type="tel" id="receiverMobile"
                                                                                    name="receiverMobile"/>固定电话：<input
                        type="text" name="receiverPhone" id="receiverPhone"/>
                </div>
                <!--邮政编码-->
                <div class="address_postcode">
                    <span class="red">&nbsp;</span><span class="kuan">邮政编码：</span>&nbsp;<input type="text"
                                                                                               name="receiverZip"/>
                </div>
                <!--地址名称-->
                <div class="address_name">
                    <span class="red">&nbsp;</span><span class="kuan">地址名称：</span>&nbsp;<input type="text"
                                                                                               id="addressName"
                                                                                               name="addressName"/>如：<span
                        class="sp">家</span><span class="sp">公司</span><span class="sp">宿舍</span>
                </div>
                <!--保存收货人信息-->
                <div class="save_recipient">
                    保存收货人信息
                </div>

            </form>
            <!--已有地址栏-->
            <div class="address_information_manage">
                <div class="aim_title">
                    <span class="dzmc dzmc_title">地址名称</span><span class="dzxm dzxm_title">姓名</span><span
                        class="dzxq dzxq_title">地址详情</span><span class="lxdh lxdh_title">联系电话</span><span
                        class="operation operation_title">操作</span>
                </div>
                <c:forEach items="${shippings}" var="shipping">
                    <div class='aim_content_one ${shipping.isDefault ? "aim_active":""}'>
                        <span class="dzmc dzmc_active">办公室</span>
                        <span class="dzxm dzxm_normal">${shipping.receiverName}</span>
                        <span class="dzxq dzxq_normal">${shipping.receiverAddress}</span>
                        <span class="lxdh lxdh_normal">${shipping.receiverMobile}</span>
                        <span class="operation operation_normal">
                    	<span class="aco_change">修改</span>|<span data="${shipping.addId}" class="aco_delete">删除</span>
                    </span>
                        <span data="${shipping.addId}"
                              class="swmr swmr_normal">${shipping.isDefault ? "" : "设为默认"}</span>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<jsp:include page="commons/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.page.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.data.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/personal.js"></script>
<script type="text/javascript">
    $(".lxdh_normal").each(function (i, e) {
        var phone = $(e).html();
        $(e).html(changePhone(phone));
    });
</script>
</html>