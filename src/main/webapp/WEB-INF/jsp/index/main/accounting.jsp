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
<!-- 首页二级页面-->
<div data-role="page" data-theme="f" class="ui-body-f">
    <!-- 焦点轮播图-->
    <div class="swiper-container">
        <div class="swiper-wrapper">
        	<c:forEach items="${pageimgs}" var="pageimg" varStatus="status">
             	<div class="swiper-slide"><img src="${pageimg.noticeStr}" alt=""/></div>
            </c:forEach>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="index-common-header common-index-bg">
        <div class="index-common-innner ">
            <h2>代理记账</h2>
            <p>精心挑选专业会计帮你记账</p>
            <div class="index-common-note">
                <p>注：新公司注册成立后，一般要求10个工作日内去所属税务机关报到，以后每个月需要报一次帐。创客邦精心挑选专业会计帮你免费办理税务报到并提供后续的代理记账服务。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>166元起/月</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>代理记账服务流程</h2>
            <div class="accounting-content" style="text-align: center;">
                <img src="${ctx}/img/trademark_2.png" alt="" style="width:90%;margin-top:1rem;"/>
                <ul>
                    <li>
                        <h2>票据收集</h2>
                        <p>上月28号前</p>
                    </li>
                    <li>
                        <h2>寄送</h2>
                        <p>每月3号前</p>
                    </li>
                    <li>
                        <h2>帮你记账</h2>
                        <p>每月14号前</p>
                    </li>
                    <li>
                        <h2>纳税申报</h2>
                        <p>每月15号前</p>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>代理记账的费用</h2>
            <ul class="index-content-class3">
                <li><span class="icon_account_a">创客邦服务费</span><p><b style="color:#f70707">免费</b></p></li>
                <li><span class="icon_account_b">代理记账费用</span><p><b style="color:#f70707">166元起</b><br><i>购买年度记账服务价格从优</i></li>
                <li><span class="icon_account_c">政府CA证书管理费</span><p>实交实收</p></li>
                <li><span class="icon_account_d">应交税费</span><p>实交实收</p></li>
            </ul>
        </div>
    </div>
</div>


<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.min.js"></script>

<script type="text/javascript">
//焦点轮播图
$(function(){ var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
}); })

</script>
</body>
</html>