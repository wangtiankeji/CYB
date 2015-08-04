<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

<table width="100%" border="0" class="list_table" cellpadding="0" cellspacing="0" totalCount="${page.totalCount }" pageSize="${page.pageSize }">
	<tr>
    <th>序号</th>
    <th>名称</th>
    <th>类型</th>
    <th>进行时间</th>
    <th>地点</th>
    <th>创建时间</th>
    <th>是否认证</th>
    <th>提供者</th>
    <th>是否有效</th>
    <th>操作</th>
  </tr>
	<c:forEach items="${events}" var="event" varStatus="status">
		<tr>
			<td><c:out value="${status.count+page.pageSize*(page.currentPage-1)}"/></td>
			<td><c:out value="${event.eventName}"/></td>
			<td><c:if test="${event.eventType == 'incubator'}">孵化器</c:if>
			<c:if test="${event.eventType == 'activity'}">活动</c:if>
			<c:if test="${event.eventType == 'train'}">培训</c:if>
			</td>
			<td><fmt:formatDate value="${event.eventTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td><c:out value="${event.eventAddress}"/></td>
			<td><fmt:formatDate value="${event.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td><c:if test="${event.auth == 'certified'}">已认证</c:if>
			<c:if test="${event.auth == 'uncertifie'}">未认证</c:if></td>
			<td><c:out value="${event.provider}"/></td>
			<td><c:choose><c:when test="${event.status == 'enable'}">有效</c:when>
			<c:otherwise>无效</c:otherwise></c:choose></td>
   			<td><a href="javascript:updateEvents('${event.eventId}')">编辑</a>	</td>
		</tr>
	</c:forEach>
</table>
