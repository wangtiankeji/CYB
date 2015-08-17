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
<!--人才列表-->
<div data-role="page" data-theme="f" class="ui-body-f">

        <div>
            <!-- 头像展示区-->
            <div class="talent-details-header">
                <div class="talent-details-face"></div>
                <h2>${talent.nickname }</h2>
                <span>北京 海淀</span>
            </div>
        </div>
        <div data-role="none" data-theme="f" style="margin-bottom: 3rem;">
            <ul class="talent-content-item">
                <li>
                    <div class="talent-details-inner">
                        <ul class="talent-details-descrip">
                            <li>性别 &nbsp;&nbsp;&nbsp;&nbsp;<span>${talent.sex }</span></li>
                            <li>个人定位 &nbsp;&nbsp;&nbsp;&nbsp;<span>${talent.goal }</span></li>
                        </ul>
                        <div class="talent-details-descrip2">
                            <span>个人描述</span>
                            <p>${talent.intro }</p>
                        </div>
                        <div class="talent-details-descrip2">
                            <span>个人微信</span>
                            <p>${talent.talentName }</p>
                        </div>

                    </div>

                </li>
                <li class="talent-details-chuangye">
                    <div class="talent-details-inner">
                        <h2>创业信息</h2>
                        <table>
                            <tr>
                                <td>创业状态</td>
                                <td>${talent.entrepreneurship }</td>
                            </tr>
                            <tr>
                                <td>出资意愿</td>
                                <td>${talent.talentMoney }</td>
                            </tr>
                            <tr>
                                <td>期望保障</td>
                                <td>${talent.expectedSalary }</td>
                            </tr>
                        </table>
                    </div>

                </li>
                <li class="talent-details-resume">
                    <div class="talent-details-inner">
                        <h2>简历</h2>
                        <table>
                            <tr>
                                <td width="25%">工作经历</td>
                                <td width="75%">
                                    <ul class="talent-details-table1">
                                        <li>
                                            <h3>创业邦科技</h3>
                                            <p><span>2014年5月</span> 至 <span>2015年5月</span></p>
                                        </li>
                                        <li>
                                            <h3>网田科技</h3>
                                            <p><span>2014年5月</span> 至 <span>2015年5月</span></p>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>教育经历</td>
                                <td>
                                    <ul class="talent-details-table1">
                                        <li>
                                            <h3>北京大学</h3>
                                            <p><span>2014年5月</span> 至 <span>2015年5月</span></p>
                                        </li>
                                        <li>
                                            <h3>清华大学</h3>
                                            <p><span>2014年5月</span> 至 <span>2015年5月</span></p>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>擅长领域</td>
                                <td>
                                    <ul class="talent-details-table2">
                                        <li>平面设计</li>
                                        <li>UI设计</li>
                                        <li>视频处理</li>
                                        <li>画册设计</li>
                                        <li>画册设计</li>
                                        <li>画册设计</li>
                                        <li>画册设计</li>
                                        <li>画册设计</li>
                                        <li>画册设计</li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>

                </li>
            </ul>
        </div>

        <div class="talent-details-foot">
            <ul>
                <li class="talent-foot-modal">认识TA</li>
                <li class="project-details-collection"><span>已收藏(<b id="concernCount">${talent.concernCount }</b>)</span></li>
            </ul>
            <div class="talent-details-modal" style="display: none">
                <div>
                    <h2>请添加微信号</h2>
                    <p>LittleGirlf</p>
                </div>
            </div>
        </div>


</div>
<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.min.js"></script>
<script type="text/javascript" src="${ctx}/js/concern.js"></script>
   <script type="text/javascript">
   $(document).ready(function() {
		
	});
	
   
   <!--开关模态框-->
   $('.talent-foot-modal').click(function(){
       $('.talent-details-modal').show();
   })
   $('.talent-details-modal').click(function(){
       $('.talent-details-modal').hide();
   })
   
    $(".project-details-collection").click(function() {
  	addConcern({bNumId:"concernCount",targetId:${talent.talentId },
  		url:"${ctx}/concern/addConcern",concernType:"concern",targetType:"talent"});
  });
   </script>
</body>
</html>