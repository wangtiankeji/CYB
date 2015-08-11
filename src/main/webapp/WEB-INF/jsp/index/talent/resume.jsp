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
<div data-role="page" data-theme="f" class="ui-body-f">
    <ul class="resume-content">
        <li>
            <div class="resume-item-inner resume-item-a resume-work-experice" style="background: none">
                <div>
                    <h2>工作经历</h2>
                </div>
                <div class="regist-item-right">
                    <div class="word-click">点击添加工作经历</div>
                <ul>
                    <li>
                        <h2>创业邦</h2>
                        <p><span>2014年1月</span> 至 <span>2015年1月</span></p>
                    </li>

                </ul>
                </div>

            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-a resume-education-experice" style="background: none">
                <div>
                    <h2>教育经历</h2>
                </div>
                <div class="regist-item-right">
                    <div class="edu-click">点击添加教育经历</div>
                    <ul>
                        <li>
                            <h2>北京大学</h2>
                            <p><span>2013年1月</span> 至 <span>2015年1月</span></p>
                        </li>
                    </ul>
                </div>

            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-b resume-skill-nav" style="background: none">
                <div>
                    <h2>擅长领域</h2>
                </div>
                <div class="regist-item-right">
                    <div class="skill-click">点击添加擅长领域</div>
                    <ul>
                        <li>sdfs </li>
                    </ul>
                </div>


            </div>
        </li>
        <li>
            <div class="resume-item-inner resume-item-b entrepreneurship-nav">
                <div>
                    <h2>创业方向</h2>
                </div>
                <ul>
                    <li>擅长编程</li>
                </ul>

            </div>
        </li>
    </ul>

    <!--//工作经历-->
    <div class="work-experience" style="left:100%;">
        <ul class="resume-content2">
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>公司名称</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="company-name" data-role="none" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="position" data-role="none" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>入职时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="entry-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>离职时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="quit-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li class="company-class-nav">
                <div class="resume-item-inner2">
                    <div>
                        <h2>公司类型</h2>
                    </div>
                    <div class="resume-bottom-line company-class">
                        &nbsp;<span>请选择公司类型</span>
                    </div>
                </div>
            </li>
        </ul>
        <!-- 公司类型-->
        <div id="resume-class-selecting" style="display: none">
            <div class="company-select-inner">
                <h2>公司类型</h2>
                <ul>
                    <li class="pppp">已上市</li>
                    <li>成熟型</li>
                    <li>成长型</li>
                    <li>初创型</li>
                </ul>
            </div>
        </div>
        <button type="button" data-role="none" class="company-class-save work-experience-save">保存</button>
    </div>
    <!-- 教育经历-->
    <div class="education-experience" style="left:100%;">
        <ul class="resume-content2">
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>学校名称</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="college-name" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="degrees" maxlength="15" placeholder="必填"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>入学时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="go-school-time" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>毕业时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="leave-school-time" maxlength="15" placeholder="必填 XX年XX月"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="major" maxlength="15" placeholder="选填"/>
                    </div>

                </div>
            </li>

        </ul>
        <button type="button" data-role="none" class="company-class-save education-experience-save">保存</button>
        <div class="project-alert" style="display: none">
            请填写完整提交
        </div>
    </div>
    <!-- 擅长领域-->
    <div class="skill-experience" style="left:100%;">
        <div class="skill-experience-bg">
            <div class="skill-experience-inner">
                <p>请自定义擅长领域（每个标签最多10个字）</p>
                <ul>
                    <li><span>X</span><b>擅长吃饭擅长吃饭吃饭</b></li>
                </ul>
                <div id="add-skill">+</div>
            </div>

        </div>
        <button type="button" class="skill-save" data-role="none">保存</button>
        <!-- 输入框-->
        <div class="skill-text" style="display: none">
            <div class="skill-text-inner">
                <h2>请添加领域</h2>
                <div class="skill-text-input">
                    <input type="text" data-role="none" placeholder="领域"/>
                </div>

                <div class="skill-text-sure">
                    <span>取消</span>
                    <span>确定</span>
                </div>
            </div>
        </div>
    </div>
    <!-- 创业方向-->
    <div class="entrepreneurship">
        <div class="entrepreneurship-inner">
            <p>请选择创业方向，最多选5个</p>
            <ul>
                <li>电子商务</li>
                <li>社交</li>
                <li>工具</li>
                <li>移动应用</li>
                <li>O2O</li>
                <li>企业服务</li>
                <li>游戏</li>
                <li>文化艺术</li>
                <li>教育</li>
                <li>营销广告</li>
                <li>媒体</li>
                <li>视频娱乐</li>
                <li>旅游</li>
                <li>健康医疗</li>
                <li>金融</li>
                <li>搜索安全</li>
                <li>创业服务</li>
                <li>站长工具</li>
                <li>硬件</li>
                <li>体育</li>
                <li>其他</li>
            </ul>
        </div>
        <button type="button" data-role="none" class="entrepreneurship-save">保存</button>

    </div>

    <button type="button" data-role="none" class="resume-save">保存</button>

</div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.min.js"></script>
<script src="${ctx}/js/common.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>

   <script type="text/javascript">
  
   </script>
</body>
</html>