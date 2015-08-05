<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/base.jsp"%>
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
<!-- 首页-->
<div data-role="page" id="page-index" data-theme="f" class="ui-body-f" id="page-home">
    <div data-role="header" data-theme="f" class="ui-bar-f" id="header">
        <div class="logo-bar">
            <div class="logo"><a href="#page-index" id="a-index" data-transition="slide"><img src="${ctx}/img/logo.png" alt=""/></a></div>
             <form id="frm-person" action="" method="post" class="validate">
					<c:choose>
						<c:when test="${not empty user}">   
       					 	<div class="admin"><a href="${ctx}/center/showPersonal" id="a-person" data-transition="slide" data-ajax="false"><img src="${ctx}/img/icon-admin.png" alt="个人中心"/></a></div>
      					</c:when>
						<c:otherwise>   
							<div class="admin"><a href="${ctx}/indexLoginInit" id="a-login" data-transition="slide" ><img src="${ctx}/img/icon-admin.png" alt="登录"/></a></div>
     			 		</c:otherwise>
					</c:choose>
            
            </form>
        </div>
        <!-- 焦点轮播图-->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="${ctx}/img/banner.png" alt=""/></div>
                <div class="swiper-slide"><img src="${ctx}/img/banner.png" alt=""/></div>
                <div class="swiper-slide"><img src="${ctx}/img/banner.png" alt=""/></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <div data-role="content" data-theme="f" class="ui-content-f" id="container">
        <div class="content-item">
            <ul>
                <li><a href="${ctx}/index/project/showProjects" data-ajax=“false”><img src="${ctx}/img/btn_project_pre.png" alt="找项目"/></a><h2>找项目</h2></li>
                <li><a href="javascript:void(0);"><img src="${ctx}/img/btn_talent_pre.png" alt="找人才"/></a><h2>找人才</h2></li>
                <li><a href="${ctx}/index/event/showIndexEvents/incubator" data-ajax=“false”><img src="${ctx}/img/btn_incubator_pre.png" alt="找项目"/></a><h2>孵化器</h2></li>
                <li><a href="${ctx}/index/event/showIndexEvents/activity" data-ajax=“false”><img src="${ctx}/img/btn_active_pre.png" alt="活动"/></a><h2>活动</h2></li>
                <li><a href="javascript:void(0);"><img src="${ctx}/img/btn_financing_pre.png" alt="融资"/></a><h2>融资</h2></li>
                <li><a href="javascript:void(0);"><img src="${ctx}/img/btn_technology_pre.png" alt="技术外包"/></a><h2>技术外包</h2></li>
                <li><a href="javascript:void(0);"><img src="${ctx}/img/btn_marketing_pre.png" alt="运营推广"/></a><h2>运营推广</h2></li>
                <li><a href="javascript:void(0);"><img src="${ctx}/img/btn_table_pre.png" alt="众筹平台"/></a><h2>众筹平台</h2></li>
            </ul>
        </div>
        <div class="business-title">
            <span></span>
            <h2>公司注册</h2>
        </div>
        <div class="business-content">
            <ul>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_signup.png" alt=""/>
                        <h2>办公室</h2>
                        <p>办公设施齐全直接入驻</p>
                        <span>${ infoParams.rentalOffice}</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${ctx}/img/icon_change.png" alt=""/>
                        <h2>注册公司</h2>
                        <p>快速帮您注册公司</p>
                        <span>${ infoParams.companyRegiste}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_logoff.png" alt=""/>
                        <h2>合伙协议</h2>
                        <p>最大程度地保护创始人的<br>合法权益</p>
                        <span>${ infoParams.cooperation}</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${ctx}/img/icon_toget.png" alt=""/>
                        <h2>创业咨询</h2>
                        <p>各种创业问题专业<br>咨询解答</p>
                        <span>${ infoParams.consultation}</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="business-title">
            <span></span>
            <h2>找个会计代理记账</h2>
        </div>
        <div class="business-content">
            <ul>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_moon.png" alt=""/>
                        <h2>代理记账</h2>
                        <p>专业会计帮您记帐</p>
                        <span>${ infoParams.accounting}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_year.png" alt=""/>
                        <h2>代理记账（年付）</h2>
                        <p>专业会计帮您记账</p>
                        <span>${ infoParams.accountingYear}</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="business-title">
            <span></span>
            <h2>资深法律顾问，保你创业无忧</h2>
        </div>
        <div class="business-content">
            <ul>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_ask.png" alt=""/>
                        <h2>咨询律师</h2>
                        <p>创业法律问题来咨询<br>专业律师</p>
                        <span>${ infoParams.consultLawyer}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_write.png" alt=""/>
                        <h2>合同</h2>
                        <p>专业律师帮您代写和<br>审核合同</p>
                        <span>${ infoParams.contract}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_law.png" alt=""/>
                        <h2>法律顾问</h2>
                        <p>资深律师为创业公司提供<br>专业服务</p>
                        <span>${ infoParams.counselor}</span>
                    </a>
                </li>

            </ul>
        </div>
        <div class="business-title">
            <span></span>
            <h2>企业知识产权保护</h2>
        </div>
        <div class="business-content">
            <ul>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_continuer.png" alt=""/>
                        <h2>商标注册</h2>
                        <p>防止品牌名称被恶意盗用</p>
                        <span>${ infoParams.registrations}</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${ctx}/img/icon_apply.png" alt=""/>
                        <h2>专利申请</h2>
                        <p>保护技术研发成果</p>
                        <span>${ infoParams.patentApplication}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_book.png" alt=""/>
                        <h2>著作权</h2>
                        <p>保护作品版权</p>
                        <span>${ infoParams.copyright}</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="business-title">
            <span></span>
            <h2>劳动人事解决方案</h2>
        </div>
        <div class="business-content">
            <ul>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_continuer.png" alt=""/>
                        <h2>办理社保</h2>
                        <p>为新员工办理五险一金</p>
                        <span>${ infoParams.socialSecurity}</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="${ctx}/img/icon_apply.png" alt=""/>
                        <h2>人事</h2>
                        <p>为您设计整体的劳动人事<br>解决方案</p>
                        <span>${ infoParams.personnel}</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${ctx}/img/icon_book.png" alt=""/>
                        <h2>人才外包</h2>
                        <p>不再为找合伙人而烦恼</p>
                        <span>${ infoParams.outsourcing}</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div data-role="footer" data-theme="f" class="ui-footer-f">
        <p>创客邦科技（北京）有限公司</p>
    </div>
</div>


<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(document).bind("mobileinit", function() {
		//disable ajax nav
		$.mobile.ajaxEnabled = false
	});
</script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
	});
	
	//焦点轮播图
	var swiper = new Swiper('.swiper-container', {
		autoplay : 3000,
		pagination : '.swiper-pagination',
		paginationClickable : true
	});
	

</script>
</body>
</html>