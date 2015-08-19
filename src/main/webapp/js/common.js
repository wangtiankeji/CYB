//省份城市列表
var pro = ["全部","北京","天津","上海","重庆","河北","山西","辽宁","吉林","黑龙江","江苏","浙江","安徽","福建","江西","山东","河南","湖北","湖南","广东","海南","四川","贵州","云南","陕西","甘肃","青海","内蒙古","广西","西藏","宁夏","新疆","香港","澳门","台湾"];
var city = {北京:["东城区","西城区","崇文区","宣武区","朝阳区","海淀区","丰台区","石景山区","房山区","通州区","顺义区","昌平区","大兴区","怀柔区","平谷区","门头沟区","密云县","延庆县"],天津:["和平区","河东区","河西区","南开区","河北区","红桥区","东丽区","西青区","北辰区","津南区","武清区","宝坻区","滨海新区","静海县","宁河县","蓟县"],上海:["黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","奉贤区","崇明县"],重庆:["渝中区","大渡口区","江北区","南岸区","北碚区","渝北区","巴南区","长寿区","双桥区","沙坪坝区","万盛区","万州区","涪陵区","黔江区","永川区","合川区","江津区","九龙坡区","南川区","綦江县","潼南县","荣昌县","璧山县","大足县","铜梁县","梁平县","开县","忠县","城口县","垫江县","武隆县","丰都县","奉节县","云阳县","巫溪县","巫山县","石柱土家族自治县","秀山土家族苗族自治县","酉阳土家族苗族自治县","彭水苗族土家族自治县"],河北:["石家庄","唐山","秦皇岛","邯郸","邢台","保定","张家口","承德","沧州","廊坊","衡水"],山西:["太原","大同","阳泉","长治","晋城","朔州","晋中","运城","忻州","临汾","吕梁"],辽宁:["沈阳","大连","鞍山","抚顺","本溪","丹东","锦州","营口","阜新","辽阳","盘锦","铁岭","朝阳","葫芦岛"],吉林:["长春","吉林","四平","辽源","通化","白山","松原","白城","延边朝鲜族自治州"],黑龙江:["哈尔滨","齐齐哈尔","鹤岗","双鸭山","鸡西","大庆","伊春","牡丹江","佳木斯","七台河","黑河","绥化","大兴安岭"],江苏:["南京","苏州","无锡","常州","镇江","南通","泰州","扬州","盐城","连云港","徐州","淮安","宿迁"],浙江:["杭州","宁波","温州","嘉兴","湖州","绍兴","金华","衢州","舟山","台州","丽水"],安徽:["合肥","芜湖","蚌埠","淮南","马鞍山","淮北","铜陵","安庆","黄山","滁州","阜阳","宿州","巢湖","六安","亳州","池州","宣城"],福建:["福州","厦门","莆田","三明","泉州","漳州","南平","龙岩","宁德"],江西:["南昌","景德镇","萍乡","九江","新余","鹰潭","赣州","吉安","宜春","抚州","上饶"],山东:["济南","青岛","淄博","枣庄","东营","烟台","潍坊","济宁","泰安","威海","日照","莱芜","临沂","德州","聊城","滨州","菏泽"],河南:["郑州","开封","洛阳","平顶山","安阳","鹤壁","新乡","焦作","濮阳","许昌","漯河","三门峡","南阳","商丘","信阳","周口","驻马店"],湖北:["武汉","黄石","十堰","荆州","宜昌","襄樊","鄂州","荆门","孝感","黄冈","咸宁","随州","恩施"],湖南:["长沙","株洲","湘潭","衡阳","邵阳","岳阳","常德","张家界","益阳","郴州","永州","怀化","娄底","湘西"],广东:["广州","深圳","珠海","汕头","韶关","佛山","江门","湛江","茂名","肇庆","惠州","梅州","汕尾","河源","阳江","清远","东莞","中山","潮州","揭阳","云浮"],海南:["海口","三亚"],四川:["成都","自贡","攀枝花","泸州","德阳","绵阳","广元","遂宁","内江","乐山","南充","眉山","宜宾","广安","达州","雅安","巴中","资阳","阿坝","甘孜","凉山"],贵州:["贵阳","六盘水","遵义","安顺","铜仁","毕节","黔西南","黔东南","黔南"],云南:["昆明","曲靖","玉溪","保山","昭通","丽江","普洱","临沧","德宏","怒江","迪庆","大理","楚雄","红河","文山","西双版纳"],陕西:["西安","铜川","宝鸡","咸阳","渭南","延安","汉中","榆林","安康","商洛"],甘肃:["兰州","嘉峪关","金昌","白银","天水","武威","酒泉","张掖","庆阳","平凉","定西","陇南","临夏","甘南"],青海:["西宁","海东","海北","海南","黄南","果洛","玉树","海西"],内蒙古:["呼和浩特","包头","乌海","赤峰","通辽","鄂尔多斯","呼伦贝尔","巴彦淖尔","乌兰察布","锡林郭勒盟","兴安盟","阿拉善盟"],广西:["南宁","柳州","桂林","梧州","北海","防城港","钦州","贵港","玉林","百色","贺州","河池","来宾","崇左"],西藏:["拉萨","那曲","昌都","林芝","山南","日喀则","阿里"],宁夏:["银川","石嘴山","吴忠","固原","中卫"],新疆维吾尔自治区:["乌鲁木齐","克拉玛依","吐鲁番","哈密","和田","阿克苏","喀什","克孜勒苏","巴音郭楞","昌吉","博尔塔拉","伊犁","塔城","阿勒泰"],香港:["香港岛","九龙东","九龙西","新界东","新界西"],澳门:["澳门半岛","离岛"],台湾:["台北","高雄","基隆","新竹","台中","嘉义","台南市"]};


