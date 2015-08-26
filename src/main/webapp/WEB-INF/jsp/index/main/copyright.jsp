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
        <div class="index-common-innner index-copyright">
            <div style="overflow:hidden; border-bottom:1px solid #bbb;padding:1rem 0;">
                <div class="index-copyright-box1">
                    <h2>商标注册</h2>
                    <h2>著作权申请</h2>
                </div>
                <div class="index-copyright-box2">
                    <h2>价格：￥988元起</h2>
                    <h2>价格：￥788元</h2>
                </div>
            </div>
            <div class="index-common-price" style="clear: both;margin-top:1rem;">

                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>注册商标的流程</h2>
            <div class="index-content-rigist" style="text-align: center;">
                <img src="${ctx}/img/trademark_1.png" alt="" style="width:90%;margin-top:1rem;"/>
                <ul>
                    <li>
                        <h2>出具<br>方案</h2>
                        <p>商标顾问会根据你的需求出具一份注册方案，1个工作日</p>
                    </li>
                    <li>
                        <h2>递交<br>材料</h2>
                        <p>根据商标局要求提交材料，1个工作日</p>
                    </li>
                    <li>
                        <h2>受理<br>通知书</h2>
                        <p>形式审查，3个月左右</p>
                    </li>
                    <li>
                        <h2>初步<br>审定</h2>
                        <p>实质审查，9月左右</p>
                    </li>
                    <li>
                        <h2>注册<br>完成</h2>
                        <p>取得商标注册证书，12个月左右</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>咨询律师费用说明</h2>
            <ul class="index-content-class2">
                <li><span>外观设计</span><p>服务费<b style="color:#f70707">988元</b></p></li>
                <li><span>实用新型</span><p>服务费<b style="color:#f70707">2480原木</b></p></li>
                <li><span>发明</span><p>服务费<b style="color:#f70707">5000元</b></p></li>
                <li><span>著作权</span><p>登记费<b style="color:#f70707">300元</b> 代办费<b style="color:#f70707">488</b>元</p></li>
            </ul>
        </div>
    </div>

<!-- foot-->
    <div class="index-foot regist-company">
        <button type="button" data-role="none">预约</button>
    </div>
    <div class="foot-common-mask" style="display: none">
        <div class="foot-mask-inner">
            <div class="foot-mask-close"><img src="${ctx}/img/icon_close_green_pre.png" alt=""/></div>
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
<script src="${ctx}/js/common.js"></script>
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