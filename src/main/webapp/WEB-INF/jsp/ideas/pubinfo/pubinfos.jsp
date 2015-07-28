<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

<table width="100%" border="0" class="list_table" cellpadding="0" cellspacing="0" totalCount="${page.totalCount }" pageSize="${page.pageSize }">
	<tr>
    <th>序号</th>
    <th>信息类型</th>
    <th>关键字</th>
    <th>展示内容</th>
    <th>操作</th>
  </tr>
	<c:forEach items="${pubinfos}" var="pubinfo" varStatus="status">
		<tr>
			<td><c:out value="${status.count+page.pageSize*(page.currentPage-1)}"/></td>
			<td><c:out value="${pubinfo.type}"/></td>
			<td><c:out value="${pubinfo.valueKey}"/></td>
			<td><c:out value="${pubinfo.noticeStr}"/></td>
   			<td><a href="javascript:updatePubinfo('${pubinfo.infoId}')">编辑</a>	</td>
		</tr>
	</c:forEach>
</table>
