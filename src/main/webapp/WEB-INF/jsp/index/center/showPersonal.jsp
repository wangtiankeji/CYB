<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
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
<!-- 个人中心首页-->
<div data-role="page" data-theme="f" class="ui-body-f" id="page-pcenter">
    <div data-role="header" data-theme="f" class="pcenter-header">
        <div class="pcenter-pic">
            <a href="#"><img src="${user.userAddress}" alt=""/></a>
        </div>
        <div style="display: none"><input id="fileToUpload" style="display: none" type="file" name="upfile"></div>
        
        <p id="pcenter-tel">${user.loginName }</p>
    </div>
    <div data-role="content" data-theme="f" class="ui-content-f3">
        <ul>
            <li class="pcenter-tietm-bg1"><a href="${ctx}/concern/showConcerns" data-ajax=“false” data-transition="slide">我的收藏<span></span></a></li>
            <li class="pcenter-tietm-bg3"><a href="${ctx}/index/event/showIndexEvents/activity/?concernType=signup" data-ajax=“false”  data-transition="slide">我的活动<span></span></a></li>
            <li class="pcenter-tietm-bg4"><a href="#pcenter-complaint" data-transition="slide">平台投诉<span></span></a></li>
            <li class="pcenter-tietm-bg5"><a href="#pcenter-policy" data-transition="slide">平台政策<span></span></a></li>
            <li class="pcenter-tietm-bg6"><a href="#pcenter-password" data-transition="slide">修改密码<span></span></a></li>
        </ul>
    </div>
    <div data-role="footer" data-theme="f" class="ui-footer-f pcenter-footer">
        <p>创客邦科技（北京）有限公司</p>
    </div>
</div>

<!--平台投诉-->
<div data-role="page" data-theme="f" class="ui-body-f" id="pcenter-complaint">
    <div data-role="content" data-theme="f" class="complaint-text">
        <form action="" method="post" class="complaint-form">
            <textarea maxlength="400" placeholder="请输入您的投诉信息……" data-role="none" class="conplaint-text-area"></textarea>
            <button type="button" data-role="none">发送</button>
            <span class="word-limit">0/200 字</span>
        </form>
    </div>
</div>

<!--平台政策-->
<div data-role="page" data-theme="f" class="ui-body-f" id="pcenter-policy">
    <div data-role="content" data-theme="f" class="plolicy-content">
        <h2>创业邦平台政策</h2>
    </div>
    <h3>客服电话：400-0987-0987</h3>
</div>

<!--修改密码-->
<div data-role="page" id="pcenter-password" data-theme="f">
    <div data-role="content" data-theme="f" class="ui-content-f5">
        <form id="passwordForm" action="" method="post">
            <div class="changepassword-content">
                <ul>
                    <li><input type="password" name="oldPassword"class="oldpassword" data-role="none" placeholder="密码"/></li>
                    <li class="newpassword2"><input type="password" name="newPassword" class="newpassword" data-role="none" placeholder="新密码"/></li>
                    <li><input type="password" name="re-newpassword" class="re-newpassword" data-role="none" placeholder="再次输入新密码"/></li>
                </ul>
            </div>
            <button type="button" data-role="none" class="btn-changeNum">提交</button>
            <div class="changepassword-format error" style="display: none"><p>两次输入的密码不一致</p></div>
            <div class="oldpassword-format error" style="display: none"><p>密码不正确</p></div>
        </form>
    </div>
</div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(document).bind("mobileinit", function() {
    //disable ajax nav
    $.mobile.ajaxEnabled=false
}); 
</script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/iscroll.js"></script>
<script src="${ctx}/js/dateutil.js"></script>
<script src="${ctx}/js/paginationis-iscroll.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>
<script type="text/javascript">
//手机号加密
var telnumber=$("#pcenter-tel").html();
var telnumber2=telnumber.substring(0,3)+"****"+telnumber.substring(7,11);
$("#pcenter-tel").html(telnumber2);


//修改密码两次输入前端验证
$('.btn-changeNum').click(function(){
	//alert($(".oldpassword").val())
	if($(".oldpassword").val()==""){
		showTib("旧密码不能为空");
		return false;
	}
	if($(".newpassword").val()==""||$(".re-newpassword").val()==""){
		showTib("新密码不能为空");
		return false;
	}
	
    if(!($(".newpassword").val()==$(".re-newpassword").val())){
    	showTib("两次输入的密码不一致");
        return false;
    }
    updatePassword();
});

function showTib(title){
	$(".changepassword-format").find("p").text(title);
	clearTimeout(timer);
    $(".changepassword-format").show();
    var timer=setTimeout(function(){
        $(".changepassword-format").hide();
    },1000)
}
function updatePassword() {
	$.ajax({
		type : "POST",
		url : "${ctx}/system/user/updatePassword",
		data : $("#passwordForm").serialize(),
		success : function(msg) {
			if (msg == 'success') {
				alert('提交成功！');
				$("input[type=password]").val("");
			} else {
				alert(msg);
			}

		}
	});
}

$(".pcenter-pic").click(function() {
	$("#fileToUpload").click();
});

//选择文件之后执行上传  
$("#fileToUpload").on(
		"change",
		function() {
			$.ajaxFileUpload({
				url : "${ctx}/con/upload",
				secureuri : false,
				fileElementId : 'fileToUpload',//file标签的id  
				dataType : 'json',//返回数据的类型  
				data : {
					fileType : "personal"
				},//一同上传的数据  
				success : function(data, status) {
					//把图片替换  
					var obj = jQuery.parseJSON(data);
					if (typeof (obj.status) != "undefined") {
						if (obj.status == "success") {
							$(".pcenter-pic img").attr("src","${ctx}" + obj.filePath);
							saveUserImg(obj.filePath);
						} else {
							alert(obj.msg);
						}
					}

				},
				error : function(data, status, e) {
					alert(e);
				}
			});
		});
    function saveUserImg(imgpath){
    	$.ajax({
    		type : "POST",
    		url : "${ctx}/system/user/updateUserImg",
    		data : {imgPath:imgpath},
    		success : function(msg) {

    		}
    	});
    }
</script>
</body>
</html>