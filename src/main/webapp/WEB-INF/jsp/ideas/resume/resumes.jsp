<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

<table width="100%" border="0" class="list_table" cellpadding="0" cellspacing="0" totalCount="${page.totalCount }" pageSize="${page.pageSize }">
	<tr>
    <th>序号</th>
    <th>昵称</th>
    <th>人才定位</th>
    <th>工作区域</th>
    <th>性别</th>
    <th>联系电话</th>
    <th>个人简介</th>
    <th>操作</th>
  </tr>
	<c:forEach items="${resumes}" var="resume" varStatus="status">
		<tr>
			<td><c:out value="${status.count+page.pageSize*(page.currentPage-1)}"/></td>
			<td><c:out value="${resume.nickname}"/></td>
			<td><c:if test="${resume.goal == 'incubator'}">孵化器</c:if>
			<c:if test="${resume.goal == 'activity'}">活动</c:if>
			<c:if test="${resume.goal == 'train'}">培训</c:if>
			</td>
			<td><c:out value="${resume.workArea}"/></td>
			<td><c:out value="${resume.sex}"/></td>
			<td><c:out value="${resume.phone}"/></td>
			<td><c:out value="${resume.intro}"/></td>
   			<td><a href="javascript:updateEvents('${event.eventId}')">编辑</a></td>
		</tr>
	</c:forEach>
</table>
