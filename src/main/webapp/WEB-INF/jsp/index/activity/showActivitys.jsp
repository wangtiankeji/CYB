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
    	<div id="pullDown">
			<span class="pullDownIcon"></span><span class="pullDownLabel">Pull down to refresh...</span>
		</div>
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
			<span class="pullUpIcon"></span><span class="pullUpLabel">Pull up to refresh...</span>
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
    var myScroll,
	pullDownEl, pullDownOffset,
	pullUpEl, pullUpOffset,
	generatedCount = 0 ,indexCurrentPage = 1;

/**
 * 下拉刷新 （自定义实现此方法）
 * myScroll.refresh();		// 数据加载完成后，调用界面更新方法
 */
function pullDownAction () {
	setTimeout(function () {	// <-- Simulate network congestion, remove setTimeout from production!
		/*
		var el, li, i;
		el = document.getElementById('thelist');

		for (i=0; i<3; i++) {
			li = document.createElement('li');
			li.innerText = 'Generated row ' + (++generatedCount);
			el.insertBefore(li, el.childNodes[0]);
		}

		<li><a href="#">
				<img src="images/album-bb.jpg">
				<h2>Broken Bells</h2>
				<p>Broken Bells</p></a>
			</li>
		*/
		$.ajax({
			type : "POST",
			dataType: "json",
			url : "${ctx}/index/events/getIndexEvents",
			data : {currentPage:(indexCurrentPage+1)},
			success : function(data) {
				 //var obj = jQuery.parseJSON(data);
				 alert(data.page.currentPage);
				 //indexCurrentPage = obj.page.currentPage;
			}
		});

			var content = "";
			for (var i=1;i<3;i++){
				content = content + "<li>";
				content = content + "<a href=\"index2.html\">";
				content = content + "<img src=\"images/album-bb.jpg\" />";
				content = content + "<h2>";
				content = content + "下拉新增内容<br/>"+new Date();
				content = content + "</h2>";
				content = content + "<p>";
				content = content + "Broken Bells";
				content = content + "</p>";				
				content = content + "</a>";
				content = content + "</li>";
			}
			//$("#thelist").prepend(content).listview('refresh');
			$("#thelist").prepend(content);
		
		myScroll.refresh();		//数据加载完成后，调用界面更新方法   Remember to refresh when contents are loaded (ie: on ajax completion)
	}, 1000);	// <-- Simulate network congestion, remove setTimeout from production!
}

/**
 * 滚动翻页 （自定义实现此方法）
 * myScroll.refresh();		// 数据加载完成后，调用界面更新方法
 */
function pullUpAction () {
	setTimeout(function () {	// <-- Simulate network congestion, remove setTimeout from production!
		/*		
		var el, li, i;
		el = document.getElementById('thelist');

		for (i=0; i<3; i++) {
			li = document.createElement('li');
			li.innerText = 'Generated row ' + (++generatedCount);
			el.appendChild(li, el.childNodes[0]);
		}
		*/
		
		var content = "";
		for (var i=1;i<3;i++){
			content = content + "<li>";
			content = content + "<a href=\"#\">";
			content = content + "<img src=\"images/album-bb.jpg\" />";
			content = content + "<h2>";
			content = content + "下拉新增内容<br/>"+new Date();
			content = content + "</h2>";
			content = content + "<p>";
			content = content + "Broken Bells";
			content = content + "</p>";				
			content = content + "</a>";
			content = content + "</li>";
		}
		//$("#thelist").append(content).listview('refresh');
		$("#thelist").prepend(content);
		
		myScroll.refresh();		// 数据加载完成后，调用界面更新方法 Remember to refresh when contents are loaded (ie: on ajax completion)
	}, 1000);	// <-- Simulate network congestion, remove setTimeout from production!
}

/**
 * 初始化iScroll控件
 */
function loaded() {
	//清除所占的内存空间
	if(myScroll!=null){
		myScroll.destroy();
	}

	pullDownEl = document.getElementById('pullDown');
	pullDownOffset = pullDownEl.offsetHeight;
	pullUpEl = document.getElementById('pullUp');	
	pullUpOffset = pullUpEl.offsetHeight;
	
	myScroll = new iScroll('wrapper', {
		useTransition: true,    //默认为true
		//useTransition: false, 
		topOffset: pullDownOffset,
		onRefresh: function () {
			if (pullDownEl.className.match('loading')) {
				pullDownEl.className = '';
				pullDownEl.querySelector('.pullDownLabel').innerHTML = '下拉刷新...';
			} else if (pullUpEl.className.match('loading')) {
				pullUpEl.className = '';
				pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多...';
			}
		},
		onScrollMove: function () {
			if (this.y > 5 && !pullDownEl.className.match('flip')) {
				pullDownEl.className = 'flip';
				pullDownEl.querySelector('.pullDownLabel').innerHTML = '松手开始更新...';
				this.minScrollY = 0;
			} else if (this.y < 5 && pullDownEl.className.match('flip')) {
				pullDownEl.className = '';
				pullDownEl.querySelector('.pullDownLabel').innerHTML = '下拉刷新...';
				this.minScrollY = -pullDownOffset;
			} else if (this.y < (this.maxScrollY - 5) && !pullUpEl.className.match('flip')) {
				pullUpEl.className = 'flip';
				pullUpEl.querySelector('.pullUpLabel').innerHTML = '松手开始更新...';
				this.maxScrollY = this.maxScrollY;
			} else if (this.y > (this.maxScrollY + 5) && pullUpEl.className.match('flip')) {
				pullUpEl.className = '';
				pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多...';
				this.maxScrollY = pullUpOffset;
			}
		},
		onScrollEnd: function () {
			if (pullDownEl.className.match('flip')) {
				pullDownEl.className = 'loading';
				pullDownEl.querySelector('.pullDownLabel').innerHTML = '加载中...';				
				pullDownAction();	// Execute custom function (ajax call?)
			} else if (pullUpEl.className.match('flip')) {
				pullUpEl.className = 'loading';
				pullUpEl.querySelector('.pullUpLabel').innerHTML = '加载中...';				
				pullUpAction();	// Execute custom function (ajax call?)
			}
		}
	});
	
	document.getElementById('wrapper').style.left = '0'; 
}

//初始化绑定iScroll控件 
document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);

//document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);
document.addEventListener('DOMContentLoaded', loaded, false); 
</script>
</body>
</html>