<%--
  Created by IntelliJ IDEA.
  User: yinzhigang
  Date: 2017/9/5
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="top">
    <div id="logo" class="lf">
        <a href="/index.html"><img src="${pageContext.request.contextPath}/images/header/logo.png" alt=""/> </a>
    </div>
    <div id="top_input" class="lf">
        <c:choose>
            <c:when test="${not empty q}">
                <input id="input" type="text" placeholder="${q}"/>
            </c:when>
            <c:otherwise>
                <input id="input" type="text" placeholder="请输入您要搜索的内容"/>
            </c:otherwise>
        </c:choose>
        <div class="seek" tabindex="-1">
            <div class="actived">
                <span>分类搜索</span>
                <img src="${pageContext.request.contextPath}/images/header/header_normal.png" alt=""/>
            </div>
            <div class="seek_content">
                <div id="shcy">生活餐饮</div>
                <div id="xxyp">学习用品</div>
                <div id="srdz">私人订制</div>
            </div>
        </div>
        <a href="javascript:void(0);" class="rt" onclick="search1()">
            <img id="search" src="${pageContext.request.contextPath}/images/header/search.png" alt="搜索"/>
        </a>
    </div>
    <div class="rt">
        <ul class="lf" id="iul">
            <li><a href="/collect/toMyCollect.html" title="我的收藏"><img class="care"
                                                                      src="${pageContext.request.contextPath}/images/header/care.png"
                                                                      alt=""/> </a><b>|</b></li>
            <li><a href="/collect/toMyOrder.html" title="我的订单"><img class="care"
                                                                    src="${pageContext.request.contextPath}/images/header/order.png"
                                                                    alt=""/> </a><b>|</b></li>
            <li><a href="/collect/toCart.html" title="我的购物车"><img class="care"
                                                                  src="${pageContext.request.contextPath}/images/header/shop_car.png"
                                                                  alt=""/> </a><b>|</b></li>
            <li><a href="/lookforward.html">帮助 </a><b>|</b></li>
        </ul>
    </div>
</header>
<nav id="nav">
    <ul>
        <li><a href="/index.html">首页</a></li>
        <li><a href="/food/toItemFood.html">生活餐饮</a></li>
        <li><a href="/toCate.html">学习用品</a></li>
        <li><a href="/lookforward.html">私人订制</a></li>
    </ul>
</nav>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slide.js"></script>
<script type="text/javascript">
    function logout() {
        var ticket = $.cookie("DN_TICKET");
        $.ajax({
            url: 'http://localhost:18888/logout/' + ticket + '.html',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                if (result != null && result != "" && result != undefined) {
                    if (result.status == 200) {
                        alert(result.msg);
                        window.location.href = "http://localhost:18882/sso/toLogin.html";
                    } else {
                        alert(result.msg);
                    }
                }
            },
            error: function () {
                alert("退出失败！");
            }
        });
    }
</script>
<script>
    $("#nav > ul > li").click(function () {
        $(this).children().addClass('active');
        $(this).siblings().children().removeClass();
    })
</script>
<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"/>
<script type="text/javascript">
    $(function () {
        var ticket = $.cookie("DN_TICKET");
        $.ajax({
            type: 'post',
            url: 'http://sso.ajstore.com/checkLoginJsonP.html',
            dataType: 'jsonp',
            jsonp: 'callback',
            success: function (result) {
                var user = result.data;
                console.log(result);
                if (result.status === 200) {
                    $("#iul").append('<li><a href="/lookforward.html">' + user.username + '</a><b>|</b></li><li><a href="javascript:;" onclick="logout()">退出</a></li>');
                } else if (result.status === 500) {
                    $("#iul").append('<li><a href="http://sso.ajstore.com/toLogin.html">登录</a></li>');
                }
            },
            error: function (textStatus, XMLHttpRequest) {
                alert("系统异常！" + JSON.stringify(textStatus) + "--------------" + XMLHttpRequest);
            }
        });
    })
</script>
<script>
    function search1() {
        var q = $("#input").val();
        console.log(111);
        window.location.href = "http://localhost:18888/search.html?q=" + q;
    }
</script>
<script type="text/javascript">
    document.onkeydown = keyDownSearch;

    function keyDownSearch(e) {
        var theEvent = e || window.event;
        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
        if (code == 13) {
            search1();
            return false;
        }
        return true;
    }
</script>