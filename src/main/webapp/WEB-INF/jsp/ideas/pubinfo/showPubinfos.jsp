<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>志晴CRM</title>

<%@ include file="../../common/head.jsp"%>

<link rel="stylesheet" href="${ctx}/css/pagination.css" type="text/css">
<script type="text/javascript" src="${ctx}/js/jquery.pagination.js"></script>
<script type="text/javascript" src="${ctx}/js/pagination.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		var searchData = {state:'enable'};
		searchPage("${ctx}/pubinfo/getPubinfos",searchData);
		trCss();
	});

	function search() {
		searchPage("${ctx}/pubinfo/getPubinfos",$("#pubinfoForm").serialize());
	}

	function trCss() {
		$(".list_table tr").live("mouseover", function() {
			$(this).addClass("tr3");
		});
		$(".list_table tr").live("mouseout", function() {
			$(this).removeClass("tr3");
		});
	}
	
	var pubinfoDialog;
	function addOrUpdate(method) {
		pubinfoDialog = $.dialog({
			title : '新增产品',
			width : '380px',
			height : '350px',
			content : 'url:' + ctx + '/pubinfo/' + method,
			button : [ {
				name : '确定',
				callback : function() {
					if ('addProductInit' == method) {
						productDialog.content.saveProduct();
					} else {
						productDialog.content.updateProduct();
					}
					return false;
				},
				focus : true
			} ],
			cancelVal : '关闭',
			cancel : true
		});
	}


</script>

</head>

<body>
	<div class="top">
		<%@ include file="../../common/top.jsp"%>
		<div class="main" >
			<div class="page_title">公共信息管理</div>
			<form id="pubinfoForm" action="">
			<div id="Search">
				信息类型：<input name="type" type="text" value=""/>
				信息关键字<input name="type" type="text" value=""/>
				
				 <input type="button" onclick="search()" value="查询" /> <input type="button"
					onclick="addOrUpdate('addInit')" value="新增" />
			</div>
			</form>
			<div id="Searchresult"></div>
			<div id="Pagination"></div>

			
		</div>
	</div>
</body>

</html>