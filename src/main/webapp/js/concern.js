/**
 * 
 */

function addConcern(_obj){
	var concernNum = $("#"+_obj.bNumId).text();
	$.ajax({
		type : "POST",
		url : _obj.url,
		data : {targetId:_obj.targetId,concernType:_obj.concernType,targetType:_obj.targetType},
		success : function(msg) {
			if (msg == 'success') {
				alert("收藏成功");
				$("#"+_obj.bNumId).text((parseInt(concernNum)+1))
			} else if(msg == 'cancel'){
				$("#"+_obj.bNumId).text((concernNum-1))
				alert("取消收藏成功");
			} else if(msg == "unlogin"){
				alert("未登录，请先登录");
				window.location.href = ctx+"/indexLoginInit?lastUrl="+window.location.pathname;
			}else{
				alert(msg);
			}
		}
	});
}