$(document).ready(function () {
//找项目排序功能实现------------------------start
    $('.project-sort').click(function(){
        $('.project-sort').css({'color':'#5cce49'})
        headersrc=$(this).css("background-image");
        headerarr=headersrc.split("_");
        headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png";
        headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png";
        $(this).css({'background-image':headersrc2});
        $('.project-sort-drop').slideDown("fast");
    });

    $('.project-sort-drop ul li').click(function(){
        $(this).css({'color':'#5cce49'}).siblings().css({'color':'#333'});
        $('.project-sort').html($(this).text());
        //背景图标状态切换-活动状态
        src=$(this).css("background-image");
        arr=src.split("_");
        src2=arr[0]+"_"+arr[1]+"_"+"pre.png";
        $(this).css({'background-image':src2});
        $(this).children('span').show().parent().siblings().children("span").hide();
        //背景图标状态切换-非活动状态
        sibsrc=$(this).siblings().eq(0).css("background-image")
        arr2=sibsrc.split("_");
        src3=arr2[0]+"_"+arr2[1]+"_"+"nor.png";
        $(this).siblings().eq(0).css({'background-image':src3});

        sibsrc2=$(this).siblings().eq(1).css("background-image")
        arr3=sibsrc2.split("_");
        src4=arr3[0]+"_"+arr3[1]+"_"+"nor.png";
        $(this).siblings().eq(1).css({'background-image':src4});

        //选择后收起来的状态
        $('.project-sort-drop').slideUp("fast");
        $('.project-sort').css({
            'background-image':headersrc3,
            'color':'#333'
        });
    });

    $('.talent-sort-drop ul li').click(function(){
        $(this).css({'color':'#5cce49'}).siblings().css({'color':'#333'});
        $('.talent-sort').html($(this).text());

        //背景图标状态切换-活动状态
        src=$(this).css("background-image");
        arr=src.split("_");
        src2=arr[0]+"_"+arr[1]+"_"+"pre.png";
        $(this).css({'background-image':src2});
        $(this).children('span').show().parent().siblings().children("span").hide();
        //背景图标状态切换-非活动状态
        sibsrc=$(this).siblings().eq(0).css("background-image")
        arr2=sibsrc.split("_");
        src3=arr2[0]+"_"+arr2[1]+"_"+"nor.png";
        $(this).siblings().eq(0).css({'background-image':src3});

        //选择后收起来的状态
        $('.talent-sort-drop').slideUp("fast");
        $('.talent-sort').css({
            'background-image':headersrc3,
            'color':'#333'
        });
    });


//找项目排序功能实现------------------------end



//找项目筛选功能实现------------------------start
    //定义筛选部分的全局变量
    var projectScreenValue;
    var locationScreenValue;
    var timeScreenValue;
    var partnerScreenValue;


    //找项目筛选菜单栏
    $('.project-screening').click(function () {
        $('.project-screening').css({'color': '#5cce49'})
        headersrc = $(this).css("background-image");
        headerarr = headersrc.split("_");
        headersrc2 = headerarr[0] + "_" + headerarr[1] + "_" + "up.png";
        headersrc3 = headerarr[0] + "_" + headerarr[1] + "_" + "down.png";
        $(this).css({'background-image': headersrc2});
        $('.project-screen-drop').slideDown("fast");
    });

    //筛选-动态生成省份
    for (var i = 0; i < pro.length; i++) {
        if (i > 0) {
            $('.location-province').append("<li>" + pro[i] + "</li>");
        }
        var n = (i + 1) % 4 ? "5%" : 0;
        $(".location-inner-state ul").append("<li style='margin-right:" + n + "'>" + pro[i] + "</li>");
    }

    //筛选--项目状态
    $('.project-inner-state ul li').click(function () {
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        //项目状态值====
        projectScreenValue = $(this).html();

    })

    //筛选--所在地区
    $('.location-inner-state h2 span').click(function () {
        $('.location-inner-state').animate({
            height: "20rem"
        }, 500)
    })
    $('.location li').bind('click', function () {
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        $('.location-inner-state').animate({
            height: "4rem"
        }, 500);
        locationScreenValue = $(this).html();
    });
    $('.location li:first-child').addClass('screen-active');

    //筛选--发布时间
    $('.time-inner-state ul li').click(function () {
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        timeScreenValue = $(this).html();
    })

    //筛选--需求合伙人
    $('.partner-inner-state ul li').click(function () {
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        partnerScreenValue = $(this).html();
    })

    //筛选确定按钮
    $('.project-inner-button button').click(function () {
        $('.project-screen-drop').slideUp("fast");
        $('.project-screening').css({
            'background-image': headersrc3,
            'color': '#333'
        });

        //这是筛选部分的数据对象==================》
        if (projectScreenValue == undefined) {
            projectScreenValue = '全部'
        }
        ;
        if (locationScreenValue == undefined) {
            projectScreenValue = '全部'
        }
        ;
        if (timeScreenValue == undefined) {
            projectScreenValue = '全部'
        }
        ;
        if (partnerScreenValue == undefined) {
            projectScreenValue = '全部'
        }
        ;
        //数据对象
        var screenObj = {
            projectScreen: projectScreenValue,
            locationScreen: locationScreenValue,
            timeScreen: timeScreenValue,
            partnerScreen: partnerScreenValue
        }
    });
//找项目筛选功能实现-------------------------end





//发项目功能实现---------------------------start
    //定义该区域的全局变量
    var projectStateValue;
    var provinceValue;
    var cityValue;
    var projectDirectionValue;
    var projectDescriptionValue;
    var projectProfileValue;
    var projectFinancingValue;
    var projectFinancingValue1;
    var projectFinancingValue2;
    var projectLinkValue;
    var projectNameValue=$('.project-name').val();
    var projectTeamValue=$('.project-team-select').val();

    //发项目---项目阶段状态选择
    $('.project-progress-nav').click(function () {
        $('.project-progress').show();
    });
    $('.project-progress ul li').click(function () {
        $(this).addClass("project-progress-active").siblings().removeClass("project-progress-active");
        clearTimeout(timer2);
        var timer2 = setTimeout(function () {
            $('.project-progress').hide();
        }, 100)
        $('.project-progress-nav div').html($(this).html()).css({'color': '#333'});
        projectStateValue = $(this).html();
    });


    //发项目---项目地区选择
        //默认显示北京
    var beijing = city['北京'];
    $('.location-province li:first-child').addClass('location-province-active')
    for (var j = 0; j < beijing.length; j++) {
        $('.location-city').append("<li>" + beijing[j] + "</li>");
    }
    $('.location-city li').click(function () {
        $(this).addClass('location-city-active').siblings().removeClass('location-city-active')
        $('.project-location-header b').addClass('location-city-active')
        $('.talent-location-header b').addClass('location-city-active')
        provinceValue = '北京';
        cityValue = $(this).html();
    });
        //项目地区显示
    $('.project-location-nav').click(function () {
        $('.project-location-select').animate({
            left: '0'
        }, 500)
    })
        //发项目---点击省市切换

    $('.location-province li').click(function () {
        $(this).addClass('location-province-active').siblings().removeClass('location-province-active');

        provinceValue = $(this).html();
        $(".location-city").empty();


        var cities = city[$(this).text()];
        for (var j = 0; j < cities.length; j++) {
            $('.location-city').append("<li>" + cities[j] + "</li>");
        }
        //发项目---城市选择点击样式切换
        $('.location-city li').click(function () {
            $(this).addClass('location-city-active').siblings().removeClass('location-city-active')
            $('.project-location-header b').addClass('location-city-active')
            $('.talent-location-header b').addClass('location-city-active')
            if(cityValue==undefined){
                cityValue = $(this).html();
            }

        });
    });
        //点击隐藏地区选择
    $('.project-location-header b').click(function(){
        //将获得的省市添加到页面
        if(cityValue==undefined){
            provinceValue='北京';
            cityValue='东城区'
        }
        $('.project-location-nav div').html(provinceValue+' '+cityValue).css({
            'color':'#333'
        });
        //省市页面切入过度效果
        $('.project-location-select').animate({
            left:'100%'
        },500)
    })

    //发项目---项目方向
    $('.project-direction-nav').click(function(){
        $('.project-direction').show();
    })
    $('.project-direction ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        clearTimeout('timer3');
        var timer3=setTimeout(function(){
            $('.project-direction').hide();
        },100)
        $('.project-direction-nav div').html($(this).html()).css({
            'color':'#333'
        })
        projectDirectionValue=$(this).html();
    })

    //发项目---项目简述
    $('.project-description-nav').click(function(){
        $('.project-description').animate({
            left:0
        },300)
    })
    $('.project-description button').click(function(){
        $('.project-description').animate({
            left:'100%'
        },300);
        projectDescriptionValue=$('.project-description textarea').val();
        console.log(projectDescriptionValue);
        if(projectDescriptionValue=='' || projectDescriptionValue=='请输入项目简介..'){
            $('.project-description-nav>div').html('请输入项目简介..').css({
                'color':'#b6b6b6'
            });
        }else{
            $('.project-description-nav>div').html(projectDescriptionValue).css({
                'color':'#333'
            });
        }

    })
        //清除提示文字
    $('.project-description textarea').focus(function(){
        if($('.project-description textarea').val()=='请输入项目简介..'){
            $('.project-description textarea').val('');
        }
    })

    //发项目---项目介绍
    $('.project-profile-nav').click(function(){
        $('.project-profile').animate({
            left:0
        },300)
    });
    $('.project-profile button').click(function(){
        $('.project-profile').animate({
            left:'100%'
        },300);
        projectProfileValue=$('.project-profile textarea').val();

        if(projectProfileValue==''||projectProfileValue=='请输入项目介绍..'){
            $('.project-profile-nav>div').html('请输入项目介绍..').css({
                'color':'#b6b6b6'
            });
        }else{
            $('.project-profile-nav>div').html(projectProfileValue).css({
                'color':'#333'
            });
        }
    });
        //清除提示文字
    $('.project-profile textarea').focus(function(){
        if($('.project-profile textarea').val()=='请输入项目介绍..'){
            $('.project-profile textarea').val('');
        }
    })

    //发项目---融资状态
    $('.project-financing-nav').click(function(){
        $('.project-financing').show();
    })
    $('.project-financing ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        projectFinancingValue1=$(this).html();
    })
    $('.project-financing-turn span').click(function(){
        if($('.project-financing-turn span').html()=='万/人民币'){
            $('.project-financing-turn span').html('万/美元')
        }else{
            $('.project-financing-turn span').html('万/人民币')
        }
    })
    $('.project-financing-sure button').click(function(){
        if($('.project-financing-turn input').val()==''){
            projectFinancingValue2='0';
        }else{
            projectFinancingValue2=$('.project-financing-turn input').val();
        }
        projectFinancingValue=projectFinancingValue1+' '+projectFinancingValue2+' '+$('.project-financing-turn span').html();
        $('.project-financing-nav div').html(projectFinancingValue).css({
            'color':'#333'
        });
        $('.project-financing').hide();
    })

    //发项目---产品链接
    $('.project-link-nav').click(function(){
        $('.project-link').animate({
            'left':0
        },200)
    })
    $('.project-link textarea').focus(function(){
        if($('.project-link textarea').val()=='请输入WEB链接..'){
            $('.project-link textarea').val('');
        }
    })
    $('.project-link button').click(function(){
        projectLinkValue=$('.project-link textarea').val();
        $('.project-link').animate({
            'left':'100%'
        },200);
        $('.project-link-nav div').html('点击查看').css({
            'color':'#333',
            'fontSize':'0.9rem'
        })
    })

    //这是发布项目部分的数据对象==================》
    $('.publish-project').click(function(){
        if(projectStateValue==undefined||provinceValue==undefined||cityValue==undefined||projectDirectionValue==undefined||projectProfileValue==undefined||projectFinancingValue==undefined||projectNameValue==undefined||projectTeamValue==undefined){
            clearTimeout(publishProjecttimer);
            $('.project-alert').show();
            var publishProjecttimer=setTimeout(function(){
                $('.project-alert').hide();
            },1000)

        }else{
           // window.open('project.html')
            var publishProjectObj={
                projectState:projectStateValue,
                projectArea:provinceValue+" "+cityValue,
                projectDirect:projectDirectionValue,
                projectIntro:projectDescriptionValue,
                projectDes:projectProfileValue,
                financingState:projectFinancingValue1,
                financingAmount:projectFinancingValue2,
                systemUrl:projectLinkValue,
                projectName:$('.project-name').val(),
                peopleNum:$('.project-team-select').val(),
                projectImg:$('.project-img img').attr("src")
            }
            
            publishProject(publishProjectObj);
        }
    })



    //招募合伙人
        //定义全局变量
        var roleValue;
        var cooperationValue;
        var salaryValue;
        var stockProportionValue;
        var projectDeclarationValue;

    $('.project-partner-nav2').click(function(){
    	initPartner();
        $('.project-partner').animate({
            'left':'0'
        },300)
    })
    $('.partner-role ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        roleValue=$(this).html();
    })
    $('.partner-cooperation ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        cooperationValue=$(this).html();
    })
    $('.partner-salary ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        salaryValue=$(this).html();
    })
    $('.partner-stock div').click(function(){
        $('.stock-proportion').show();
    })
    $('.stock-proportion ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        $('.stock').html($(this).html());
        stockProportionValue=$(this).html();
        clearTimeout(proportionTimer)
        var proportionTimer=setTimeout(function(){
            $('.stock-proportion').hide();
        },200)
    })
    $('.explain').click(function(){
        $('.project-declaration').animate({
            'left':'0'
        },200)
    })
    $('.project-declaration textarea').focus(function(){
        if($('.project-declaration textarea').val()=='请输入招募宣言..'){
            $('.project-declaration textarea').val('');
        }
    })
    $('.project-declaration button').click(function(){
        $('.project-declaration').animate({
            'left':'100%'
        },200)
        projectDeclarationValue=$('.project-declaration textarea').val();
        if(projectDeclarationValue==''||projectDeclarationValue=='请输入招募宣言..'){
            $('.explain').html('点击填写补充说明');
        }else{
            $('.explain').html(projectDeclarationValue);
        }
    });

    
    $('.project-partner-cancel').on('click', function() {
		$('.project-partner').animate({
			'left' : '100%'
		}, 200);
		removePartner($(this).attr("random"));
	});

	function removePartner(ran) {
		$(".submitproject-content").removeData("partner" + ran);
		var arrayPartner = $(".submitproject-content").data("partner");
		var num = jQuery.inArray(ran, arrayPartner);
		arrayPartner.splice(num, 1);
		$('.project-partner-cancel').detach();
		$('#li' + ran).detach();
	}
	
	 $('.select-li').on('click', function() {
		initPartner();
		var ran = $(this).attr("random");
		var partner = $(".submitproject-content").data("partner" + ran);
		$(".partner-role ul li:contains('" + partner.partnerRole + "')").addClass('screen-active');
		$(".partner-cooperation ul li:contains('" + partner.cooperationMode + "')").addClass('screen-active');
		$(".partner-salary ul li:contains('" + partner.salaryType + "')").addClass('screen-active');
		$('.stock').html(partner.optionProportion);
    	$('.explain').html(partner.recruitManifesto);
    	$(".stock-proportion div ul li:contains('" + partner.optionProportion + "')").addClass('screen-active');
    	roleValue = partner.partnerRole;
        cooperationValue = partner.cooperationMode;
        salaryValue = partner.salaryType;
        stockProportionValue = partner.optionProportion;
        projectDeclarationValue = partner.optionProportion;

		$('.project-partner-save').after('<button class="project-partner-cancel" type="button" random="'+ran+'" data-role="none">取消</button>');
		$('.project-partner-save').attr("random",ran);
		$('.project-partner').animate({
			'left' : '0'
		}, 300)
	})
	
	
	 function addPartner(){
    	 $('.project-partner').animate({
             'left':'100%'
         },200);
        var ran = getRandom(100000);
         $('.project-partner-selected').append("<li random='"+ran+"' class='select-li' id='li"+ran+"'>"+roleValue+"</li>");
        // $('.project-partner-save').html('取消该项');
        
         //这是招募合伙人的数据对象==================》
         var partnerProjectObj={
         	partnerRole:roleValue,
         	cooperationMode:cooperationValue,
         	salaryType:salaryValue,
         	optionProportion:stockProportionValue,
         	recruitManifesto:projectDeclarationValue
         }
         var arrayPartner = $(".submitproject-content").data("partner");
         if(!arrayPartner){
         	arrayPartner = new Array();
         }
         arrayPartner.push(ran);
         
         $(".submitproject-content").data("partner",arrayPartner);
         $(".submitproject-content").data("partner"+ran,partnerProjectObj);
    }

    $('.project-partner-save').click(function(){
    	
        if(roleValue==undefined||cooperationValue==undefined||salaryValue==undefined||stockProportionValue==undefined){
            clearTimeout(publishProjecttimer);
            $('.project-alert').show();
            var publishProjecttimer=setTimeout(function(){
                $('.project-alert').hide();
            },1000);
        }else{
        	var ran = $(this).attr("random");
        	if(ran != undefined&& ran!=''){
        		removePartner(ran);
        	}
        	addPartner();
        }

    });

    function initPartner(){
    	$('.partner-role ul li').removeClass();
    	$('.partner-cooperation ul li').removeClass();
    	$('.partner-salary ul li').removeClass();
    	$('.stock').html("");
    	$('.explain').html("");
    	$('.stock-proportion div ul li').removeClass();
    	$('.project-partner-cancel').detach();
    	$('.project-partner-save').attr("random","");
    	roleValue = undefined;
        cooperationValue = undefined;
        salaryValue = undefined;
        stockProportionValue = undefined;
        projectDeclarationValue = undefined;
    }

    function getRandom(n){
       return Math.floor(Math.random()*n+1)
    }



