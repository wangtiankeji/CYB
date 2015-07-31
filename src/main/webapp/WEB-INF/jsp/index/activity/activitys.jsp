<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

<c:forEach items="${eventses}" var="event" varStatus="status">
<li totalCount="${page.totalCount }" pageSize="${page.pageSize }">
                <a href="${ctx }/index/events/getIndexEvents/activity/1" data-transition="slide" data-ajax=“false”> 
                <div class="act-item-left">
                    <img src="${ctx}/img/pcenter-pic-i.jpg" alt=""/>
                             </div>
                <div class="act-item-right">
                    <h2>创客活动放风筝</h2>
                    <div class="act-item-box">
                        <p>时间 <span>5月12日 14:00</span></p>
                        <p>地点 北京天安门广场北京天安门广场</p>
                    </div>
                    <div class="act-item-box2">
                        <span>56</span>人报名
                    </div>
                </div>
             </a>
            </li>
</c:forEach>   
