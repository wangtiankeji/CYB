<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp"%>

    <ul class="resume-content">
        <li>
            <div class="resume-item-inner resume-item-a resume-work-experice" style="background: none">
                <div>
                    <h2>工作经历</h2>
                </div>
                <div class="regist-item-right">
                    <div class="word-click">点击添加工作经历</div>
                <ul>

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
                        <input type="text" class="entry-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月" id="entrytime"/>
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>离职时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" class="quit-time" data-role="none" maxlength="15" placeholder="必填 XX年XX月" id="quittime"/>
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
         <div class="resume-class-selecting" style="display: none">
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
        <ul class="resume-button">
            <li><button type="button" data-role="none" class="work-experience-cancel">取消</button></li>
            <li><button type="button" data-role="none" class="work-experience-save">保存</button></li>
        </ul>
       <!--  <button type="button" data-role="none" class="company-class-save work-experience-save">保存</button> -->
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
                        <input type="text" data-role="none" class="go-school-time" maxlength="15" placeholder="必填 XX年XX月" id="goschooltime" />
                    </div>
                </div>
            </li>
            <li>
                <div class="resume-item-inner2">
                    <div>
                        <h2>毕业时间</h2>
                    </div>
                    <div class="resume-bottom-line">
                        <input type="text" data-role="none" class="leave-school-time" maxlength="15" placeholder="必填 XX年XX月" id="leaveschooltime"/>
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
         <ul class="resume-button">
            <li><button type="button" data-role="none" class="education-experience-cancel">取消</button></li>
            <li><button type="button" data-role="none" class="education-experience-save">保存</button></li>
        </ul>
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
                    <!-- <li><span>X</span><b>擅长吃饭擅长吃饭吃饭</b></li> -->
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
     <script src="${ctx}/js/mobiscroll/js/mobiscroll.core-2.5.2.js" type="text/javascript"></script>
	<script src="${ctx}/js/mobiscroll/js/mobiscroll.core-2.5.2-zh.js" type="text/javascript"></script>

	<link href="${ctx}/js/mobiscroll/css/mobiscroll.core-2.5.2.css" rel="stylesheet" type="text/css" />
	<link href="${ctx}/js/mobiscroll/css/mobiscroll.animation-2.5.2.css" rel="stylesheet" type="text/css" />
	<script src="${ctx}/js/mobiscroll/js/mobiscroll.datetime-2.5.1.js" type="text/javascript"></script>
	<script src="${ctx}/js/mobiscroll/js/mobiscroll.datetime-2.5.1-zh.js" type="text/javascript"></script>

	<!-- S 可根据自己喜好引入样式风格文件 -->
	<script src="${ctx}/js/mobiscroll/js/mobiscroll.android-ics-2.5.2.js" type="text/javascript"></script>
	<link href="${ctx}/js/mobiscroll/css/mobiscroll.android-ics-2.5.2.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        $(function () {
			var currYear = (new Date()).getFullYear();	
			var opt={};
			opt.date = {preset : 'date'};
			//opt.datetime = { preset : 'datetime', minDate: new Date(2012,3,10,9,22), maxDate: new Date(2014,7,30,15,44), stepMinute: 5  };
			opt.datetime = {preset : 'datetime'};
			opt.time = {preset : 'time'};
			opt.default = {
				theme: 'android-ics light', //皮肤样式
		        display: 'modal', //显示方式 
		        mode: 'scroller', //日期选择模式
				lang:'zh',
				dateFormat: 'yyyy年mm月', // 日期格式      
				dateOrder : 'yyyymm', 
		        startYear:currYear - 50, //开始年份
		        endYear:currYear  //结束年份
			};

			$("#entrytime").val('').scroller('destroy').scroller($.extend(opt['date'], opt['default']));
			$("#quittime").val('').scroller('destroy').scroller($.extend(opt['date'], opt['default']));
			$("#goschooltime").val('').scroller('destroy').scroller($.extend(opt['date'], opt['default']));
			$("#leaveschooltime").val('').scroller('destroy').scroller($.extend(opt['date'], opt['default']));
		  	/* var optDateTime = $.extend(opt['datetime'], opt['default']);
		  	var optTime = $.extend(opt['time'], opt['default']);
		    $("#appDateTime").mobiscroll(optDateTime).datetime(optDateTime);
		    $("#appTime").mobiscroll(optTime).time(optTime); */

        });
    </script>
    
<script type="text/javascript">
//动态添加工作经历
//定义全局变量
var companyNameValue;
var positionValue;
var entryTimeValue;
var quitTimeValue;
var companyTypeValue;

