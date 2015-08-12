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
            <h2>法律顾问</h2>
            <div class="index-common-note">
                <p>注：创业路上，荆棘丛生，各种法律问题不断涌现。创客邦专业律师帮你排除风险隐患，为初创企业构筑铜墙铁壁。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>￥19880/年</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>服务内容</h2>
            <div class="index-content-process index-content-law">
                <ul style="margin-top:1.9rem;">
                    <li>
                        <p>对新注册企业工商登记资料、企业章程等法律文件进行起草、审核</p>
                    </li>
                    <li>
                        <p>指导和帮助简历健全企业管理制度：人事制度、培训制度、财务管理、合同管理、公司考勤制度、员工奖惩制度等</p>
                    </li>
                    <li>
                        <p>对公司员工进行法律培训，提高员工的法律意识</p>
                    </li>
                    <li>
                        <p>提供公司日常的工商、税务及其他方面法律问题的咨询和建议</p>
                    </li>
                    <li>
                        <p>设计股权分配及股权激励方案</p>
                    </li>
                    <li>
                        <p>草拟、审查企业合同</p>
                    </li>
                    <li>
                        <p>定期拜访，一般2-3个月一次</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-common-content common-index-bg">
            <h2 class="contract-content-title">费用说明</h2>
            <ul class="index-content-class">
                <li><span>同行业</span><p>创客邦</p></li>
                <li><span>5-6万起/年</span><p style="line-height: 4rem;margin-top:0;color:#f70707">￥19880元年</p></li>
                <li><span style="line-height: 1rem;">律师水平<br>无法确定</span><p>多有律师均经过严格审核且具有丰富的从业经验</p></li>
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