//发项目功能实现-------------------------end
    
  //找人才功能实现-------------------------start
    //找人才---排序功能
    $('.talent-sort').click(function(){
        $('.talent-sort').css({'color':'#5cce49'})
        headersrc=$(this).css("background-image");
        headerarr=headersrc.split("_");
        headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png";
        headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png";
        $(this).css({'background-image':headersrc2});
        $('.talent-sort-drop').slideDown("fast");
    });
        //下拉菜单
    var talentSortValue;
    $('.talent-sort-drop ul li').click(function(){
        $(this).css({'color':'#5cce49'}).siblings().css({'color':'#333'});
        $('.talent-sort').html(talentSortValue);


        //这是找人才-排序数据==================》
        talentSortValue=$(this).text();

        //背景图标状态切换-活动状态
        src=$(this).css("background-image");
        arr=src.split("_");
        src2=arr[0]+"_"+arr[1]+"_"+"pre.png";
        $(this).css({'background-image':src2});
        $(this).children('span').show().parent().siblings().children("span").hide();
        //背景图标状态切换-非活动状态
        sibsrc=$(this).siblings().eq(0).css("background-image")
        arr2=sibsrc.split("_");
        src3=arr2[0]+"_"+arr2[1]+"_"+"nor.png";
        $(this).siblings().eq(0).css({'background-image':src3});

        //选择后收起来的状态
        $('.talent-sort-drop').slideUp("fast");
        $('.talent-sort').css({
            'background-image':headersrc3,
            'color':'#333'
        });

    });

    //找人才---筛选功能
    var talentOrientationValue;
    $('.talent-screening').click(function(){
        $('.talent-screening').css({'color':'#5cce49'})
        headersrc=$(this).css("background-image");
        headerarr=headersrc.split("_");
        headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png";
        headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png";
        $(this).css({'background-image':headersrc2});
        $('.talent-screen-drop').slideDown("fast");
    });
        //排序-人才定位
    $('.talent-inner-state ul li').click(function(){
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        //人才定位数据
        talentOrientationValue=$(this).html();
    });

    //找人才筛选选择后收起
    $('.talent-inner-button button').click(function(){
        $('.talent-screen-drop').slideUp("fast");
        $('.talent-screening').css({
            'background-image':headersrc3,
            'color':'#333'
        });


        if(talentOrientationValue==undefined){
            talentOrientationValue='全部'
        }
        if(locationScreenValue==undefined){
            locationScreenValue='全部'
        }
        //这是找人才-排序数据==================》
        var talentScreenValue={
            talentOrientation:talentOrientationValue,
            locationScreen:locationScreenValue
        }
    })