function workInit(){
	companyNameValue = undefined;
	positionValue = undefined;
	entryTimeValue = undefined;
	quitTimeValue = undefined;
	companyTypeValue = undefined;
	
	$(".work-experience").find("input").val("");
	$(".company-class span").text("");
	
}
$('.word-click').on("click", function(){
	workInit();
    $('.work-experience').animate({
        'left':0
    },300)
});

$('.company-class-nav').click(function(){
    $('.resume-class-selecting').show();
});

$('.resume-class-selecting ul li').click(function(){
    $(this).addClass('company-class-active').siblings().removeClass('company-class-active');
    companyTypeValue=$(this).html();
    $('.company-class span').html(companyTypeValue).css({
        'color':'#333'
    })
    $('.resume-class-selecting').hide();

})


function showWork(obj){
	//workInit();
	var resumeWork = $("#mainpage").data("arrayWork");
	for (x in resumeWork){
		if(resumeWork[x].randomId == $(obj).attr("random")){
			$('.company-name').val(resumeWork[x].companyName);
		    $('.position').val(resumeWork[x].position);
		    $('.entry-time').val(resumeWork[x].entryTime);
		    $('.quit-time').val(resumeWork[x].quitTime);
		    $('.company-class span').html(resumeWork[x].companyType).css({
		        'color':'#333'
		    });
			break;
		}
	}
	$("#mainpage").removeData("arrayWork");
	$(obj).detach();
	$('.work-experience').animate({
        'left':0
    },300)
}

