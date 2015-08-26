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

<div data-role="page" data-theme="f" class="ui-body-f" id="mainpage">


        <div data-role="none" data-theme="f" class="publish-talent-header">
            <div class="publish-talent-img"></div>
            <p style="text-align: center;">上传个人头像</p>
            <div style="display: none">
            <input id="fileToUpload" style="display: none" type="file" name="upfile"></div>
        </div>
        <div data-role="none" data-theme="f" class="submitproject-content">
            <form action="" method="post">
                <div class="subcontent-box1">
                    <ul>
                        <li><span>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</span><input type="text" data-role="none" class="talent-publish-name" placeholder="个人昵称"/></li>
                        <li><span>个人微信</span><input type="text" data-role="none" class="talent-weixin-name" placeholder="微信号"/></li>
                        <li class="talent-personal-nav"><span>个人定位</span><div class="right-arrow">个人定位</div></li>
                        <li class="location-nav"><span>工作区域</span><div class="right-arrow">请选择项工作区域</div></li>
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

                <!-- 工作区域-->
                <div class="talent-location-select" style="left:100%;" id="location-select">
                    <div class="talent-location-right">
                        <div class="talent-location-header">
                            <span>项目地点</span>
                        </div>
                        <div class="talent-location-content">
                            <ul class="location-province">

                            </ul>
                            <ul class="location-city">

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 性别选择-->
                <div class="talent-sex" style="display: none">
                    <div>
                        <h2>选择性别</h2>
                        <ul>
                            <li>男</li>
                            <li>女</li>
                        </ul>
                    </div>
                </div>
                <!-- 个人描述-->
                <div class="talent-description">
                    <textarea name="talentdescription" id="talet-description" data-role="none" maxlength="30">请输入个人描述信息..</textarea>
                    <button type="button" data-role="none">保存</button>
                </div>

                <div class="subcontent-box1 subcontent-box2">
                    <ul>
                        <li class="talent-state-nav"><span>创业状态</span><div class="right-arrow">请选择创业状态</div></li>
                        <li class="talent-money-nav"><span>创业出资</span><div class="right-arrow">请选择出资状态</div></li>
                        <li class="talent-treatment-nav"><span>期望待遇</span><div class="right-arrow">请选择期望待遇</div></li>
                        <li class="talent-resume-nav"><span>个人简历</span><div class="right-arrow">点击添加</div></li>
                    </ul>
                </div>
                <!-- 创业状态-->
                <div class="talent-state2" style="display: none;">
                    <div>
                        <h2>创业状态</h2>
                        <ul>
                            <li>全职</li>
                            <li>先兼职合适时再全职</li>
                            <li>只兼职</li>
                            <li>观望学习</li>
                        </ul>
                    </div>
                </div>
                <!-- 创业出资-->
                <div class="talent-money" style="display: none;">
                    <div>
                        <h2>创业出资</h2>
                        <ul>
                            <li>没钱</li>
                            <li>可投入时间</li>
                            <li>力所能及</li>
                            <li>可大力出资</li>
                            <li>商议后定</li>
                        </ul>
                    </div>
                </div>
                <!-- 期望待遇-->
                <div class="talent-treatment" style="display: none;">
                    <div>
                        <h2>期望待遇</h2>
                        <ul>
                            <li>不要工资</li>
                            <li>基本工资</li>
                            <li>较高工资</li>
                            <li>股份期权</li>
                        </ul>
                    </div>
                </div>


                <button class="publish-talent" type="button" data-role="none"><a href="#" style="color:#fff;">发布简历</a></button>
                <div class="project-alert" style="display: none">
                    请填写完整提交
                </div>
            </form>
        </div>

</div>

<div data-theme="f" class="ui-body-f" id="resumepage" style="display: none;"></div>

<script src="${ctx}/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/js/jquery.mobile-1.4.5.min.js"></script>
<script src="${ctx}/js/swiper.min.js"></script>
<script src="${ctx}/js/common.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/ajaxfileupload.js"></script>

   <script type="text/javascript">
   
  function submitTalent(data){
	  data.talentImg = $(".publish-talent-img").attr("imgPath");
	  $.ajax({
			type : "POST",
			url : "${ctx}/talent/addTalent",
			data : data,
			success : function(msg) {
				if (msg == 'success') {
					alert('提交成功！');
				} else {
					alert(msg);
				}

			}
		});
  }
   
   	$(".publish-talent-img").click( function () { 
	   $("#fileToUpload").click();
	});
   	
  //选择文件之后执行上传  
    $("#fileToUpload").on("change", function() {  
        $.ajaxFileUpload({  
            url:"${ctx}/con/upload",  
            secureuri:false,  
            fileElementId:'fileToUpload',//file标签的id  
            dataType: 'json',//返回数据的类型  
            data:{fileType:"talent"},//一同上传的数据  
            success: function (data, status) {  
                //把图片替换  
                var obj = jQuery.parseJSON(data);  
                if(typeof(obj.status) != "undefined") {  
                    if(obj.status == "success") {  
                    	$(".publish-talent-img").css("backgroundImage","url(${ctx}"+obj.filePath +")"); 
                    	$(".publish-talent-img").attr("imgPath",obj.filePath);
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