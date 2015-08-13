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
    <div data-role="header" data-theme="f" class="ui-header-pcenter">
        <div class="pcenter-click">找项目</div>
        <div class="penter-item-bg" style="display:none">
            <ul class="pcenter-item">
                <li class="pcenter-item-active" targetType="project">找项目</li>
                <li >找人才</li>
                <li targetType="incubator">孵化器</li>
                <li>活动</li>
                <li>融资</li>
                <li>技术外包</li>
                <li>运营推广</li>
                <li>众筹平台</li>
            </ul>
        </div>
    </div>

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

$('.pcenter-click').click(function(){
    $('.penter-item-bg').slideDown('fast')
    $('.project-sort').css({'color':'#5cce49'});
   /*  pcenterSrc=$(this).css("background-image");
    pcenterArr=pcenterSrc.split("_");
    psrc=pcenterArr[0]+"_"+pcenterArr[1]+"_"+"up.png)";
    psrc2=pcenterArr[0]+"_"+pcenterArr[1]+"_"+"down.png)";
    $(this).css({'background-image':psrc});
    console.log(psrc); */
})

$('.pcenter-item li').click(function(){
	showConcerns($(this).attr("targetType"));
    $(this).addClass('pcenter-item-active').siblings().removeClass('pcenter-item-active');
    $('.penter-item-bg').slideUp('fast');
    //$('.pcenter-click').css({'background-image':psrc2});
    $('.pcenter-click').html($(this).text());
    //pIndex=$(this).index();
    //$('.ui-content-f4 ul').eq(pIndex).show().siblings().hide();
})

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
    	showConcerns("project");
    });
    
    function showConcerns(targetType){
    	if(targetType == undefined){
    		return
    	}
    	$("#thelist").empty();
    	var sendData = {targetType:targetType,concernType:"concern"};
    	var callback
    	if(targetType == "incubator"){
    		callback = getincubator;
    	}else if(targetType == "project"){
    		callback = getproject;
    	}
    	new IscrollPage({url:"${ctx}/concern/getConcerns",data:sendData},callback);
    	pullUpAction();
    }
    
    function getincubator(event){
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
    function getproject(project){
    	var content = '';
    	var newTime = new Date(project.createTime)
		content = content + '<li>';
		content = content + '    <a href="${cxt}/index/project/getProject/'+ project.projectId +'">';
		content = content + '        <div class="incubator-innerbox">';
		content = content + '            <div class="project-left">';
		content = content + '                <img src="${cxt}/img/pcenter-pic-i.jpg" alt=""/>';
		content = content + '            </div>';
		content = content + '            <div class="project-right">';
		content = content + '                <div>';
		content = content + '                    <h2>'+project.projectName+'</h2>';
		content = content + '                    <span class="project-state">已上线</span>';
		content = content + '                </div>';
		content = content + '                <div class="project-location">';
		content = content + '                    <span>'+project.projectArea+'</span>';
		content = content + '                    <span><b>'+ newTime.format("MM月dd日")+'</b>发布</span>';
		content = content + '                </div>';
		content = content + '                <p>'+project.projectIntro+'</p>';
		content = content + '                <div class="project-label">';
		content = content + '                    <ul>';
		content = content + '                        <li>有市场</li>';
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