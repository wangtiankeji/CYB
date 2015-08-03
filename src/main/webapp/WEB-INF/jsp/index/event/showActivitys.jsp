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
    <div data-role="header" data-theme="f" class="pecenter-ac-header">
        <ul>
            <li class="activity-active">创客活动</li>
            <li >
            <c:choose><c:when test="${personal == 'my'}">
            <a href="${ctx}/index/event/showIndexEvents/train?personal=my" data-ajax=“false”><span></span>创客培训</a>
            </c:when><c:otherwise>
            <a href="${ctx}/index/event/showIndexEvents/train" data-ajax=“false”><span></span>创客培训</a>
            </c:otherwise> </c:choose>
            </li>
        </ul>
    </div>

		<div data-role="content" data-theme="f" class="pcenter-ac-content"
			id="wrapper">
			<div id="scroller">
				<ul class="activity-box" id="thelist">
				</ul>
				<div id="pullUp">
					<span class="pullUpIcon"></span><span class="pullUpLabel">上拉加载更多...</span>
				</div>
			</div>
		</div>
		
		
	</div>



<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
/* $(document).bind("mobileinit", function(){
　$.extend( $.mobile , {
	loadingMessageTextVisible = true;
	showPageLoadingMsg("a", "加载中..." );
	pageLoadErrorMessage:'努力加载中。。。'
　});
}); */
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
    //创客活动《=》创客培训 切换代码
    $('.train-box').hide();
    $('.pecenter-ac-header li').click(function(){
        var index=$(this).index();
        console.log(index);
        $(this).addClass('activity-active').siblings().removeClass('activity-active');
        $(".pcenter-ac-content ul").eq(index).show().siblings().hide();
    })
    //报名部分
    $('.ac-mask').hide();
    $('.ac-details-re').click(function(){
        $('.ac-mask').show();
    });
    $('.mask-close').click(function(){
        $('.ac-mask').hide();
    });
    
    $(document).ready(function() {
    	//alert(${personal})
    	var sendData = {eventType:"activity"};
    	if("${personal}"!=""){
    		sendData.personal = "${personal}";
    	}
    	new IscrollPage({url:"${ctx}/index/event/getIndexEvents",data:sendData});
    	pullUpAction();
    });
    
	

	function getLiStr(events) {
		var content = '';
		var newTime = new Date(events.eventTime)
		content = content + '<li>';
		content = content
				+ '<a href="${ctx }/index/event/getIndexEvent/activity/'+ events.eventId +'" data-transition="slide" data-ajax=“false”> ';
		content = content + '<div class="act-item-left">';
		content = content + '<img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>';
		content = content + '</div>';
		content = content + '<div class="act-item-right">';
		content = content + '<h2>' + events.eventName + '</h2>';
		content = content + '<div class="act-item-box">';
		content = content + '<p>时间 <span>'+ newTime.format("MM月dd日 HH:mm")+'</span></p>';
		//content = content + '<p>时间 <span>'+(newTime.getMonth()+1) +'月'+newTime.getDate()+'日 '+newTime.getHours()+':'+ newTime.getMinutes()+'</span></p>';
		//content = content + '<p>时间 <span>' + events.eventTime + '</span></p>';
		content = content + '<p>地点 ' + events.eventAddress + '</p>';
		content = content + '</div>';
		content = content + '<div class="act-item-box2">';
		content = content + '<span>' + ((events.concernCount==null)?0:events.concernCount) + '</span>人报名';
		content = content + '</div>';
		content = content + '</div>';
		content = content + ' </a>';
		content = content + '</li>';
		return content;
	}
	
    
</script>
</body>
</html>