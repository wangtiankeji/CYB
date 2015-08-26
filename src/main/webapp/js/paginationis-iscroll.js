
/**
 * 下拉刷新 
 * 
 */

var myScroll, pullUpEl, pullUpOffset,defaultsPage = {};
//var indexCurrentPage = 0;

var IscrollPage = function (params,callback){  
	 var defaults = {
			roleContent:"wrapper",  
			pageul:"thelist",
			data:{currentPage:0,pageSize:6}
	}
	 
	 //jQuery.extend(defaultsPage, defaults, params);
	defaultsPage = params || {};
	for (var def in defaults) {
		if (typeof defaultsPage[def] === 'undefined') {
			defaultsPage[def] = defaults[def];
		}
		else if (typeof defaultsPage[def] === 'object') {
			for (var deepDef in defaults[def]) {
				if (typeof defaultsPage[def][deepDef] === 'undefined') {
					defaultsPage[def][deepDef] = defaults[def][deepDef];
				}
			}
		}
	}
	
	if(jQuery.isFunction(callback)){
		defaultsPage.callback = callback;
	}

};  

/**
 * 滚动翻页 （自定义实现此方法）
 * myScroll.refresh();		// 数据加载完成后，调用界面更新方法
 */
function pullUpAction() {
	setTimeout(function() { // <-- Simulate network congestion, remove setTimeout from production!
		defaultsPage.data.currentPage = (defaultsPage.data.currentPage +1 );
		var content = "";
		$.ajax({
			type : "POST",
			dataType : "json",
			url : defaultsPage.url,
			data : defaultsPage.data,
			success : function(data) {
				$(data.objs).each(function(index, objs) {
					if(jQuery.isFunction(defaultsPage.callback)){
//					if(typeof(defaultsPage.callback) == "function"){
						content += defaultsPage.callback(objs);
					}else{
						content += getLiStr(objs);
					}
					
				});
				defaultsPage.data.currentPage = data.page.currentPage;
				$("#"+defaultsPage.pageul).append(content);
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
	if(!pullUpEl){
		return;
	}
	pullUpOffset = pullUpEl.offsetHeight;

	myScroll = new iScroll(
			defaultsPage.roleContent,
			{
				useTransition : true, //默认为true
				//useTransition: false, 
				//topOffset: pullDownOffset,
				onRefresh : function() {
					$(pullUpEl).hide();
					if (pullUpEl.className.match('loading')) {
						pullUpEl.className = '';
						pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多...';
					}
				},
				onScrollMove : function() {
					$(pullUpEl).show();
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

	document.getElementById(defaultsPage.roleContent).style.left = '0';
}

//初始化绑定iScroll控件 
document.addEventListener('touchmove', function(e) {
	e.preventDefault();
}, false);

//document.addEventListener('DOMContentLoaded', function () { setTimeout(loaded, 200); }, false);
document.addEventListener('DOMContentLoaded', loaded, false);

