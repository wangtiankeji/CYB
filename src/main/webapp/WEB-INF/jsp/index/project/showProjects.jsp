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
<!--项目列表-->
<div data-role="page" data-theme="f" class="ui-body-f">
    <div data-role="none" data-theme="f" class="project-header">
        <ul>
            <li class="project-sort">综合排序</li>
            <li class="project-screening">筛选</li>
            <li>
                <a href="${ctx}/index/project/addInit" data-ajax="false"><button type="button" data-role="none">发项目</button></a>
            </li>
        </ul>
        <div class="project-sort-drop" style="display: none">
            <ul>
                <li class="comprehensive-sort">综合排序<span></span></li>
                <li class="time-sort">时间排序<span></span></li>
                <li class="hot-sort">热度排序<span></span></li>
            </ul>
        </div>
        <div class="project-screen-drop">
            <form action="">
                <ul>
                    <li>
                        <div class="screen-inner project-inner-state">
                            <h2>项目状态</h2>
                            <ul>
                                <li class="screen-active">全部</li>
                                <li>想法</li>
                                <li>开发中</li>
                                <li>已上线</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="screen-inner location-inner-state">
                            <h2>所在地区 <span></span></h2>
                            <ul class="location">

                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="screen-inner time-inner-state">
                            <h2>发布时间</h2>
                            <ul>
                                <li class="screen-active">全部</li>
                                <li>近一周</li>
                                <li>近一月</li>
                                <li>近三月</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="screen-inner partner-inner-state">
                            <h2>需求合伙人</h2>
                            <ul>
                                <li class="screen-active">全部</li>
                                <li>技术</li>
                                <li>营销</li>
                                <li style="margin-right:0;">运营</li>
                                <li>设计</li>
                                <li>产品</li>
                                <li>其他</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="screen-inner project-inner-button">
                            <button type="button" data-role="none">确定</button>
                        </div>
                    </li>
                </ul>
            </form>

        </div>
    </div>
    <div data-role="none" data-theme="f" class="project-content" id="wrapper">
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
$(document).bind("mobileinit", function() {
    //disable ajax nav
    $.mobile.ajaxEnabled=false
}); 
</script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/iscroll.js"></script>
<script src="${ctx}/js/dateutil.js"></script>
<script src="${ctx}/js/paginationis-iscroll.js"></script>
<script src="${ctx}/js/common.js"></script>
<script type="text/javascript">
    
    $(document).ready(function() {
    	//alert(${personal})
    	var sendData = {eventType:"activity"};
    	/* if("${personal}"!=""){
    		sendData.personal = "${personal}";
    	} */
    	new IscrollPage({url:"${ctx}/index/project/getProjects",data:sendData});
    	pullUpAction();
    });
    
	

	function getLiStr(project) {
		var content = '';
		content = content + '<li>';
		content = content + '    <a href="#">';
		content = content + '        <div class="incubator-innerbox">';
		content = content + '            <div class="project-left">';
		content = content + '                <img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>';
		content = content + '            </div>';
		content = content + '            <div class="project-right">';
		content = content + '                <div>';
		content = content + '                    <h2>北京望京西SOHO二期项目进行中</h2>';
		content = content + '                    <span class="project-state">已上线</span>';
		content = content + '                </div>';
		content = content + '                <div class="project-location">';
		content = content + '                    <span>北京朝阳</span>';
		content = content + '                    <span><b>5月12日</b>发布</span>';
		content = content + '                </div>';
		content = content + '                <p>一句话介绍，这是项目的一句话介绍,是一句话的介绍</p>';
		content = content + '                <div class="project-label">';
		content = content + '                    <ul>';
		content = content + '                        <li>有市场</li>';
		content = content + '                        <li>前景好</li>';
		content = content + '                        <li>创业</li>';
		content = content + '                    </ul>';
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