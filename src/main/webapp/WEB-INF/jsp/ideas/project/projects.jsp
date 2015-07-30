<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

<table width="100%" border="0" class="list_table" cellpadding="0" cellspacing="0" totalCount="${page.totalCount }" pageSize="${page.pageSize }">
	<tr>
    <th>序号</th>
    <th>项目名称</th>
    <th>项目状态</th>
    <th>项目地点</th>
    <th>项目简介</th>
    <th>团队人数</th>
    <th>需求合伙人</th>
    <th>发布日期</th>
    <th>发布地点</th>
    <th>操作</th>
  </tr>
	<c:forEach items="${projects}" var="project" varStatus="status">
		<tr>
			<td><c:out value="${status.count+page.pageSize*(page.currentPage-1)}"/></td>
			<td><c:out value="${project.projectName}"/></td>
			<td><c:if test="${project.projectState == 'incubator'}">孵化器</c:if>
			<c:if test="${project.projectState == 'activity'}">活动</c:if>
			<c:if test="${project.projectState == 'train'}">培训</c:if>
			</td>
			<td><c:out value="${project.projectArea}"/></td>
			<td><c:out value="${project.peopleNum}"/></td>
			<td><c:out value="${project.requirementsType}"/></td>
			<td></td>
			<td><c:out value="${event.provider}"/></td>
			<td><c:choose><c:when test="${event.enable == 'enable'}">有效</c:when>
			<c:otherwise>无效</c:otherwise></c:choose></td>
   			<td><a href="javascript:updateEvents('${event.eventId}')">编辑</a>	</td>
		</tr>
	</c:forEach>
</table>