//找人才功能实现-------------------------end




//发简历功能实现-------------------------start
    //定义全局变量
    var talentPublishNameValue;
    var talentPersonalValue;
    var talentSexValue;
    var projectDescriptionValue;
    var talentState2Value;
    var talentMoneyValue;
    var talentTreatmentValue;



    //人才定位选择
    $('.talent-personal-nav').click(function(){
        //点击出现选择框
        $('.talent-personal').show();
    })
    $('.talent-personal>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        //获得的人才定位值
        talentPersonalValue=$(this).html();

        clearTimeout(talentPersonalTimer);
        var talentPersonalTimer=setTimeout(function(){
            $('.talent-personal').hide();
            $('.talent-personal-nav div').html(talentPersonalValue).css({'color':'#333'});
        },200)
    })
    //工作区域选择

    //项目地区显示
    $('.talent-location-nav').click(function () {
        $('.talent-location-select').animate({
            left: '0'
        }, 500)
    })
    //发项目---点击省市切换

    $('.location-province li').click(function () {
        $(this).addClass('location-province-active').siblings().removeClass('location-province-active');

        provinceValue = $(this).html();
        $(".location-city").empty();


        var cities = city[$(this).text()];
        for (var j = 0; j < cities.length; j++) {
            $('.location-city').append("<li>" + cities[j] + "</li>");
        }
        //发项目---城市选择点击样式切换
        $('.location-city li').click(function () {
            $(this).addClass('location-city-active').siblings().removeClass('location-city-active')
            $('.project-location-header b').addClass('location-city-active')
            $('.talent-location-header b').addClass('location-city-active')
            if(cityValue==undefined){
                cityValue = $(this).html();
            }

        });
    });
    //点击隐藏地区选择
    $('.talent-location-header b').click(function(){
        //将获得的省市添加到页面
        if(cityValue==undefined){
            provinceValue='北京';
            cityValue='东城区'
        }
        $('.talent-location-nav div').html(provinceValue+' '+cityValue).css({
            'color':'#333'
        });
        //省市页面切入过度效果
        $('.talent-location-select').animate({
            left:'100%'
        },500)
    })

    //性别选择
    $('.talent-sex-nav').click(function(){
        //点击出现选择框
        $('.talent-sex').show();
    })
    $('.talent-sex>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        //获得的人才定位值
        talentSexValue=$(this).html();

        clearTimeout(talentPersonalTimer);
        var talentPersonalTimer=setTimeout(function(){
            $('.talent-sex').hide();
            $('.talent-sex-nav div').html(talentSexValue).css({'color':'#333'});
        },200)
    })

    //个人描述
    $('.talent-describe-nav').click(function(){
        $('.talent-description').animate({
            left:0
        },300)
    })
    $('.talent-description button').click(function(){
        $('.talent-description').animate({
            left:'100%'
        },300);
        projectDescriptionValue=$('.talent-description textarea').val();

        if(projectDescriptionValue==''|| projectDescriptionValue=='请输入个人描述信息..'){
            $('.talent-describe-nav>div').html('个人描述（限30个字）').css({
                'color':'#b6b6b6'
            })
        }else{
            $('.talent-describe-nav>div').html(projectDescriptionValue).css({
                'color':'#333'
            });
        }



    })
    $('.talent-description textarea').focus(function(){
        if($('.talent-description textarea').val()=='请输入个人描述信息..'){
            $('.talent-description textarea').val('');
        }
    });

    //创业状态
    $('.talent-state-nav').click(function(){
        //点击出现选择框
        $('.talent-state2').show();
    })
    $('.talent-state2>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        //获得的人才定位值
        talentState2Value=$(this).html();

        clearTimeout(talentPersonalTimer);
        var talentPersonalTimer=setTimeout(function(){
            $('.talent-state2').hide();
            $('.talent-state-nav div').html(talentState2Value).css({'color':'#333'});
        },200)
    })

    //创业出资
    $('.talent-money-nav').click(function(){
        //点击出现选择框
        $('.talent-money').show();
    })
    $('.talent-money>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        //获得的人才定位值
        talentMoneyValue=$(this).html();

        clearTimeout(talentPersonalTimer);
        var talentPersonalTimer=setTimeout(function(){
            $('.talent-money').hide();
            $('.talent-money-nav div').html(talentMoneyValue).css({'color':'#333'});
        },200)
    })

    //期望待遇
    $('.talent-treatment-nav').click(function(){
        //点击出现选择框
        $('.talent-treatment').show();
    })
    $('.talent-treatment>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        //获得的人才定位值
        talentTreatmentValue=$(this).html();

        clearTimeout(talentPersonalTimer);
        var talentPersonalTimer=setTimeout(function(){
            $('.talent-treatment').hide();
            $('.talent-treatment-nav div').html(talentTreatmentValue).css({'color':'#333'});
        },200)
    })


    //这是发简历--数据==================》
    $('.publish-talent').click(function(){
        talentPublishNameValue=$('.talent-publish-name').val();
        weixinNameValue=$('.talent-weixin-name').val();
        
        if(talentPublishNameValue==undefined||talentPersonalValue==undefined||talentSexValue==undefined||projectDescriptionValue==undefined||talentState2Value==undefined||talentMoneyValue==undefined){
            clearTimeout(publishProjecttimer);
            $('.project-alert').show();
            var publishProjecttimer=setTimeout(function(){
                $('.project-alert').hide();
            },1000)
        }else{
        	 var arrayWork = $("#mainpage").data("arrayWork")==undefined?"":$("#mainpage").data("arrayWork");
        	 var arrayWork = JSON.stringify(arrayWork);
        	 var arrayEdu = $("#mainpage").data("arrayEdu")==undefined?"":$("#mainpage").data("arrayEdu");
        	 var arrayEdu = JSON.stringify(arrayEdu);
        	 var skill = $("#mainpage").data("skill")==undefined?"":$("#mainpage").data("skill");
        	 var entrep = $("#mainpage").data("entrep")==undefined?"":$("#mainpage").data("entrep");
             //alert(JSON.stringify(arrayWork));
             
            var talentPublishObj={
            	nickname:talentPublishNameValue,
            	talentName:weixinNameValue,
            	goal:talentPersonalValue,
            	sex:talentSexValue,
            	intro:projectDescriptionValue,
            	entrepreneurship:talentState2Value,
                talentMoney:talentMoneyValue,
                expectedSalary:talentTreatmentValue,
                workExperience:arrayWork,
                educational:arrayEdu,
                goodAt:skill,
                targetType:entrep
            }
            
            submitTalent(talentPublishObj);
           
        }
    })

    //个人简历
    //跳转
    $('.talent-resume-nav').click(function(){
    	if($("#resumepage").html()==""){
    		$.post("/talent/resumeInit", "",
     			   function(data){
     			     $("#resumepage").html(data);
     			     $("#resumepage").show();
     			     $("#mainpage").hide();
     			   }, "html");
    	}else{
    		 $("#resumepage").show();
			 $("#mainpage").hide();
    	}
    	
        //window.open('resume.html')
        $('.talent-resume-nav div a').html('点击查看').css({
            'color':'#333'
        })
    })
    
    

    

    


//发简历功能实现-------------------------end

});