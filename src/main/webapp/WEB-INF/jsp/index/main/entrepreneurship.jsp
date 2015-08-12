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
            <h2>创业咨询</h2>
            <div class="index-common-note">
                <p>注：初次创业，许多问题不知道？创客邦资深创业顾问帮你答疑解惑并可为你定制针对性方案。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>免费</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>我们可以为你解答的问题</h2>
            <div class="index-content-process index-content-office">
                <ul>
                    <li>
                        <div>创业前咨询</div>
                        <p>帮你考虑注册什么样的公司</p>
                    </li>
                    <li>
                        <div>招合伙人</div>
                        <p>为你提供如何设置股权，制定合伙人协议的建议</p>
                    </li>
                    <li>
                        <div>拉投资</div>
                        <p>讲解投投资融资中的常见问题集对策</p>
                    </li>
                    <li>
                        <div>注品牌</div>
                        <p>向你解答如何保护商标</p>
                    </li>
                    <li>
                        <div>定章程</div>
                        <p>告诉你制定章程的注意事项</p>
                    </li>
                    <li>
                        <div>公司成立</div>
                        <p>解答关于公司注册的核心问题</p>
                    </li>
                    <li>
                        <div>招员工</div>
                        <p>为你考虑劳动人事制度如何建立</p>
                    </li>
                    <li>
                        <div>记账</div>
                        <p>为你讲解创业公司的基础财务知识</p>
                    </li>
                    <li>
                        <div>社保</div>
                        <p>解答创业公司经常遇到的社保、公积金问题</p>
                    </li>
                    <li>
                        <div>公司运营</div>
                        <p>为你判断在公司运营中法律风险点</p>
                    </li>
                    <li>
                        <div>更多</div>
                        <p>当然，创业路漫漫。我们可以为你分担更多</p>
                    </li>


                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>咨询律师费用说明</h2>
            <ul class="index-content-class">
                <li><span>咨询方式</span><p>创客邦创业顾问，<b style="color:#5cce49">通过电话主动与您联系</b></p></li>
                <li><span>服务费用</span><p style="line-height: 4rem;margin-top:0;color:#f70707">免费</p></li>
                <li><span>服务品质</span><p>创业顾问会根据你提出的问题给出相应的意见建议，但不提供具体的方案执行服务。</p></li>
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