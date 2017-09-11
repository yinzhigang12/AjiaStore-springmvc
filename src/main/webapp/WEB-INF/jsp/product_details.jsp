<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>阿甲商城学子详情页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link href="${pageContext.request.contextPath}/css/pro_details.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="Stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="commons/header.jsp"></jsp:include>
<!-- 内容-->
<!--细节导航-->
<div id="nav_detail">
    <h5>首页 > 学习用品 > 笔记本电脑 > 联想Lenovo-YOGA 700></h5>
</div>
<!--产品预览-->
<div id="shop_detail">
    <!-- 左侧-->
    <div id="preview" class="lf">
        <div id="mediumDiv">
            <img id="mImg" src="${picParams[0].form}"/>
        </div>
        <div id="icon_all">
            <ul id="icon_list">
                <c:forEach var="picParam" items="${picParams}">
                    <li class="i1"><img src="${picParam.key}"/></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!-- 右侧-->
    <div class="right_detail lf">
        <!-- 商品名称-->
        <h1>${item.brand} ${item.model}</h1>
        <!-- 商品全称-->
        <h3>(${item.title})</h3>
        <!-- 价格部分-->
        <div class="price">
            <div id="pro_price"><b>学员售价：</b><span>￥${item.price}</span></div>
            <div class="promise">
                <b>服务承诺：</b>
                <span>*退货补运费</span>
                <span>*30天无忧退货</span>
                <span>*48小时快速退款</span>
                <span>*72小时发货</span>
                <span>*${item.sellPoint}</span>
            </div>
        </div>
        <!-- 参数部分 客服-->
        <p class="parameter">
            <b>客服：</b>
            <span class="connect">联系客服</span><img class="gif"
                                                  src="${pageContext.request.contextPath}/images/product_detail/kefuf.gif">
        </p>
        <c:forEach items="${myParams}" var="myParam">
            <c:if test='${myParam.key == "颜色"}'>
                <c:set var="myColor" value="${myParam.values[0]}"></c:set>
            </c:if>
            <c:if test='${myParam.key == "型号"}'>
                <c:set var="myModel" value="${myParam.values[0]}"></c:set>
            </c:if>
        </c:forEach>

        <c:forEach items="${allParams}" var="aParam">
            <c:if test='${aParam.key=="颜色"}'>
                <!-- 颜色-->
                <p class="style" id="choose_color">
                    <s class="color">颜色：</s>
                    <c:forEach items="${aParam.values}" var="val">
                        <input type="button" class='i1 ${val == myColor ? "borderChange":""}' value="${val}"
                               title="${val}"/>
                    </c:forEach>
                </p>
            </c:if>
            <c:if test='${aParam.key=="型号"}'>
                <!-- 规格-->
                <p>
                    <s>规格：</s>
                    <c:forEach items="${aParam.values}" var="val">
                        <span class='avenge ${val == myModel ? "borderChange":""}'>${val}</span>
                    </c:forEach>
                </p>
            </c:if>
        </c:forEach>


        <!-- 未选择规格，颜色时状态-->
        <div class="message"></div>
        <!-- 数量-->
        <p class="accountChose">
            <s>数量：</s>
            <button class="numberMinus">-</button>
            <input type="text" value="1" class="number" id="buy-num">
            <button class="numberAdd">+</button>
        </p>
        <!-- 购买部分-->
        <div class="shops">
            <a href="cart.html" class="buy lf" id="buy_now">立即购买</a>
            <a href="#" class="shop lf" id="add_cart"><img
                    src="${pageContext.request.contextPath}/images/product_detail/product_detail_img7.png"
                    alt=""/>加入购物车</a>
            <a href="#" class="collection lf" id="collect"><span>收藏</span></a><b><img
                src="${pageContext.request.contextPath}/images/product_detail/product_detail_img6.png" alt=""/></b>
        </div>
    </div>
</div>
<!--为你推荐-->
<div id="recommended">
    <p>为你推荐<span>大家都在看</span></p>
    <div id="demo" style="width:1000px;overflow:hidden;">
        <div id="indemo" style="float: left;width: 200%;">
            <div id="demo1" style="float:left"><!-- 第一个宽度显示 -->
                <div class="detail_1 lf">
                    <div class="detail_img1">
                        <img src="${pageContext.request.contextPath}/images/product_detail/product_detail_1.png"
                             border="0">
                    </div>
                    <p>ThinkPad New S2 (20GUA00QCD)13.3英寸超霸</p>
                </div>
                <div class="detail_1 lf">
                    <div class="detail_img1">
                        <img src="${pageContext.request.contextPath}/images/product_detail/product_detail_2.png"
                             border="0">
                    </div>
                    <p>戴尔 DELL燃7000 R1605S 超霸</p>
                </div>
                <div class="detail_1 lf">
                    <div class="detail_img1">
                        <img src="${pageContext.request.contextPath}/images/product_detail/product_detail_3.png"
                             border="0">
                    </div>
                    <p>戴尔(DELL)魔方15MF Pro-R2505TSS灵</p>
                </div>
                <div class="detail_1 lf">
                    <div class="detail_img1">
                        <img src="${pageContext.request.contextPath}/images/product_detail/product_detail_4.png"
                             border="0">
                    </div>
                    <p>联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
                </div>
                <!--</div>-->
            </div>
            <div id="demo2" style="float:left">
            </div>
        </div>
        <!-- 宽度超大 -->
    </div>
    <!-- 外面大框 -->
