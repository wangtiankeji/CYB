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
        <div class="index-common-innner index-common-price">
            <h2>办公室</h2>
            <ul style="margin-top:0.5rem;">
                <li>浏览量:<span>${infoParams.hit }</span></li>
                <li>购买人数:<span>768</span>人</li>
            </ul>

        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner index-office-inner">
           <div>
               <p>价格：<b style="color:#f70707">￥8000/月</b></p>
               <p>面积：200平</p>
           </div>
           <div>
               <p>简介：宽敞明亮，环境优雅宽敞明亮，环境优雅宽敞明朗，环境宽敞明亮。</p>
           </div>
           <div>
               <p>电话：010-1235678</p>
               <p>联系人：张女士</p>
               <p>地址：北京市海淀区上地一区</p>
           </div>
        </div>
    </div>

 <!-- foot-->
    <div class="index-foot office">
        <button type="button" data-role="none">预约</button>
    </div>
    <div class="foot-common-mask" style="display: none">
        <div class="foot-mask-inner">
            <div class="foot-mask-close"><img src="img/icon_close_green_pre.png" alt=""/></div>
            <h2>预约</h2>
            <form action="" method="post" class="foot-registration">
                <input type="text" data-role="none" name="name" placeholder="姓名"/>
                <input type="tel" class="index-tel" data-role="none" name="tel" placeholder="电话"/>
                <button type="button" data-role="none" class="foot-common-registration office-regist">提交</button>
            </form>
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