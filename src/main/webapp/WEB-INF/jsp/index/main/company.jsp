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
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="index-common-header common-index-bg">
        <div class="index-common-innner ">
            <h2>注册公司</h2>
            <p>精心挑选专业会计帮你记账</p>
            <div class="index-common-note">
                <p>线上提交材料，先下为您打通复杂环节，实时跟踪，足不出户即可开公司。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>0元起/月</span><b>免代理费</b></div>
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
                <img src="${ctx}/img/regist_company_1.png" alt="" style="width:80%;margin-top:1rem;"/>
                <ul>
                    <li>
                        <h2>核名</h2>
                        <p>3-5工作日</p>
                    </li>
                    <li>
                        <h2>预审</h2>
                        <p>3-5工作日</p>
                    </li>
                    <li>
                        <h2>提交材料</h2>
                        <p>3-5个工作日</p>
                    </li>
                    <li>
                        <h2>注册完成</h2>
                        <p>领取执照</p>
                    </li>
                </ul>
                <p style="margin-top:2rem;">
                    创客邦以专业的服务为您开通极速注册通道，只需<b style="color:#5cce49">15个工
                    作日</b>左右即可完成公司注册，相比传统代办，至少节约10
                    天以上
                </p>
            </div>
        </div>
    </div>
    <div class="common-index-bg regist-footer">
        <div class="index-common-innner">
            <h2>费用说明</h2>
            <ul>
                <li>
                    <div>
                        <p class="regist-icon-a">刻章费</p>
                        <p class="regist-icon-b">组织机构代码费</p>
                    </div>
                    <div>￥518</div>
                </li>
                <li>
                    <div>
                        <p  style="height:3rem;line-height: 3rem;">创客邦代理费</p>
                    </div>
                    <div style="color:#5cce49">￥0</div>
                </li>
            </ul>
            <p style="text-align: center">相比传统代办至少省800-1000元</p>
        </div>
    </div>

    <div class="common-index-bg">
        <div class="index-common-innner regist-footer2">
            <h2>注册完成后，还需要做什么？</h2>
            <ul>
                <li class="regist-footer2-active">银行开户</li>
                <li>税务报到</li>
                <li>商标保护</li>
            </ul>
            <div>
                <div class="regist-footer2-txt">
                    <p>
                        1.公司成立后要及时进行税务报道<br>
                        公司成立后，一般需求10个工作日内去所属税
                        务机关报到。超时未报到的企业有可能会被罚
                        款。
                    </p>
                    <br/>
                    <p>
                        2.成立后当月起，需要会计每月记账报<br>
                        税公司成立后当月起，进行记账报税，没有收
                        入支出也需要报税。否则会被税务部门处罚。
                    </p>
                </div>
                <div class="regist-footer2-txt" style="display: none">
                    <p>
                        1.公司成立后要及时进行税务报道 c<br>
                        公司成立后，一般需求10个工作日内去所属税
                        务机关报到。超时未报到的企业有可能会被罚
                        款。
                    </p>
                    <br/>
                    <p>
                        2.成立后当月起，需要会计每月记账报<br>
                        税公司成立后当月起，进行记账报税，没有收
                        入支出也需要报税。否则会被税务部门处罚。
                    </p>
                </div>
                <div class="regist-footer2-txt" style="display: none">
                    <p>
                        1.公司成立后要及时进行税务报道 d<br>
                        公司成立后，一般需求10个工作日内去所属税
                        务机关报到。超时未报到的企业有可能会被罚
                        款。
                    </p>
                    <br/>
                    <p>
                        2.成立后当月起，需要会计每月记账报<br>
                        税公司成立后当月起，进行记账报税，没有收
                        入支出也需要报税。否则会被税务部门处罚。
                    </p>
                </div>
            </div>

            <p class="regist-bottom">创客邦代理记账服务价格低至<b style="color:#5cce49">166元/月</b></p>
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
$('.regist-footer2 ul li').click(function(){
    $(this).addClass('regist-footer2-active').siblings().removeClass('regist-footer2-active')
    m=$(this).index();
    console.log(m);
    $('.regist-footer2-txt').eq(m).css({'display':'block'}).siblings().css({'display':'none'})
})

</script>
</body>
</html>