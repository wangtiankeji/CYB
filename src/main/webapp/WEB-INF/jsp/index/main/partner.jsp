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
            <h2>合伙人外包</h2>
            <div class="index-common-note">
                <p>创业路上，合伙人至关重要，创客邦已为你无色了大量的合伙人供你选择。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>￥68起/人</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>合伙人外包的服务流程</h2>
            <div style="margin-top:1rem;text-align: center;">
                <img src="${ctx}/img/contract_img_1.png" alt="" style="width:80%;"/>
            </div>
            <div class="contract-seivice-process">
                <ul>
                    <li>
                        <h2>沟通需求</h2>
                        <p>电话沟通<br>确定需求</p>
                    </li>
                    <li>
                        <h2>推荐人选</h2>
                        <p>根据需求，有针对性的推荐简历</p>
                    </li>
                    <li>
                        <h2>满意为止</h2>
                        <p>直至你找到<br>满意的合伙人</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="index-common-content common-index-bg">
        <div class="index-common-innner">
            <h2 class="contract-content-title">费用说明</h2>
            <ul class="index-content-class">
                <li><span>合伙人推荐</span><p style="color:#f70707;margin-top:1.3rem!important;">简历68元每份</b></p></li>
                <li><span>外包招聘</span><p style="line-height: 4rem;margin-top:0;color:#f70707">5800元/人</p></li>
            </ul>
            <p>还在为找合伙人而烦恼吗？</p>
            <p><b style="color:#5cce49">创客邦</b>退出合伙人外包服务了，立即就来买合伙人吧！</p>
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