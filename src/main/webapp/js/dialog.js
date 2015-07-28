/**
 * 
 */

var pubDialog;
var openDialog = function (obj) {
	pubDialog = $.dialog({
		title : obj.title,
		width : '380px',
		height : '350px',
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

