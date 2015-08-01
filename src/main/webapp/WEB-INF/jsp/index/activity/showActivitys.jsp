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
            <li><span></span>创客培训</li>
        </ul>
    </div>
	
    <div data-role="content" data-theme="f" class="pcenter-ac-content"  id="wrapper">
    <div id="scroller">
        <ul class="activity-box" id="thelist">
            <li>
                <a href="${ctx }/index/events/getIndexEvents/activity/1" data-transition="slide" data-ajax=“false”> 
                <div class="act-item-left">
                    <img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>
                             </div>
                <div class="act-item-right">
                    <h2>创客活动放风筝</h2>
                    <div class="act-item-box">
                        <p>时间 <span>5月12日 14:00</span></p>
                        <p>地点 北京天安门广场北京天安门广场</p>
                    </div>
                    <div class="act-item-box2">
                        <span>56</span>人报名
                    </div>
                </div>
             </a>
            </li>
            <li>
                <a href="#activity-details" data-transition="slide">
                    <div class="act-item-left">
                        <img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>
                    </div>
                    <div class="act-item-right">
                        <h2>创客活动放风筝</h2>
                        <div class="act-item-box">
                            <p>时间 <span>5月12日 14:00</span></p>
                            <p>地点 北京天安门广场北京天安门广场</p>
                        </div>
                        <div class="act-item-box2">
                            <span>56</span>人报名
                        </div>
                    </div>
                </a>
            </li>
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
</script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/iscroll.js"></script>
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
    
    
   
	/**
	 * 下拉刷新 
	 * 
	 */
	var myScroll, pullUpEl, pullUpOffset;

	var indexCurrentPage = 0;
	/**
	 * 滚动翻页 （自定义实现此方法）
	 * myScroll.refresh();		// 数据加载完成后，调用界面更新方法
	 */
	function pullUpAction() {
		setTimeout(function() { // <-- Simulate network congestion, remove setTimeout from production!

			var content = "";
			$.ajax({
				type : "POST",
				dataType : "json",
				url : "${ctx}/index/events/getIndexEvents",
				data : {
					currentPage : (indexCurrentPage + 1)
				},
				success : function(data) {
					$(data.events).each(function(index, events) {
						//alert(events.eventName);
						content += getLiStr(events);
					});
					indexCurrentPage = data.page.currentPage;
					$("#thelist").append(content);
				}
			});
			//$("#thelist").append(content).listview('refresh');

			myScroll.refresh(); // 数据加载完成后，调用界面更新方法 Remember to refresh when contents are loaded (ie: on ajax completion)
		}, 1000); // <-- Simulate network congestion, remove setTimeout from production!
	}

	/**
	 * 初始化iScroll控件
	 */
	function loaded() {
		//清除所占的内存空间
		if (myScroll != null) {
			myScroll.destroy();
		}

		pullUpEl = document.getElementById('pullUp');
		pullUpOffset = pullUpEl.offsetHeight;

		myScroll = new iScroll(
				'wrapper',
				{
					useTransition : true, //默认为true
					//useTransition: false, 
					//topOffset: pullDownOffset,
					onRefresh : function() {
						if (pullUpEl.className.match('loading')) {
							pullUpEl.className = '';
							pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多...';
						}
					},
					onScrollMove : function() {
						if (this.y < (this.maxScrollY - 5)
								&& !pullUpEl.className.match('flip')) {
							pullUpEl.className = 'flip';
							pullUpEl.querySelector('.pullUpLabel').innerHTML = '松手开始更新...';
							this.maxScrollY = this.maxScrollY;
						} else if (this.y > (this.maxScrollY + 5)
								&& pullUpEl.className.match('flip')) {
							pullUpEl.className = '';
							pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多...';
							this.maxScrollY = pullUpOffset;
						}
					},
					onScrollEnd : function() {
						if (pullUpEl.className.match('flip')) {
							pullUpEl.className = 'loading';
							pullUpEl.querySelector('.pullUpLabel').innerHTML = '加载中...';
							pullUpAction(); // Execute custom function (ajax call?)
						}
					}
				});

		document.getElementById('wrapper').style.left = '0';
	}

	//初始化绑定iScroll控件 
	document.addEventListener('touchmove', function(e) {
		e.preventDefault();
	}, false);

	//document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);
	document.addEventListener('DOMContentLoaded', loaded, false);

	
	// 对Date的扩展，将 Date 转化为指定格式的String   
    // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，   
    // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)   
    // 例子：   
    // (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423   
    // (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18   
    Date.prototype.format = function(fmt)   
    { //author: meizz   
      var o = {   
        "M+" : this.getMonth()+1,                 //月份   
        "d+" : this.getDate(),                    //日   
        "H+" : this.getHours(),                   //小时   
        "m+" : this.getMinutes(),                 //分   
        "s+" : this.getSeconds(),                 //秒   
        "q+" : Math.floor((this.getMonth()+3)/3), //季度   
        "S"  : this.getMilliseconds()             //毫秒   
      };   
      if(/(y+)/.test(fmt))   
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
      for(var k in o)   
        if(new RegExp("("+ k +")").test(fmt))   
      fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
      return fmt;   
    }  
    
	function getLiStr(events) {
		var content = '';
		var newTime = new Date(events.eventTime)
		content = content + '<li>';
		content = content
				+ '<a href="${ctx }/index/events/getIndexEvents/activity/'+ events.eventId +'" data-transition="slide" data-ajax=“false”> ';
		content = content + '<div class="act-item-left">';
		content = content + '<img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>';
		content = content + '</div>';
		content = content + '<div class="act-item-right">';
		content = content + '<h2>' + events.eventName + '</h2>';
		content = content + '<div class="act-item-box">';
		content = content + '<p>时间 <span>'+ newTime.format("MM月dd日 HH:mm")+'</span></p>';
		//content = content + '<p>时间 <span>'+(newTime.getMonth()+1) +'月'+newTime.getDate()+'日 '+newTime.getHours()+':'+ newTime.getMinutes()+'</span></p>';
		//content = content + '<p>时间 <span>' + events.eventTime + '</span></p>';
		content = content + '<p>地点 ' + events.eventDes + '</p>';
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