</div>
<!--商品详情-->
<div id="iteminfo">
    <div id="tab">
        <div class="tab lf">
            <div class="cat">
                <span class="active"><a href="">商品详情</a></span>
                <span><a href="lookforward.html">商品评价</a></span>
            </div>
        </div>
        <div class="cart rt">
            <img src="${pageContext.request.contextPath}/images/product_detail/product_detail_img9.png" alt=""/>
        </div>
    </div>
    <div class="left lf">
        <div class="all">
            ${itemDesc.itemDesc}
        </div>
    </div>
    <div class="right rt">
        <div class="aside_nav">
            <p><i><img src="${pageContext.request.contextPath}/images/product_detail/product_detail_icon_g_1.png"
                       alt=""/></i><a
                    href="#specification_parameter">规格参数</a></p>
            <p><i><img src="${pageContext.request.contextPath}/images/product_detail/product_detail_icon_t_1.png"
                       alt=""/></i><a
                    href="#product_introduction">商品介绍</a></p>
            <p><i><img src="${pageContext.request.contextPath}/images/product_detail/product_detail_icon_d_1.png"
                       alt=""/></i><a
                    href="#sale_protection">售后保障</a></p>
            <p><i><img src="${pageContext.request.contextPath}/images/product_detail/product_detail_icon_bao_1.png"
                       alt=""/></i><a href="#sale_protect">包装清单</a>
            </p>
            <p><i><img src="${pageContext.request.contextPath}/images/product_detail/product_detail_icon_up_1.png"
                       alt=""/></i><a href="#">回到顶部</a></p>
        </div>
    </div>
</div>
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<div class="modal" style="display:none">
    <div class="modal_dialog">
        <div class="modal_header">
            操作提醒
        </div>
        <div class="modal_information">
            <img src="${pageContext.request.contextPath}/images/model/model_img2.png" alt=""/>
            <span>是否将您的宝贝加入收藏夹</span>

        </div>
        <div class="yes"><span>确定</span></div>
        <div class="no"><span>取消</span></div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
<!--图片轮播悬停进入详情页效果-->
<script>
    var speed = 20;
    var tab = document.getElementById("demo");
    var tab1 = document.getElementById("demo1");
    var tab2 = document.getElementById("demo2");
    tab2.innerHTML = tab1.innerHTML;

    function Marquee() {
        if (tab2.offsetWidth - tab.scrollLeft <= 0)
            tab.scrollLeft -= tab1.offsetWidth
        else {
            tab.scrollLeft++;
        }
    }

    var MyMar = setInterval(Marquee, speed);
    tab.onmouseover = function () {
        clearInterval(MyMar)
    };
    tab.onmouseout = function () {
        MyMar = setInterval(Marquee, speed)
    };
</script>
<!--添加到购物车 立即购买 收藏部分-->
<script type="text/javascript">
    //加入购物车操作
    var color;
    var norms;
    var buyAccount;

    function getPro() {
        //颜色取值
        $("#choose_color input").each(function (i, item) {
            if ($(this).hasClass("borderChange")) {
                color = $(this).val();
            }
        })
        console.log(color)
        //规格取值
        $(".avenge").each(function () {
            if ($(this).hasClass("borderChange")) {
                norms = $(this).html();
            }
        })
        console.log(norms)
        //数量取值
        buyAccount = $("#buy-num").val();
        console.log(buyAccount);
    }

    $("#add_cart").click(function (e) {
        e.preventDefault();
        getPro();
        //如果未选择，请选择商品信息
        if (!color || !norms) {
//            $("#add_cart").text("加入购物车").css({"background":"#f5f5f5","color":"#000"})
            alert("请选择商品信息");
        } else {
            $(".modal").show();
            $(".modal_information span").html("是否将您的宝贝加入购物车");
        }
        $('.no').click(function () {
            $('.modal').hide();
        })
        var params = {
            itemColor: color,
            itemModel: norms,
            num: buyAccount,
            //商品id    temId:${item.id}
        };
        $.ajax({
            type: "post",
            url: "/insertToCart.html",
            data: params,
            success: function (data) {
                if (data == '200') {
                    alert("添加购物车成功！");
                } else if (data == 500) {
                    alert("添加购物车失败！");
                } else {
                    alert("您还没登录呢！");
                    window.location.href = data;
                }
            },
            error: function (data) {
//              alert("系统异常！");
            }
        });
    })
    /**添加到收藏**/
    $("#collect").click(function (e) {
        e.preventDefault();
        getPro();
        //如果未选择，请选择商品信息
        if (!color || !norms) {
            alert("请选择宝贝的参数信息");
        } else {
            $(".modal").show();
            $(".modal_information span").html("是否将您的宝贝加入收藏夹");
        }
    })
    $('.no').click(function () {
        $('.modal').hide();
    })
