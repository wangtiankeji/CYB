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
            <div class="swiper-slide"><img src="${ctx}/img/banner-2.png" alt=""/></div>
            <div class="swiper-slide"><img src="${ctx}/img/banner-2.png" alt=""/></div>
            <div class="swiper-slide"><img src="${ctx}/img/banner-2.png" alt=""/></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="index-common-header common-index-bg">
        <div class="index-common-innner ">
            <h2>合伙人协议</h2>
            <div class="index-common-note">
                <p>合伙人之间的股权分配协议，防止合伙人因意见冲突带来的企业管理风险，充分保障每位合伙人的合法权益。创客邦专业股权律师为您精心设计协议方案，防风险于未然。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>￥880.00（5000字以内）</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>合伙协议你的重要性</h2>
            <div class="index-content-agreement">
                <ul>
                    <li class="agreement-a">
                        <p><b class="color-red">约定每个人的股权比例及持股方式</b>，在未注册公司之前，约定由哪些人持股及持股的比例；注册公司之后，哪些人在工商局具名，哪些人的股份由大股东来代持。</p>
                    </li>
                    <li class="agreement-b">
                        <p><b class="color-red">约定得权的时间和方式</b>，给合伙人一定的股份，又担心他不久会离开，那么可以约定一个得权的时间。比如，约定3年的得权期，工作满一年给20%股权，满2年给50%股权，满3年之后获得全部应得的股份。</p>
                    </li>
                    <li class="agreement-c">
                        <p><b class="color-red">约定退出的方式</b>，创业过程中几乎不可避免地，都会遇到合伙人退出的问题，如果事先约定了退出机制，会减少很多矛盾。在合伙协议里可以约定：退出时股权是否由其它股东收回，收回时按什么样的价格来补偿等。</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <div class="index-common-content common-index-bg" style="margin-top:0.5rem;">
            <h2 class="contract-content-title">费用说明</h2>
            <ul class="index-content-class">
                <li><span>同行业</span><p style="margin-top:1.3rem;">创客邦</p></li>
                <li><span>1500元起</span><p style="line-height: 4rem;margin-top:0;color:#f70707">￥880元</p></li>
                <li><span style="line-height: 1rem;">律师水平<br>无法确定</span><p>所有律师均经过严格审核且具有丰富的从业经验</p></li>
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