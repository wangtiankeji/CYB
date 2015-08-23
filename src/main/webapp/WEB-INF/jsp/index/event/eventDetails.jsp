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
<!--活动详情页-->
    <div id="financing-details" data-role="page" data-theme="f" class="ui-body-f">
        <div class="common-bg">
            <img src="${ctx }/img/incubator-header.jpg" alt=""/>
            <div class="incubator-innerbox incubator-title">
                <h2>${event.eventName }</h2>
                <div>
                    <span>${event.eventAddress }</span>
                    <span class="pageview">浏览量 <b>${event.hits }</b></span>
                    <span>电话询问次数 <b>${event.callNum }</b></span>
                </div>
            </div>

        </div>
        <div class="common-bg">
            <div class="incubator-det-item">
                <div class="incubator-innerbox">
                    <h3><c:if test="${event.eventType == 'incubator'  }">孵化器</c:if><c:if test="${event.eventType == 'financing'}">融资</c:if><c:if test="${event.eventType == 'skill'}">技术外包</c:if><c:if test="${event.eventType == 'operate'}">运营推广</c:if><c:if test="${event.eventType == 'crowdfunding'}">众筹平台</c:if>简介</h3>
                    <p>${event.eventDes }</p>
                </div>
            </div>
            <div class="common-bg">
                <div class="incubator-innerbox">
                    <h3>联系我们</h3>
                    <ul class="incubator-concat">
                        <li>电话：${event.eventTel }</li>
                        <li>网址：${event.website }</li>
                        <li>邮箱：${event.email }</li>
                        <li>微信：${event.weixin }</li>
                        <li>微博：${event.weibo }</li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="common-foot">
            <ul>
                <li>
                    <a href="#" id="concern"><span>已收藏 (<b id="concernCount">${event.concernCount }</b>)</span><i class="div-line"></i></a>
                </li>
                <li>
                    <a href="tel:${event.eventTel }" id="callNum">电话：<b>${event.eventTel }</b></a>
                </li>
            </ul>
        </div>
    </div>
    
<script type="text/javascript" src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="${ctx}/js/swiper.min.js"></script>
<script type="text/javascript" src="${ctx}/js/concern.js"></script>
    <script type="text/javascript">
    $("#callNum").click(function() {
    	$.ajax({
			type : "POST",
			url : "${ctx}/index/event/addCallNum",
			data : {eventId:${event.eventId }},
			success : function(msg) {
				
			}
		});
    });
        $("#concern").click(function() {
        	addConcern({bNumId:"concernCount",targetId:${event.eventId },
        		url:"${ctx}/concern/addConcern",concernType:"concern",targetType:"${event.eventType}"});
    	});
    </script>

</body>
</html>