$('.work-experience-cancel').click(function(){
	//$('li[random='+ $(this).attr("random")+']').detach();
	 $('.work-experience').animate({
         "left":'100%'
     },300)
});
//
$('.work-experience-save').click(function(){
    //获得数据
    companyNameValue=$('.company-name').val();
    positionValue=$('.position').val();
    entryTimeValue=$('.entry-time').val();
    quitTimeValue=$('.quit-time').val();
    companyTypeValue=$('.company-class span').html();

    //判断是否为空
    if(companyNameValue==''||positionValue==''||entryTimeValue==''||quitTimeValue==''||companyTypeValue==undefined){
        $('.project-alert').show();
        var eduTimer=setTimeout(function(){
            $('.project-alert').hide();
        },1000)

    }else{
        $('.work-experience').animate({
            "left":'100%'
        },300)
        //这是工作经历--数据==================》
        var ran = getRandom(100000);
        var workExpObj={
        	randomId:ran,
            companyName:companyNameValue,
            position:positionValue,
            entryTime:entryTimeValue,
            quitTime:quitTimeValue,
            companyType:companyTypeValue
        }
        
        //动态生成教育经历列表
        $('.resume-work-experice ul').append("<li onclick='showWork(this)' random='"+ran+"'>" +"<h2>"+companyNameValue+"</h2>"+"<p>"+entryTimeValue+" 至 "+quitTimeValue+"</p>"+"</li>");
        
        var arrayWork = $("#mainpage").data("arrayWork");
        if(!arrayWork){
        	arrayWork = new Array();
        }
        arrayWork.push(workExpObj);
        
        $("#mainpage").data("arrayWork",arrayWork);
    }

})




    //动态添加教育经历
    $('.edu-click').click(function(){
    	eduInit();
        $('.education-experience').animate({
            'left':'0'
        },300)
    })
    $('.education-experience-cancel').click(function(){
    	 $('.education-experience').animate({
             "left":'100%'
         },300)
    })
    //定义全局变量
    var collegeNameValue;
    var degreesValue;
    var goSchoolTimeValue;
    var leaveSchoolTimeValue;
    var majorValue;

    function eduInit(){
    	collegeNameValue = undefined;
    	degreesValue = undefined;
    	goSchoolTimeValue = undefined;
    	leaveSchoolTimeValue = undefined;
    	majorValue = undefined;
    	
    	$(".education-experience").find("input").val("");
    	
    }

    $('.education-experience-save').click(function(){
        collegeNameValue=$('.college-name').val()
        degreesValue=$('.degrees').val()
        goSchoolTimeValue=$('.go-school-time').val()
        leaveSchoolTimeValue=$('.leave-school-time').val()
        majorValue=$('.major').val()


        if(collegeNameValue==''||degreesValue==''||goSchoolTimeValue==''||leaveSchoolTimeValue==''){
           $('.project-alert').show();
            var eduTimer=setTimeout(function(){
                $('.project-alert').hide();
            },1000)

        }else{
            //这是教育经历--数据==================》
             var ran = getRandom(100000);
            $('.education-experience').animate({
                "left":'100%'
            },300)
            var eduExpObj={
                collegeName:collegeNameValue,
                degrees:degreesValue,
                entryTime:goSchoolTimeValue,
                quitTime:leaveSchoolTimeValue,
                major:majorValue
            }
         //动态生成教育经历列表
         $('.resume-education-experice ul').append("<li onclick='showEdu(this)' random='"+ran+"'>" +"<h2>"+collegeNameValue+"</h2>"+"<p>"+goSchoolTimeValue+" 至 "+leaveSchoolTimeValue+"</p>"+"</li>");

            var arrayEdu = $("#mainpage").data("arrayEdu");
            if(!arrayEdu){
            	arrayEdu = new Array();
            }
            arrayEdu.push(eduExpObj);
            
            $("#mainpage").data("arrayEdu",arrayEdu);
        }
    })
    
    function showEdu(obj){
	var arrayEdu = $("#mainpage").data("arrayEdu");
	for (x in arrayEdu){
		if(arrayEdu[x].randomId == $(obj).attr("random")){
			$('.college-name').val(arrayEdu[x].collegeName);
		    $('.degrees').val(arrayEdu[x].degrees);
		    $('.go-school-time').val(arrayEdu[x].entryTime);
		    $('.leave-school-time').val(arrayEdu[x].quitTime);
		    $('.major').val(arrayEdu[x].major);
			break;
		}
	}
	$("#mainpage").removeData("arrayEdu");
	$(obj).detach();
	$('.education-experience').animate({
        'left':0
    },300)
}
    
    
    //动态添加擅长领域
        //定义全局变量
        var skillValue;
    $('.skill-click').click(function(){
        $('.resume-skill-nav ul li').remove();
        $('.skill-experience').animate({
            'left':'0'
        },300)
    })
    $('#add-skill').click(function(){
        $('.skill-text').show();
    })
    $('.skill-text-sure span:first-child').click(function(){
        $('.skill-text').hide();
    })
    $('.skill-text-sure span:last-child').click(function(){
        skillValue=$('.skill-text-inner input').val();
        $('.skill-experience ul').append("<li>"+"<span>X</span>"+"<b>"+skillValue+"</b>"+"</li>");
        $('.skill-text').hide();
        $('.skill-experience ul li').click(function(){
            $(this).children('span').show();
            $(this).children('span').click(function(){
                $(this).parent().remove();
            })
        })
    })
    $('.skill-save').click(function(){
        var skillArr=$('.skill-experience ul li').text();
        skillArr=skillArr.split('X');
        var skill='';
       //console.log(skillArr) ;
        for(var i=0;i<skillArr.length;i++){
            if(skillArr[i]!=''){
                $('.resume-skill-nav ul').append('<li>'+skillArr[i]+'</li>');
                skill += skillArr[i] +',';
            }
        }
        $('.skill-experience').animate({
            'left':'100%'
        },300);
        $("#mainpage").data("skill",skill.substring(0, skill.length-1));
    })

    //创业方向
    $('.entrepreneurship-nav').click(function(){
        $('.entrepreneurship-nav ul li').remove();
        $('.entrepreneurship').animate({
            'left':'0'
        },300)
    })

    $('.entrepreneurship ul li').click(function(){
       if($(this).is('.entrepreneurship-active')){
           $(this).removeClass('entrepreneurship-active');
       }else{
           if($('.entrepreneurship-active').length<5){
               $(this).addClass('entrepreneurship-active');
           }
       }

    });
    $('.entrepreneurship-save').click(function(){
    	var entrep = "";
        var arr=$('.entrepreneurship ul li');
        for(var i=0;i<arr.length;i++){
            var c=$('.entrepreneurship ul li').eq(i);
            if(c.is('.entrepreneurship-active')){
                $('.entrepreneurship-nav ul').append('<li>'+ c.text()+'</li>');
                entrep += c.text()+','
            }
        }
        $('.entrepreneurship').animate({
            'left':'100%'
        },300);
        $("#mainpage").data("entrep",entrep.substring(0, entrep.length-1));
    })

    $('.resume-save').click(function(){
        //WeixinJSBridge.invoke('closeWindow',{})
    	 $("#resumepage").hide();
		 $("#mainpage").show();
    })

    function getRandom(n){
       return Math.floor(Math.random()*n+1)
    }

</script>

