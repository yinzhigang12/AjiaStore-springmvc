<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>阿甲商城学子餐饮页</title>
    <link href="${pageContext.request.contextPath}/css/item_food.css" rel="Stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slide.css"/>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="commons/header.jsp"></jsp:include>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="index.html">首页</a></li>
        <li><a href="item_food.html" class="acti">生活餐饮</a></li>
        <li><a href="itemCat.html">学习用品</a></li>
        <li><a href="lookforward.html">私人定制</a></li>
    </ul>
    <div class="location rt">
        <img src="${pageContext.request.contextPath}/images/foodstore/foodstore_adriss.png" alt=""/>
        <span>北京</span>
        <span>·</span>
        <span>大钟寺</span>
    </div>
</nav>
<!-- banner部分-->
<div class="ck-slide">
    <ul class="ck-slide-wrapper">
        <li>
            <a href="foodstore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/item_food_banner1.png" alt=""></a>
        </li>
        <li style="display:none">
            <a href="foodstore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/item_food_banner2.png" alt=""></a>
        </li>
        <li style="display:none">
            <a href="foodstore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/item_food_banner3.png" alt=""></a>
        </li>
        <li style="display:none">
            <a href="foodstore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/item_food_banner4.png" alt=""></a>
        </li>
        <li style="display:none">
            <a href="foodstore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/item_food_banner1.png" alt=""></a>
        </li>
    </ul>
    <a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
    <div class="ck-slidebox">
        <div class="slideWrap">
            <ul class="dot-wrap">
                <li class="current"><em>1</em></li>
                <li><em>2</em></li>
                <li><em>3</em></li>
                <li><em>4</em></li>
                <li><em>5</em></li>
            </ul>
        </div>
    </div>
</div>
<!-- 特推部分-->
<!--精选美食-->
<div class="delicacy">
    <div class="delicacy_top">
        <img src="${pageContext.request.contextPath}/images/item_food/food_icon.png" alt=""/>
        精选美食/1F
    </div>
    <div class="delicacy_content">
        <div class="food">
            <div class="description">
                <img src="${pageContext.request.contextPath}/images/item_food/item_food_img1.png" alt=""/>
                <p class="action">传统系列炸酱面</p>
                <p class="description_des">色泽光亮，让人口齿生津，酸辣已下饭</p>
                <p class="price">￥ <span>18.00</span></p>
                <div id="one" class="detail">查看详情</div>
            </div>
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img1_1.png" alt=""/>
        </div>
        <div class="food">
            <div class="description">
                <img src="${pageContext.request.contextPath}/images/item_food/item_food_img2.png" alt=""/>
                <p class="action">蔬菜三明治</p>
                <p class="description_des">颜色鲜艳营养健康</p>
                <p class="price">￥ <span>28.00</span></p>
                <div id="two" class="detail">查看详情</div>
            </div>
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img2_1.png" alt=""/>
        </div>
        <div class="food">
            <div class="description">
                <img src="${pageContext.request.contextPath}/images/item_food/item_food_img3.png" alt=""/>
                <p class="action">超级至尊披萨</p>
                <p class="description_des">美味可口，香脆酥甜</p>
                <p class="price">￥ <span>33.00</span></p>
                <div id="three" class="detail">查看详情</div>
            </div>
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img3_1.png" alt=""/>
        </div>
        <div class="food1 ">
            <!--<img src="${pageContext.request.contextPath}/images/y1.png" alt=""/>-->
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img4.png" alt=""/>

            <h2>大补海鲜素材汤<span></span></h2>

            <p>￥20.00</p>
            <a href="" id="four">查看详情</a>
        </div>
        <div class="food1 ">
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img5.png" alt="" id="food1"/>

            <h2>全素套餐<span> (魏家凉皮) </span></h2>

            <p>￥16.00</p>
            <a href="" id="five">查看详情</a>
        </div>
        <div class="food1 ">
            <img src="${pageContext.request.contextPath}/images/item_food/item_food_img6.png" alt=""/>

            <h2>营养海鲜汤<span> (山西面食家) </span></h2>

            <p>￥25.00</p>
            <a href="" id="six">查看详情</a>
        </div>

    </div>

</div>
<!--商家-->
<div class="store">
    <div class="store_top">
        <img src="${pageContext.request.contextPath}/images/item_food/foodshop_icon.png" alt=""/>
        美食店家/2F
    </div>
    <div class="store_content">
        <div id="d1">
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img1.png"
                                             alt=""/></a>
            <p class="one">西贝莜面村<span>(西直门店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>30</span></span>
                </span>
                <span>
                    配送：<span>￥<span>5</span></span>
                </span>
                <span>
                    送达：<span>32<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
        <div id="d2">
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img2.png"
                                             alt=""/></a>
            <p class="one">赛百味<span>(大钟寺中坤广场店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>25</span></span>
                </span>
                <span>
                    配送：<span>￥<span>5</span></span>
                </span>
                <span>
                    送达：<span>35<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
        <div id="d3">
            <a href="foodstore.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img3.png"
                                          alt=""/></a>
            <p class="one">必胜客<span>(知春里店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>50</span></span>
                </span>
                <span>
                    配送：<span>￥<span>10</span></span>
                </span>
                <span>
                    送达：<span>30<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
        <div id="d4">
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img4.png"
                                             alt=""/></a>
            <p class="one">德克士<span>(上地地铁站店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>60</span></span>
                </span>
                <span>
                    配送：<span>￥<span>6</span></span>
                </span>
                <span>
                    送达：<span>10<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
            </p>
        </div>
    </div>
    <div class="store_content">
        <div>
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img5.png"
                                             alt=""/></a>
            <p class="one">小豆面馆<span>(中鼎大厦店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>15</span></span>
                </span>
                <span>
                    配送：<span>￥<span>8</span></span>
                </span>
                <span>
                    送达：<span>40<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
        <div>
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img6.png"
                                             alt=""/></a>
            <p class="one">麦当劳<span>(家乐福店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>25</span></span>
                </span>
                <span>
                    配送：<span>￥<span>5</span></span>
                </span>
                <span>
                    送达：<span>25<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon1.png" alt=""/>面食</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
        <div>
            <a href="/food/toFoodStore.html"><img
                    src="${pageContext.request.contextPath}/images/item_food/foodshop_img7.png" alt=""/></a>
            <p class="one">星巴克<span>(大钟寺店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>50</span></span>
                </span>
                <span>
                    配送：<span>￥<span>6</span></span>
                </span>
                <span>
                    送达：<span>30<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>咖啡</span>
            </p>
        </div>
        <div>
            <a href="/lookforward.html"><img src="${pageContext.request.contextPath}/images/item_food/foodshop_img8.png"
                                             alt=""/></a>
            <p class="one">肯德基<span>(回龙观店)</span></p>
            <p class="two">
                <span>
                    起送：<span>￥<span>40</span></span>
                </span>
                <span>
                    配送：<span>￥<span>6</span></span>
                </span>
                <span>
                    送达：<span>30<span>min</span></span>
                </span>
            </p>
            <p class="three">
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon2.png" alt=""/>饮料</span>
                <span><img src="${pageContext.request.contextPath}/images/item_food/menu_icon3.png" alt=""/>炒菜</span>
            </p>
        </div>
    </div>

</div>
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
<script src="${pageContext.request.contextPath}/js/slide.js"></script>
<script>
    $('.ck-slide').ckSlide({
        autoPlay: true,//默认为不自动播放，需要时请以此设置
        dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
        interval: 3000//默认间隔2000毫秒
    });
</script>
</body>
</html>