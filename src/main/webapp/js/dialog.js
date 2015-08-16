/**
 * 
 */

var pubDialog;
var openDialog = function (obj) {
	pubDialog = $.dialog({
		title : obj.title,
		width : obj.width==undefined?'380px':obj.width,
		height : obj.height==undefined?'350px':obj.height,
		content : 'url:' + obj.url,
		button : [ {
			name : '确定',
			callback : function() {
				func = "pubDialog.content."+obj.callback;
				if (typeof(eval(func)) == "function") {
					eval(func)();
				}
				return false;
			},
			focus : true
		} ],
		cancelVal : '关闭',
		cancel : true
	});
}

