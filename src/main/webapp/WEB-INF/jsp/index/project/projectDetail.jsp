<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="创客邦">
    <meta name="keywords" content="创客邦">
    <meta name="viewport" content="width=device-width" ,initial-scale="1" ,minium-scale="1" ,maximum-scale="1"
          ,user-scalable="no">
    <title>创客邦</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="${ctx}/css/jquery.mobile-1.4.5.min.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx}/css/swiper.min.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx}/css/mobilestyle.css" type="text/css"/>
</head>
<body>
<!-- 项目详情页-->
<div data-role="page" data-theme="f" class="ui-body-f">
    <div data-role="none" data-theme="f">
        <img src="${cxt }${project.projectImg }" alt=""/>
        <div class="project-details-header">
            <div class="pdh-inner">
                <div class="pdh-inner-title">
                    <h2>${project.projectName }</h2>
                    <span>${project.projectState }</span>
                </div>
                <div class="pdh-inner-title2">
                    <div>${project.projectArea }</div>
                    <span><b><fmt:formatDate value="${project.createTime}" pattern="MM月dd日"/></b>发布</span>
                </div>
                <div class="pdh-inner-title3">
                    <div>当前团队人数&nbsp; <b>${project.peopleNum }</b></div>
                    <div>投资状态及金额&nbsp; <b>${project.financingState } ${project.financingAmount }万/美元</b></div>
                </div>
                <p>${project.projectIntro }</p>
                <div class="pdh-inner-title4">
                    <h2>合伙人招募</h2>
                    <ul>
                    	<c:forEach items="${partners}" var="partner" varStatus="status">
                    	<li>
                            <h2>${partner.partnerRole}合伙人</h2>
                            <div>
                                <p>${partner.cooperationMode} ${partner.salaryType}</p>
                                <p>${partner.optionProportion}</p>
                            </div>

                        </li>
                    	</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div data-role="none" data-theme="f" style="margin-bottom:3.5rem;">
        <div class="project-details-content">
            <div class="pdc-inner pdc-inner-publisher">
                <h2>发布人简介</h2>
                <p>这是发布人简介这是发布人简介这是发布人简介这是发布人简介这是发布人简介这是发布人简介这是发布人简介</p>
            </div>
        </div>
        <div class="project-details-content">
            <div class="pdc-inner pdc-inner-profile">
                <h2>项目介绍</h2>
                <p>${project.projectDes }</p>
            </div>
        </div>
        <div class="project-details-content">
            <div class="pdc-inner pdc-inner-link">
                <h2>产品链接</h2>
                <a href="${project.systemUrl }">点击查看</a>
            </div>
        </div>
    </div>
    <div data-role="none" data-theme="f" class="project-details-foot">
        <ul>
            <li class="project-details-tel">
                <span>联系电话</span>
                <p>158109992345</p>
            </li>
            <li class="project-details-collection">
                <span>已收藏 <b style="font-size: 0.8rem;">(<b id="concernCount">${project.concernCount }</b>)</b></span>
            </li>
        </ul>
    </div>
</div>

<script type="text/javascript" type="text/javascript">
var ctx = "${ctx}";
</script>

<script type="text/javascript" src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="${ctx}/js/swiper.min.js"></script>
<script type="text/javascript" src="${ctx}/js/concern.js"></script>
<script type="text/javascript" type="text/javascript">
  $(".project-details-collection").click(function() {
  	addConcern({bNumId:"concernCount",targetId:${project.projectId },
  		url:"${ctx}/concern/addConcern",concernType:"concern",targetType:"project"});
  });
</script>
</body>
</html>