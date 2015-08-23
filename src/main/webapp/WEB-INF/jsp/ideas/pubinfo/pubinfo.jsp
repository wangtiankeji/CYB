<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>创客邦</title>


<%@ include file="../../common/head.jsp"%>
<script type="text/javascript"
	src="${ctx}/js/validationEngine/jquery.validationEngine.js"></script>
<script type="text/javascript"
	src="${ctx}/js/validationEngine/jquery.validationEngine-zh_CN.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>

<script type="text/javascript">

	var api = frameElement.api, W = api.opener;

	function savePubinfo() {
		if ($("#pubinfoForm").validationEngine("validate")) {
			saveOrUdateUser("addPubinfo");
		}
	}
	function updatePubinfo() {
		if ($("#pubinfoForm").validationEngine("validate")) {
			saveOrUdateUser("updatePubinfo");
		}
	}
	
	function saveOrUdateUser(method) {
		$.ajax({
			type : "POST",
			url : "${ctx}/pubinfo/" + method,
			data : $("#pubinfoForm").serialize(),
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
		
		$("#pubinfoForm").validationEngine({
			scroll : false,
			//binded:false,
			showArrow : false,
			showOneMessage : true
		//addPromptClass:"formError-noArrow formError-text"
		}); 
		
		//选择文件之后执行上传  
		$("#fileToUpload").on("change",	function() {
					$.ajaxFileUpload({
								url : "${ctx}/con/upload",
								secureuri : false,
								fileElementId : 'fileToUpload',//file标签的id  
								dataType : 'json',//返回数据的类型  
								data : {
									fileType : "pubinfo"
								},//一同上传的数据  
								success : function(data, status) {
									//把图片替换  
									var obj = jQuery.parseJSON(data);
									if (typeof (obj.status) != "undefined") {
										if (obj.status == "success") {
											$("#noticeStr").text(obj.filePath);
										} else {
											alert(obj.msg);
										}
									}

								},
								error : function(data, status, e) {
									alert(e);
								}
							});
				});
		
	})
	
</script>
</head>

<body>
<div >
<form id="pubinfoForm" action="" method="POST" >
		<table style="margin-left: 20Px;">
			<tr>
				<td align="right">信息类型:</td>
				<td><input type="text" id="type" name="type" 
					value="${pubinfo.type }" class="validate[required,maxSize[30]]"/>
					<input type="hidden" name="infoId" value="${pubinfo.infoId }"/>
			</tr>
			<tr>
				<td align="right">关键字:</td>
				<td><input type="text" id="valueKey" name="valueKey" value="${pubinfo.valueKey }" class="validate[required,maxSize[50]]"/></td>
			</tr>
			<tr>
				<td align="right">关键字名称:</td>
				<td><input type="text" id="keyName" name="keyName" value="${pubinfo.keyName }" class="validate[required,maxSize[50]]"/></td>
			</tr>
			<tr>
				<td align="right">显示内容:</td>
				<td><textarea rows="8" cols="30" name="noticeStr" id="noticeStr" class="validate[maxSize[500]]">${pubinfo.noticeStr}</textarea>
				</td>
			</tr>
			<tr>
				<td align="right">图片上传:</td>
				<td><input id="fileToUpload" type="file" name="upfile" ></td>
			</tr>
		</table>
	</form>

</div>
	
	
</body>

</html>