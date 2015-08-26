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
            <h2>人事方案</h2>
            <div class="index-common-note">
                <p>人才是企业的核心，人事制度的规范可以促进企业的良性发展。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>￥1460元</span></div>
                <ul>
                    <li>浏览量:<span>1.2</span>万</li>
                    <li>购买人数:<span>768</span>人</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>人事方案具体提供哪些服务？</h2>
            <div class="hr-content">
                <ul>
                    <li>
                        <div>《劳动合同》</div>
                        <p>《劳动合同法》第82条规定：用人单位未与劳动者订立书面劳动合同的，应当向劳动者支付二倍工资。签订一份《劳动合同》，对员工和用人单位都是一个保障。不签劳动合同，公司会面临双倍工资处罚风险。</p>
                    </li>
                    <li>
                        <div>《员工保密协议》</div>
                        <p>创业初期，经营模式、核心技术、运营创意，销售、经营、技术等信息对于公司非常重要。签订一份《保密协议》，可以约定保密的事项，避免核心机密泄露。</p>
                    </li>
                    <li>
                        <div>《竞业禁止协议》</div>
                        <p>创业初期，核心员工跳槽加入竞争对手的公司，对团队和公司的伤害是巨大的。签订一份《竞业禁止协议》，可以对核心员工进行约束，禁止员工离职后在一定时期内从事竞争或相似的业务，避免竞争对手挖人。</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-connon-content common-index-bg">
        <div class="index-common-innner">
            <h2>服务流程</h2>
            <div style="margin-top:1rem;text-align: center;">
                <img src="${ctx}/img/contract_img_1.png" alt="" style="width:80%;"/>
            </div>
            <div class="contract-seivice-process">
                <ul>
                    <li>
                        <h2>沟通需求</h2>
                        <p>专业律师与<br>您初步沟通</p>
                    </li>
                    <li>
                        <h2>出具协议</h2>
                        <p>需求确认后<br>出合同草稿</p>
                    </li>
                    <li>
                        <h2>修改至满意</h2>
                        <p>律师会根据你的反馈意见进行修改直至最终版确认</p>
                    </li>
                </ul>
            </div>
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