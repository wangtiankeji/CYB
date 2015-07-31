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
<!--活动详情页-->
<div data-role="page" data-theme="f" class="ui-body-f" id="activity-details">
    <div data-role="none" data-theme="f" class="ac-details-header">
        <!-- 焦点轮播图-->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="${ctx}/img/bg-test.jpg" alt=""/></div>
                <div class="swiper-slide"><img src="${ctx}/img/bg-test.jpg" alt=""/></div>
                <div class="swiper-slide"><img src="${ctx}/img/bg-test.jpg" alt=""/></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <div data-role="content" data-theme="f" class="ac-details-content">
        <div class="details-title">
            <div class="details-innerbox">
                <h2>创客活动足球比赛</h2>
                <ul>
                    <li>
                        <h3>活动时间</h3>
                        <p>05月12日 14:00</p>
                    </li>
                    <li>
                        <h3>活动地点</h3>
                        <p>北京市海淀区上地南路上地东里花莲旁边科贸大厦</p>
                    </li>
                    <li>
                        <h3>报名人数</h3>
                        <p>56人</p>
                    </li>
                </ul>
                <div class="registration-number">北京创客邦（北京）有限公司</div>
                <div class="collection-number">收藏量 <span>100</span></div>
            </div>
        </div>
        <div class="ac-transition">
            <div class="details-innerbox">
                <h2>活动介绍</h2>
                <p>这是活动的介绍，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；这是活动的介绍，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；</p>
            </div>
        </div>
        <div class="ac-process">
            <div class="details-innerbox">
                <h2>活动流程</h2>
                <p>这是活动的介绍，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；这是活动的介绍，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；</p>
            </div>
        </div>
        <div class="ac-guest">
            <div class="details-innerbox">
                <h2>嘉宾介绍</h2>
                <p>姓名：<span>李某某</span></p>
                <p>李某某是某公司市场总监，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；这是活动的介绍，本次的活动的主题是让大家畅聊一下未来互联网发展的前景；</p>
            </div>
        </div>
    </div>
    <div data-role="footer" data-theme="f" class="ac-details-footer">
        <div class="telnumber">咨询电话：400-1234-1234</div>
        <button type="button" data-role="none" class="ac-details-re">报名</button>

    </div>
    <div class="ac-mask">
        <div class="ac-mask-inner">
            <div class="mask-close"><img src="${ctx }/img/icon_close_green_pre.png" alt=""/></div>
            <h2>活动报名</h2>
            <form action="" method="post" class="ac-registration">
                <input type="text" data-role="none" name="name" placeholder="姓名"/>
                <input type="tel" data-role="none" name="tel" placeholder="电话"/>
                <button type="button" data-role="none" class="registration">提交</button>
            </form>
        </div>
    </div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
    <script src="${ctx}/js/swiper.min.js"></script>
    <script>
        //活动详情页焦点轮播图
        var swiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            centeredSlides: true,
            autoplay: 2500,
            autoplayDisableOnInteraction: false,
            width : window.innerWidth
        });
        
        //创客活动《=》创客培训 切换代码
        $('.train-box').hide();
        $('.pecenter-ac-header li').click(function(){
            var index=$(this).index();
            console.log(index);
            $(this).addClass('activity-active').siblings().removeClass('activity-active');
            $(".pcenter-ac-content ul").eq(index).show().siblings().hide();
        })
        //报名部分
        $('.ac-mask').hide();
        $('.ac-details-re').click(function(){
            $('.ac-mask').show();
        });
        $('.mask-close').click(function(){
            $('.ac-mask').hide();
        });
    </script>
</div>


</body>
</html>