</script>
<script>
    $(function () {
        var nav = $("#tab"); //得到导航对象
        var aside = $(".aside_nav");//右侧导航
        var win = $(window); //得到窗口对象
        var sc = $(document);//得到document文档对象。
        win.scroll(function () {
            if (sc.scrollTop() >= 1000) {
                nav.addClass("fixed_tab");
                aside.addClass("fixed_aside");
            }
            else {
                nav.removeClass("fixed_tab");
                aside.removeClass("fixed_aside");
            }
        })

        win.scroll(function () {
            if (sc.scrollTop() >= 60 && sc.scrollTop() < 1000) {
                $("#top").addClass("fixed_nav");
            }
            else {
                $("#top").removeClass("fixed_nav");
            }
        })
        //介绍区域右侧导航
        $("#iteminfo .right p").click(function () {
            //$(this).addClass("clic").siblings().removeClass("clic");
            $(this).css("background-color", "#0AA1ED").siblings().css("background-color", "#e8e8e8");
            $(this).find("a").css("color", "#fff").parent().siblings().find("a").css("color", "#828282")
        })
        /**选择商品进行添加 悬停效果**/
        $(".avenge").mouseover(function () {
            $(this).css({"border": "1px solid #0AA1ED", "color": "#0AA1ED"});
        }).mouseout(function () {
            $(this).css({"border": "1px solid #666", "color": "#666"})
        })
        /**数量添加**/
        var n = $("#buy-num").val() * 1;
        $(".numberMinus").click(function () {
            if (n >= 1) {
                $("#buy-num").val(n -= 1);
            }
        })
        $(".numberAdd").click(function () {
            $("#buy-num").val(n += 1);
        })

        /**ajax提交**/
        $(".avenge").each(function (i, item) {
            $(this).click(function (norms) {
                $(this).addClass("borderChange")
                if ($(this).siblings().addClass("borderChange")) {
                    $(this).siblings().removeClass("borderChange")
                }
                //规格选择
                var norms = $(this).html();
                console.log(norms);

                var brand = '${item.brand}';
                getPro();
                loadMatchItem(brand, color, norms);
            })
        })
        //颜色选择
        $("#choose_color input").each(function (i, item) {
            $(this).click(function () {
                $(this).addClass("borderChange")
                if ($(this).siblings().addClass("borderChange")) {
                    $(this).siblings().removeClass("borderChange")
                }
                var color = $(this).val();
                console.log(color);

                var brand = '${item.brand}';
                getPro();
                loadMatchItem(brand, color, norms);
            })
        })
        //数量选择
        $(".accountChose").click(function () {
            var buyAccount = $("#buy-num").val();
            console.log(buyAccount);
        })

        /*立即购买*/
        $("#buy_now").click(function (e) {
            //如果未选择，请选择商品信息
            if (color == undefined && norms == undefined) {
//            $("#add_cart").text("加入购物车").css({"background":"#f5f5f5","color":"#000"})
                alert("请选择商品信息");
            } else {
                location.href = "cart.html";
            }
            e.preventDefault();
            var color = $("#choose_color input.borderChange").val();
            var model = $("#choose_model span.borderChange").html();
            var num = $("#buy-num").val();
            // 后台需要的参数
            // var url = '/toOrder/'+${item.id}+'.html?&num='+num+'&itemColor='+color+'&itemModel='+model;
//             window.location.href = url;
        })
    })

    function loadMatchItem(brand, color, norms) {
        var url = "/item/getMatchItemId.html";
        var itemId = ${item.id};
        $.post(url, {brand: brand, color: color, model: norms}, function (data) {
            window.location.href = "/toItemInfo/" + data.data + ".html";
        }, 'json');
    }
</script>
<!--图片效果-->
<script>
    $("#mImg").hover(function () {
        $(this).addClass("animated pulse");
    }, function () {
        $(this).removeClass("animated pulse");
    });
</script>
<script>
    $('#icon_list>li').click(function () {
        $(this).children('img').css('border', '1px solid #CECFCE');
        var address = $(this).children().attr('src');
        console.log(address);
        var newaddress = address.slice(0, -4);
        var bigaddress = newaddress + 'big.png';
        $('#mImg').attr('src', bigaddress);
        $(this).siblings().children('img').css('border', '');
    })
</script>
</body>
</html>