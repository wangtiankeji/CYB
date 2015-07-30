<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>创客邦</title>

<%@ include file="../../common/head.jsp"%>

<script type="text/javascript" src="${ctx}/js/validationEngine/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${ctx}/js/validationEngine/jquery.validationEngine-zh_CN.js"></script>
<link rel="stylesheet" href="${ctx}/js/validationEngine/css/validationEngine.jquery.css" type="text/css">
<script type="text/javascript" src="${ctx}/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>

<script type="text/javascript">

	var api = frameElement.api, W = api.opener;

	function saveEvents() {
		if ($("#eventsForm").validationEngine("validate")) {
			saveOrUdateUser("addEvents");
		}
	}
	function updateEvents() {
		if ($("#eventsForm").validationEngine("validate")) {
			saveOrUdateUser("updateEvents");
		}
	}
	
	function saveOrUdateUser(method) {
		$.ajax({
			type : "POST",
			url : "${ctx}/events/" + method,
			data : $("#eventsForm").serialize(),
			success : function(msg) {
				if (msg == 'success') {
					alert('提交成功！');
					W.pubDialog.time(0.1);
				} else {
					alert(msg);
				}

			}
		});
	}

	$(document).ready(function() {
		$("#eventsForm").validationEngine({
			scroll : false,
			//binded:false,
			showArrow : false,
			showOneMessage : true
		//addPromptClass:"formError-noArrow formError-text"
		});
	});
	
	
	function display() {
		WdatePicker({
			dateFmt : 'yyyy-MM-dd HH:mm'
		});
	}
	
</script>
</head>

<body>
<div >
<form id="eventsForm" action="" method="POST" >
		<table style="margin-left: 20Px;">
			<tr>
				<td align="right">名称:</td>
				<td><input type="text" id="eventName" name="eventName" 
					value="${events.eventName }" class="validate[required,maxSize[30]]"/>
					<input type="hidden" name="eventId" value="${events.eventId }"/></td>
			</tr>
			<tr>
				<td align="right">类型:</td>
				<td><select name="eventType" id="eventType" class="validate[required]">
				<option value="incubator">孵化器</option>
				<option value="activity">活动</option>
				<option value="train">培训</option>
				</select>
				</td>
			</tr>
			<tr>
				<td align="right">图片:</td>
				<td><input type="text" id="eventImg" name="eventImg" 
					value="${events.eventImg }" style="display: none;" />
					<img id="upload" alt="" style="width: 200px; height: 200px" 
					<c:choose><c:when test="${empty events.eventImg }">src="${ctx}/img/btn_project_pre.png"</c:when><c:otherwise>src="${ctx}${events.eventImg }"</c:otherwise></c:choose> />
							<input id="fileToUpload" style="display: none" type="file" name="upfile">
      			</td>
			</tr>
			<tr>
				<td align="right">活动时间:</td>
				<td><input type="text" id="eventTime" name="eventTime" 
					value="<fmt:formatDate value="${events.eventTime}" pattern="yyyy-MM-dd HH:mm"/>" class="Wdate" onclick="display()"/></td>
			</tr>
			<tr>
				<td align="right">活动地址:</td>
				<td><input type="text" id="eventAddress" name="eventAddress" 
					value="${events.eventAddress }" /></td>
			</tr>
			<tr>
				<td align="right">联系电话:</td>
				<td><input type="text" id="eventTel" name="eventTel" class="validate[custom[number]]"
					value="${events.eventTel }" /></td>
			</tr>
			<tr>
				<td align="right">培训费用:</td>
				<td><input type="text" id="eventCost" name="eventCost" class="validate[custom[number]]"
					value="${events.eventCost }" /></td>
			</tr>
			<tr>
				<td align="right">是否认证:</td>
				<td>已认证<input type="radio" id="auth" name="auth" value="certified" 
				 <c:if test="${events.auth == 'certified'}">checked="checked"</c:if> />
				未认证<input type="radio" id="auth" name="auth" value="uncertifie"
				<c:if test="${events.auth == 'uncertifie'}">checked="checked"</c:if>/></td>
			</tr>
			<tr>
				<td align="right">是否有效:</td>
				<td>已发布<input type="radio" id="enable" name="enable" value="enable" 
				<c:if test="${events.enable == 'enable'}">checked="checked"</c:if>/>
				未发布<input type="radio" id="enable" name="enable" value="unable"
				<c:if test="${events.enable == 'unable'}">checked="checked"</c:if> /></td>
			</tr>
			<tr>
				<td align="right">发布者:</td>
				<td><input type="text" id="provider" name="provider" value="${events.provider }"/></td>
			</tr>
			<tr>
				<td align="right">显示内容:</td>
				<td><textarea rows="10" cols="25" name="eventDes" id="eventDes" class="validate[maxSize[500]]">${events.eventDes}</textarea>
				</td>
			</tr>
		</table>
	</form>

</div>
	<script type="text/javascript">
	$(function(){  
	    //点击打开文件选择器  
	    $("#upload").on("click", function() {  
	        $("#fileToUpload").click();  
	    });  
	      
	    //选择文件之后执行上传  
	    $('#fileToUpload').on('change', function() {  
	        $.ajaxFileUpload({  
	            url:"${ctx}/con/upload",  
	            secureuri:false,  
	            fileElementId:'fileToUpload',//file标签的id  
	            dataType: 'json',//返回数据的类型  
	            data:{fileType:"activity"},//一同上传的数据  
	            success: function (data, status) {  
	                //把图片替换  
	                var obj = jQuery.parseJSON(data);  
	                if(typeof(obj.status) != "undefined") {  
	                    if(obj.status == "success") {  
	                    	$("#eventImg").val("${ctx}"+obj.filePath);
	     	                $("#upload").attr("src", "${ctx}"+obj.filePath);  
	                    } else {  
	                        alert(obj.msg);  
	                    }  
	                }
	               
	            },  
	            error: function (data, status, e) {  
	                alert(e);  
	            }  
	        });  
	    });  
	      
	});  
    </script>
	
</body>

</html>