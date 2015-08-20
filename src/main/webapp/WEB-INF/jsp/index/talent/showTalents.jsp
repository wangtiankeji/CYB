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
    <title>找人才</title>
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
    <div data-role="none" data-theme="f" class="talent-header">
        <ul>
            <li class="talent-sort">综合排序</li>
            <li class="talent-screening">筛选</li>
            <li>
                <a href="${ctx }/talent/addTalentInit" data-ajax="false"><button type="button" data-role="none">发简历</button></a>
            </li>
        </ul>
        <!-- 综合排序下拉菜单-->
        <div class="talent-sort-drop" style="display: none">
            <ul>
                <li class="comprehensive-sort" id="talent-comprehensive-sort">综合排序<span></span></li>
                <li class="hot-sort" id="talent-hot-sort">热度排序<span></span></li>
            </ul>
        </div>
        <!-- 筛选下拉菜单-->
        <div class="talent-screen-drop"  style="display: none">
            <form action="">
                <ul>
                    <li>
                        <div class="screen-inner talent-inner-state">
                            <h2>人才定位</h2>
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
                        <div class="screen-inner location-inner-state">
                            <h2>所在地区 <span></span></h2>
                            <ul class="location">

                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="screen-inner talent-inner-button">
                            <button type="button" data-role="none">确定</button>
                        </div>
                    </li>
                </ul>
            </form>

        </div>
    </div>
    <div data-role="none" data-theme="f" class="project-content" id="wrapper">
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
<script src="${ctx}/js/common.js"></script>
<script type="text/javascript">
    
    $(document).ready(function() {
    	/* //alert(${personal})
    	var sendData = {eventType:"activity"};
    	/* if("${personal}"!=""){
    		sendData.personal = "${personal}";
    	} 
    	new IscrollPage({url:"${ctx}/index/talent/getTalents",data:sendData});
    	pullUpAction(); */
    	
    	gotoPage();
    });
	
    function gotoPage(sendData){
    	$("#thelist").empty();
    	new IscrollPage({url:"${ctx}/index/talent/getTalents",data:sendData});
    	pullUpAction();
    }
	function getLiStr(talent) {
		var content = '';
		content = content + '<li>';
		content = content + '    <a href="${ctx}/index/talent/getTalent/'+talent.talentId+'" data-ajax="false">';
		content = content + '        <div class="incubator-innerbox">';
		content = content + '            <div class="talent-left">';
		content = content + '                <img src="'+talent.talentImg+'" alt=""/>';
		content = content + '            </div>';
		content = content + '            <div class="talent-right">';
		content = content + '                <div>';
		content = content + '                    <h2>'+talent.nickname+'</h2>';
		content = content + '                    <span class="talent-state" style="font-size: 0.7rem;">'+talent.goal+'</span>';
		content = content + '                </div>';
		content = content + '                <div class="talent-location">';
		content = content + '                    <span>'+talent.workArea+'</span>';
		content = content + '                </div>';
		content = content + '                <p>'+talent.intro+'</p>';
		content = content + '                <div class="talent-label" >';
		content = content + '                    <ul>';
		content = content + '                        <li>大公司经验</li>';
		content = content + '                        <li>名校经历</li>';
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