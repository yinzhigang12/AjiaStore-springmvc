<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="Stylesheet"/>
    <style>
        #forward {
            width: 1000px;
            height: 500px;
            margin: 0px auto;
            text-align: center;
            vertical-align: middle;
        }

        #forward img {
            position: relative;
            top: 193px;
        }

        #forward p {
            font-size: 20px;
            position: relative;
            top: 218px;
            font-weight: inherit;
            opacity: 0.3;
        }
    </style>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="commons/header.jsp"></jsp:include>
<!--敬请期待页面-->
<div id="forward">
    <img src="${pageContext.request.contextPath}/images/lookforward/lookforward_img1.png" alt=""
         class="animated bounce"/>
    <p class="animated slideInDown">服务暂未上线 敬请期待!!</p>
</div>
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js"></script>
</body>
</html>