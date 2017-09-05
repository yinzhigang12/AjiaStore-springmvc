<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>阿甲商城学子登陆页面</title>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="Stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet"/>
</head>
<body>
<!-- 页面顶部-->
<header id="top">
    <div class="top">
        <img src="${pageContext.request.contextPath}/images/header/logo.png" alt=""/>
        <span>欢迎登录</span>
    </div>
</header>
<div id="container">
    <div id="cover" class="rt">
        <form id="login-form" method="post" name="form1">
            <div class="txt">
                <p>登录学子商城
                    <span>
                        <a href="register.html">新用户注册</a>
                    </span>
                </p>
                <div class="text">
                    <input type="text" placeholder="请输入您的用户名" name="lname" id="username" required>
                    <span><img src="${pageContext.request.contextPath}/images/login/yhm.png"></span>
                </div>

                <div class="text">
                    <input type="password" id="password" placeholder="请输入您的密码" name="lwd" required minlength="6"
                           maxlength="15">
                    <span><img src="${pageContext.request.contextPath}/images/login/mm.png"></span>
                </div>
                <div class="chose">
                    <input type="checkbox" class="checkbox" id="ck_rmbUser" value="0">自动登录
                    <span>忘记密码？</span>
                </div>
                <input class="button_login" type="button" value="登录" id="bt-login" onclick="Save()"/>
            </div>
        </form>
    </div>
</div>
<!--错误提示-->
<div id="showResult"></div>
<!-- 品质保障，私人定制等-->
<jsp:include page="commons/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="jquery/jquery.cookie.js"></script>
<script>
    $("#username").blur(function () {
        var data = $("#username").val();
        if (data == null || data == "") {
            $("#showResult").text("用户名不能为空！");
            $("#showResult").css("color", "red");
            return false;
        }
        $.ajax({
            type: "POST",
            url: "/checkUsername.html",
            data: "username=" + data,
            beforeSend: function (XMLHttpRequest) {
                $("#showResult").text("正在查询");

            },
            success: function (msg) {
                if (msg === "yes") {
                    $("#showResult").text("该用户名可以被使用");
                } else if (msg === 'no') {
                    $("#showResult").text("该用户名不存在");
                    $("#showResult").css("color", "red");
                } else {
                    $("#showResult").text("系统异常！");
                    $("#showResult").css("color", "red");
                }
            },
            error: function () {
                //错误处理
            }
        });
    });
</script>
<script>
    $('#bt-login').click(function () {
        //读取用户的输入——表单序列化
        var inputData = $('#login-form').serialize();
        //异步提交请求，进行验证
        $.ajax({
            type: 'POST',
            url: 'data/1_login.php',
            data: inputData,
            success: function (txt, msg, xhr) {
                if (txt == 'ok') {  //登录成功
                    var loginName = $('[name="uname"]').val();
                    sessionStorage['loginName'] = loginName;
                    console.log(loginName);
                } else { //登录失败
                    $('#showResult').html('登录失败！错误消息为：' + txt);
                }
            }
        });
    });
</script>
<script type="text/javascript">

    $(document).ready(function () {
        if ($.cookie("rmbUser") == "true") {
            $("#ck_rmbUser").attr("checked", true);
            $("#username").val($.cookie("username"));
            $("#password").val($.cookie("password"));
        }
    });

    //记住用户名密码
    function Save() {
        if ($("#ck_rmbUser").attr("checked")) {
            var str_username = $("#username").val();
            console.log(str_username);
            var str_password = $("#password").val();
            $.cookie("rmbUser", "true", {expires: 7}); //存储一个带7天期限的cookie
            $.cookie("username", str_username, {expires: 7});
            $.cookie("password", str_password, {expires: 7});
        }
        else {
            $.cookie("rmbUser", "false", {expire: -1});
            $.cookie("username", "", {expires: -1});
            $.cookie("password", "", {expires: -1});
        }
    };
</script>
</body>
</html>