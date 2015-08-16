<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>创客邦</title>

<%@ include file="../../common/head.jsp"%>

<link rel="stylesheet" href="${ctx}/css/pagination.css" type="text/css">
<script type="text/javascript" src="${ctx}/js/jquery.pagination.js"></script>
<script type="text/javascript" src="${ctx}/js/pagination.js"></script>
<script type="text/javascript" src="${ctx}/js/dialog.js"></script>
<script type="text/javascript"
	src="${ctx}/js/lhgdialog/lhgdialog.min.js?skin=blue"></script>
<script type="text/javascript">

	$(document).ready(function() {
		var searchData = {state:'enable'};
		searchPage("${ctx}/event/getEvents",searchData);
		//trCss();
	});

	function search() {
		searchPage("${ctx}/event/getEvents",$("#eventsForm").serialize());
	}

	function trCss() {
		$(".list_table tr").live("mouseover", function() {
			$(this).addClass("tr3");
		});
		$(".list_table tr").live("mouseout", function() {
			$(this).removeClass("tr3");
		});
	}
	
	function addEvents(){
		openDialog({url:"/event/addInit",callback:"saveEvents",width:"800px",height:"600px"});
	}
	function updateEvents(id){
		openDialog({url:"/event/updateInit/"+id,callback:"updateEvents",width:"800px",height:"600px"});
	}
	

</script>

</head>

<body>
	<div class="top">
		<%@ include file="../../common/top.jsp"%>
		<div class="main" >
			<div class="page_title">公共信息管理</div>
			<form id="eventsForm" action="">
			<div id="Search">
				类型：<select name="eventType" id="eventType">
				<option value="">全部</option>
				<option value="incubator">孵化器</option>
				<option value="activity">活动</option>
				<option value="train">培训</option>
				<option value="financing">融资</option>
				<option value="skill">技术外包</option>
				<option value="operate">运营推广</option>
				<option value="crowdfunding">众筹平台</option>
				</select>
				活动时间：<input type="text" size="12" readonly="readonly"
					id="startTime" name="startTime" class="Wdate"
					onFocus="startDate(this)"   value="" /> 
					 至<input type="text" size="12" readonly="readonly"
					id="endTime" name="endTime" class="Wdate"
					onFocus="endDate()" value="" /> 
				
				 <input type="button" onclick="search()" value="查询" /> <input type="button"
					onclick="addEvents()" value="新增" />
			</div>
			</form>
			<div id="Searchresult"></div>
			<div id="Pagination"></div>

			
		</div>
	</div>
</body>

</html>