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
<!--发项目首页-->
<div data-role="page" data-theme="f" class="ui-body-f">
    <div data-role="none" data-theme="f" class="publish-talent-header">
        <div class="publish-talent-img"></div>
        <p style="text-align: center;">上传个人头像</p>
    </div>
    <div data-role="none" data-theme="f" class="submitproject-content">
        <form action="" method="post">
            <div class="subcontent-box1">
                <ul>
                    <li><span>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</span><input type="text" class="talent-name" data-role="none" placeholder="个人昵称"/></li>
                    <li class="talent-personal-nav"><span>个人定位</span><div class="right-arrow">个人定位</div></li>
                    <li class="talent-location-nav"><span>工作区域</span><div class="right-arrow">请选择项工作区域</div></li>
                    <li class="talent-sex-nav"><span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span><div class="right-arrow">性别</div></li>
                    <li class="talent-describe-nav"><span>个人描述</span><div class="right-arrow">个人描述（限30个字）</div></li>
                </ul>
            </div>



            <!-- 个人定位-->
            <div class="talent-personal" style="display: none;">
                <div>
                    <h2>个人定位</h2>
                    <ul>
                        <li>技术</li>
                        <li>营销</li>
                        <li>运营</li>
                        <li>设计</li>
                        <li>产品</li>
                        <li>其他</li>
                    </ul>
                </div>
            </div>

            <!-- 项目地区-->
            <div class="project-location-select" style="left:100%;">
                <div class="project-location-right">
                    <div class="project-location-header">
                        <span>项目地点</span>
                        <b>确定</b>
                    </div>
                    <div class="project-location-content">
                        <ul class="location-province">

                        </ul>
                        <ul class="location-city">

                        </ul>
                    </div>
                </div>
            </div>
            <!-- 项目方向-->
            <div class="project-direction" style="display: none">
                <div>
                    <h2>项目方向</h2>
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
                        <li>站长工具</li>
                        <li>硬件</li>
                        <li>体育</li>
                        <li>其他</li>
                    </ul>
                </div>
            </div>

            <div class="subcontent-box1 subcontent-box2">
                <ul>
                    <li class="project-description-nav"><span>创业状态</span><div class="right-arrow">请选择创业状态</div></li>
                    <li class="project-profile-nav"><span>创业出资</span><div class="right-arrow">请选择出资状态</div></li>
                    <li class="project-financing-nav"><span>期望待遇</span><div class="right-arrow">请选择期望待遇</div></li>
                    <li class="project-link-nav"><span>个人简历</span><div class="right-arrow">点击添加</div></li>
                </ul>
            </div>
            <!-- 项目简述-->
            <div class="project-description">
                <textarea name="description" id="description" data-role="none" maxlength="30">请输入项目简介..</textarea>
                <button type="button" data-role="none">保存</button>
            </div>
            <!-- 项目介绍-->
            <div class="project-profile">
                <textarea name="profile" id="profile" data-role="none" maxlength="300">请输入项目介绍..</textarea>
                <p>*可以从产品或项目的背景、优势、前景等方面介绍自己的项目</p>
                <button type="button" data-role="none">保存</button>
            </div>
            <!-- 融资状态-->
            <div class="project-financing" style="display: none">
                <div>
                    <h2>当前融资状态</h2>
                    <ul>
                        <li>等待投资</li>
                        <li>自己出资</li>
                        <li>天使投资</li>
                        <li>A轮融资</li>
                        <li>B轮融资</li>
                        <li>C轮融资</li>
                    </ul>
                    <h2>融资金额</h2>
                    <div class="project-financing-turn">
                        <input type="tel" data-role="none"/>
                        <span>万/人民币</span>
                    </div>
                    <div class="project-financing-sure">
                        <button type="button" data-role="none">确认</button>
                    </div>
                </div>
            </div>
            <!-- 合伙人招募-->
            <div class="project-partner" style="left:100%;">
                <ul>
                    <li class="partner-role">
                        <div>
                            <h2>角色</h2>
                            <ul>
                                <li>技术</li>
                                <li>营销</li>
                                <li>运营</li>
                                <li>设计</li>
                                <li>产品</li>
                                <li>其它</li>
                            </ul>
                        </div>
                    </li>
                    <li class="partner-cooperation">
                        <div>
                            <h2>合作方式</h2>
                            <ul>
                                <li>全职</li>
                                <li>兼职</li>
                                <li>面议</li>
                            </ul>
                        </div>
                    </li>
                    <li class="partner-salary">
                        <div>
                            <h2>薪资水平</h2>
                            <ul>
                                <li>市场水平</li>
                                <li>基本保障</li>
                                <li>无工资</li>
                            </ul>
                        </div>
                    </li>
                    <li class="partner-stock">
                        <div>
                            <h2>股票期权</h2>
                            <div class="stock">点击选择股票期权比例</div>
                        </div>
                    </li>
                    <li>
                        <div>
                            <h2>招募宣言</h2>
                            <div class="explain">点击填写补充说明</div>
                        </div>
                    </li>
                </ul>
                <button class="project-partner-save" type="button" data-role="none">保存</button>
                <!-- 股票期权比例-->
                <div class="stock-proportion" style="display: none">
                    <div>
                        <h2>股票期权比例</h2>
                        <ul>
                            <li>低于1%</li>
                            <li>1%~5%</li>
                            <li>5%~10%</li>
                            <li>10%~15%</li>
                            <li>15%~20%</li>
                            <li>20%~25%</li>
                            <li>25%~30%</li>
                            <li>30%~35%</li>
                            <li>35%~40%</li>
                            <li>高于40%</li>
                        </ul>
                    </div>
                </div>
                <!-- 招募宣言-->
                <div class="project-declaration">
                    <textarea name="declaration" id="declaration" data-role="none" maxlength="30">请输入招募宣言..</textarea>
                    <button type="button" data-role="none">保存</button>
                </div>
            </div>
            <!-- 产品链接-->
            <div class="project-link">
                <textarea name="link" id="link" data-role="none" maxlength="30">请输入WEB链接..</textarea>
                <button type="button" data-role="none">保存</button>
            </div>
            <button class="publish-project" type="button" data-role="none">发布简历</button>
        </form>
    </div>
