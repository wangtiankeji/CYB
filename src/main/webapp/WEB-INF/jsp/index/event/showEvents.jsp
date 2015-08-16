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
<!--我的活动-->
<div data-role="page" data-theme="f" class="ui-body-f" id="activity">

		<div data-role="content" data-theme="f" class="pcenter-ac-content"
			id="wrapper">
				<ul class="activity-box" id="thelist">
				</ul>
				<div id="pullUp">
					<span class="pullUpIcon"></span><span class="pullUpLabel">上拉加载更多...</span>
				</div>
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
<script type="text/javascript">
        
    $(document).ready(function() {
    	
    	var sendData = {};
    	if("${concernType}"!=""){
    		sendData.concernType = "${concernType}";
    		sendData.targetType = "${targetType}";
    	}else{
    		sendData.eventType = "${targetType}";
    	}
    	new IscrollPage({url:"${ctx}/index/event/getIndexEvents",data:sendData});
    	pullUpAction();
    });
    
	

	function getLiStr(event) {
		var content = '';
		content = content + '<li>';
		content = content + '    <a href="${ctx }/index/event/getIndexEvent/incubator/'+ event.eventId +'" data-transition="slide">';
		content = content + '        <div class="incubator-innerbox">';
		content = content + '            <div class="incubator-left">';
		content = content + '                <img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>';
		content = content + '            </div>';
		content = content + '            <div class="incubator-right">';
		content = content + '                <h2>'+event.eventName+'</h2>';
		content = content + '                <p>浏览量 <b>'+event.hits+'</b></p>';
		content = content + '                <div>';
		content = content + '                    <span>'+event.eventAddress+'</span>';
		content = content + '                    <span>电话询问次数 <b>'+event.callNum+'</b></span>';
		content = content + '                </div>';
		content = content + '            </div>';
		content = content + '        </div>';
		content = content + '    </a>';
		content = content + '</li>';
		
		return content;
	}
	
    
</script>
</body>
</html>