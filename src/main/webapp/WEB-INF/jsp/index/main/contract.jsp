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
            <h2>合同服务</h2>
            <div class="index-common-note">
                <p>注：合同的撰写是一项严肃的工作。网上下载改改的，稍有不慎，都可能引起不要的法律纠纷。由专业律师代写合同，方便省心无后顾之忧。</p>
            </div>
            <div class="index-common-price">
                <div>价格：<span>￥760元/份</span></div>
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
            <div class="index-content-process index-content-contract">
                <ul>
                    <li>
                        <div>着手创业</div>
                        <p></p>
                    </li>
                    <li>
                        <div>招合伙人</div>
                        <p>《股权代持协议》 《合伙人股权分配协议》</p>
                    </li>
                    <li>
                        <div>拉投资</div>
                        <p>《投融资协议》</p>
                    </li>
                    <li>
                        <div>租办公室</div>
                        <p>《办公室租赁协议》</p>
                    </li>
                    <li>
                        <div>定章程</div>
                        <p>《公司章程》</p>
                    </li>
                    <li>
                        <div>公司成立</div>
                        <p></p>
                    </li>
                    <li>
                        <div>招员工</div>
                        <p>《保密协议》 《竞业禁止协议》 《劳动合同》</p>
                    </li>
                    <li>
                        <div>员工激励</div>
                        <p>《股权激励协议》</p>
                    </li>
                    <li>
                        <div>技术外包</div>
                        <p>《技术外包协议》</p>
                    </li>
                    <li>
                        <div>运营法律咨询</div>
                        <p>《商务合作协议》</p>
                    </li>
                    <li>
                        <div>网络协议</div>
                        <p>《用户协议》 《招商协议》</p>
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

    <div class="index-common-content common-index-bg">
            <h2 class="contract-content-title">合同服务费用说明</h2>
            <ul class="index-content-class">
                <li><span>传统律所</span><p>现在（创客邦）</b></p></li>
                <li><span>1200元起</span><p style="line-height: 4rem;margin-top:0;color:#f70707">￥760元</p></li>
                <li><span style="line-height: 1rem;">律师水平<br>无法确定</span><p>多有律师均经过严格审核且具有丰富的从业经验</p></li>
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