</div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.min.js"></script>
<script src="${ctx}/js/common.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>

   <script type="text/javascript">
   $(".publish-project").click( function () { 
	   projectObj.projectName = $(".project-name").val();
	   $.ajax({
			type : "POST",
			url : "${ctx}/project/addProject",
			data : projectObj,
			success : function(msg) {
				if (msg == 'success') {
					alert('提交成功！');
				} else {
					alert(msg);
				}

			}
		});
	});
   
   	$(".project-img").click( function () { 
	   $("#fileToUpload").click();
	});
   	
  //选择文件之后执行上传  
    $("#fileToUpload").on("change", function() {  
        $.ajaxFileUpload({  
            url:"${ctx}/con/upload",  
            secureuri:false,  
            fileElementId:'fileToUpload',//file标签的id  
            dataType: 'json',//返回数据的类型  
            data:{fileType:"project"},//一同上传的数据  
            success: function (data, status) {  
                //把图片替换  
                var obj = jQuery.parseJSON(data);  
                if(typeof(obj.status) != "undefined") {  
                    if(obj.status == "success") {  
                    	projectObj.projectImg = obj.filePath;
                    	//$("#eventImg").val("${ctx}"+obj.filePath);
     	                $("#proimg").attr("src", "${ctx}"+obj.filePath);  
                    } else {  
                        alert(obj.msg);  
                    }  
                }
               
            },  
            error: function (data, status, e) {  
                alert(e);  
            }  
        });  
    });  
   </script>
</body>
</html>