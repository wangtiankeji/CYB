<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="创客邦">
    <meta name="keywords" content="创客邦">
    <meta name="viewport" content="width=device-width" ,initial-scale="1" ,minium-scale="1" ,maximum-scale="1"
          ,user-scalable="no">
    <title>创客邦</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="${ctx}/css/jquery.mobile-1.4.5.min.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx}/css/swiper.min.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx}/css/mobilestyle.css" type="text/css"/>
</head>
<body>

<!-- 登陆页-->
<div data-role="page" id="page-login" data-theme="f">
        <div data-role="content" data-theme="f" class="ui-content-f2">
            <form id="frm-login" action="${ctx}/indexLogin" method="post" class="validate">
                <div class="login-content">
                    <ul>
                        <li><input type="tel" name="loginName" id="logintel" value="${loginName }" class="required tel" data-role="none" placeholder="手机号"/></li>
                        <li><input type="password" name="password" id="loginpassword" class="required password" data-role="none" placeholder="密码"/></li>
                    </ul>
                </div>
                <button type="button" data-role="none" class="btn-login">登录</button>
                <a href="tel:18612531150" class="forget-password">忘记密码？</a>
                <div data-role="footer" data-theme="f" class="ui-footer-f2">
                    <div class="login-line"><img src="${ctx}/img/login-line.png" alt=""/></div>
                    <a href="#page-regist" data-role="none" class="forget-password" data-transition="slide">注册创客邦</a>
                </div>
                <!-- 错误状态-->
                <div class="telerror error" style="display: none"><p></p></div>
            </form>
        </div>
</div>

<!--注册页-->
<div data-role="page" id="page-regist" data-theme="f">
    <div data-role="content" data-theme="f" class="ui-content-f2">
        <form action="" method="post">
            <div class="login-content">
                <ul>
                    <li><input type="tel" name="regist-tel" id="regist-tel" class="regist-tel" data-role="none" placeholder="手机号"/></li>
                    <li class="password-box"><input type="password" name="password" id="regist-password" class="password" data-role="none" placeholder="密码"/></li>
                    <li><input type="password" name="password" id="regist-repassword" class="password" data-role="none" placeholder="再次输入密码"/></li>
                </ul>
            </div>
            <button type="button" data-role="none" class="btn-regist">提交</button>
            <a class="regist-item" href="serviceterms.html" class="forget-password">提交注册即表示您同意<span style="color:#4b89dc">《创客邦服务条款》</span></a>
            <div class="regist-format error" style="display: none"><p></p></div>
        </form>
    </div>
</div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(document).bind("mobileinit", function() {
		//disable ajax nav
		$.mobile.ajaxEnabled = false
	});
</script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		 errorShow();
	});
	
	function errorShow(){
		if('${reflag}'=='1'){
			showTip(".telerror", "${msg}");
		}
	}
	
	function validate(sMobile, password, repassword) {
		//注册页手机号前端验证
		if (!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile))) {
			showTip(".regist-format", "手机号格式不正确");
			return false;
		}

		if (password == '' || repassword == '') {
			showTip(".regist-format", "密码不能为空");
			return false;
		}

		if (password != repassword) {
			showTip(".regist-format", "两次密码不一致");
			return false;
		}
		return true;
	}

	$(".btn-login").click(function() {
		var loginName = $("#logintel").val();
		var password = $("#loginpassword").val();
		if(loginName==''||password==''){
			alert("用户名和密码不能为空");
			return;
		}
		$("#frm-login").submit();
		
	});

	$(".btn-regist").click(function() {
		var loginName = $(".regist-tel").val();
		var password = $("#regist-password").val();
		var repassword = $("#regist-repassword").val();
		if (validate(loginName, password, repassword)) {
			$.ajax({
				type : "POST",
				url : "${ctx}/regist",
				data : {
					loginName : loginName,
					userPas : password
				},
				success : function(msg) {
					if (msg == 'success') {
						showTip(".regist-format", "注册成功");
						setTimeout(function() {
							$("#a-login").click();
						}, 500);
					} else {
						showTip(".regist-format", msg)
					}
				}
			});
		}
	});

	function showTip(obj, msg) {
		$(obj).find("p").text(msg);
		$(obj).show();
		setTimeout(function() {
			$(obj).hide();
		}, 1000);
	}
</script>
</body>
</html>