//发项目 开始---------------------
//综合排序菜单栏

//项目状态的切换
$('.project-inner-state ul li').click(function(){
    $(this).addClass('screen-active').siblings().removeClass('screen-active');
})
$('.time-inner-state ul li').click(function(){
    $(this).addClass('screen-active').siblings().removeClass('screen-active');
})
$('.partner-inner-state ul li').click(function(){
    $(this).addClass('screen-active').siblings().removeClass('screen-active');
})
//省份城市列表
var pro = ["全部","北京","天津","上海","重庆","河北","山西","辽宁","吉林","黑龙江","江苏","浙江","安徽","福建","江西","山东","河南","湖北","湖南","广东","海南","四川","贵州","云南","陕西","甘肃","青海","内蒙古","广西","西藏","宁夏","新疆","香港","澳门","台湾"];
var city = {北京:["东城区","西城区","崇文区","宣武区","朝阳区","海淀区","丰台区","石景山区","房山区","通州区","顺义区","昌平区","大兴区","怀柔区","平谷区","门头沟区","密云县","延庆县"],天津:["和平区","河东区","河西区","南开区","河北区","红桥区","东丽区","西青区","北辰区","津南区","武清区","宝坻区","滨海新区","静海县","宁河县","蓟县"],上海:["黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","奉贤区","崇明县"],重庆:["渝中区","大渡口区","江北区","南岸区","北碚区","渝北区","巴南区","长寿区","双桥区","沙坪坝区","万盛区","万州区","涪陵区","黔江区","永川区","合川区","江津区","九龙坡区","南川区","綦江县","潼南县","荣昌县","璧山县","大足县","铜梁县","梁平县","开县","忠县","城口县","垫江县","武隆县","丰都县","奉节县","云阳县","巫溪县","巫山县","石柱土家族自治县","秀山土家族苗族自治县","酉阳土家族苗族自治县","彭水苗族土家族自治县"],河北:["石家庄","唐山","秦皇岛","邯郸","邢台","保定","张家口","承德","沧州","廊坊","衡水"],山西:["太原","大同","阳泉","长治","晋城","朔州","晋中","运城","忻州","临汾","吕梁"],辽宁:["沈阳","大连","鞍山","抚顺","本溪","丹东","锦州","营口","阜新","辽阳","盘锦","铁岭","朝阳","葫芦岛"],吉林:["长春","吉林","四平","辽源","通化","白山","松原","白城","延边朝鲜族自治州"],黑龙江:["哈尔滨","齐齐哈尔","鹤岗","双鸭山","鸡西","大庆","伊春","牡丹江","佳木斯","七台河","黑河","绥化","大兴安岭"],江苏:["南京","苏州","无锡","常州","镇江","南通","泰州","扬州","盐城","连云港","徐州","淮安","宿迁"],浙江:["杭州","宁波","温州","嘉兴","湖州","绍兴","金华","衢州","舟山","台州","丽水"],安徽:["合肥","芜湖","蚌埠","淮南","马鞍山","淮北","铜陵","安庆","黄山","滁州","阜阳","宿州","巢湖","六安","亳州","池州","宣城"],福建:["福州","厦门","莆田","三明","泉州","漳州","南平","龙岩","宁德"],江西:["南昌","景德镇","萍乡","九江","新余","鹰潭","赣州","吉安","宜春","抚州","上饶"],山东:["济南","青岛","淄博","枣庄","东营","烟台","潍坊","济宁","泰安","威海","日照","莱芜","临沂","德州","聊城","滨州","菏泽"],河南:["郑州","开封","洛阳","平顶山","安阳","鹤壁","新乡","焦作","濮阳","许昌","漯河","三门峡","南阳","商丘","信阳","周口","驻马店"],湖北:["武汉","黄石","十堰","荆州","宜昌","襄樊","鄂州","荆门","孝感","黄冈","咸宁","随州","恩施"],湖南:["长沙","株洲","湘潭","衡阳","邵阳","岳阳","常德","张家界","益阳","郴州","永州","怀化","娄底","湘西"],广东:["广州","深圳","珠海","汕头","韶关","佛山","江门","湛江","茂名","肇庆","惠州","梅州","汕尾","河源","阳江","清远","东莞","中山","潮州","揭阳","云浮"],海南:["海口","三亚"],四川:["成都","自贡","攀枝花","泸州","德阳","绵阳","广元","遂宁","内江","乐山","南充","眉山","宜宾","广安","达州","雅安","巴中","资阳","阿坝","甘孜","凉山"],贵州:["贵阳","六盘水","遵义","安顺","铜仁","毕节","黔西南","黔东南","黔南"],云南:["昆明","曲靖","玉溪","保山","昭通","丽江","普洱","临沧","德宏","怒江","迪庆","大理","楚雄","红河","文山","西双版纳"],陕西:["西安","铜川","宝鸡","咸阳","渭南","延安","汉中","榆林","安康","商洛"],甘肃:["兰州","嘉峪关","金昌","白银","天水","武威","酒泉","张掖","庆阳","平凉","定西","陇南","临夏","甘南"],青海:["西宁","海东","海北","海南","黄南","果洛","玉树","海西"],内蒙古:["呼和浩特","包头","乌海","赤峰","通辽","鄂尔多斯","呼伦贝尔","巴彦淖尔","乌兰察布","锡林郭勒盟","兴安盟","阿拉善盟"],广西:["南宁","柳州","桂林","梧州","北海","防城港","钦州","贵港","玉林","百色","贺州","河池","来宾","崇左"],西藏:["拉萨","那曲","昌都","林芝","山南","日喀则","阿里"],宁夏:["银川","石嘴山","吴忠","固原","中卫"],新疆维吾尔自治区:["乌鲁木齐","克拉玛依","吐鲁番","哈密","和田","阿克苏","喀什","克孜勒苏","巴音郭楞","昌吉","博尔塔拉","伊犁","塔城","阿勒泰"],香港:["香港岛","九龙东","九龙西","新界东","新界西"],澳门:["澳门半岛","离岛"],台湾:["台北","高雄","基隆","新竹","台中","嘉义","台南市"]};

$(document).ready(function (){
    for(var i=0;i<pro.length;i++){
        if(i>0){
            $('.location-province').append("<li>"+pro[i]+"</li>");
        }
            var n=(i+1)%4?"5%":0;
            $(".location-inner-state ul").append("<li style='margin-right:"+n+"'>"+pro[i]+"</li>");
    }
    //发项目---默认显示北京
    var beijing=city['北京'];
    $('.location-province li:first-child').addClass('location-province-active')
    for(var j=0;j<beijing.length;j++){
        $('.location-city').append("<li>"+beijing[j]+"</li>");
    }
    //发项目--点击选择项目地区
    $('.project-location-nav').click(function(){
        $('.project-location-select').animate({
            left:'0'
        },500)
    })

    //发项目---点击省市切换
    $('.location-province li').click(function(){
        $(this).addClass('location-province-active').siblings().removeClass('location-province-active');
        provinceValue=$(this).html();
        $(".location-city").empty();
        var cities=city[$(this).text()];
        for(var j=0;j<cities.length;j++){
            $('.location-city').append("<li>"+cities[j]+"</li>");
        }
    //发项目---城市选择点击样式切换
        $('.location-city li').click(function(){
            $(this).addClass('location-city-active').siblings().removeClass('location-city-active')
            $('.project-location-header b').addClass('location-city-active')
            cityValue=$(this).html();
        });
        //点击隐藏地区选择
        $('.project-location-header b').click(function(){
            //将获得的省市添加到页面
            $('.project-location-nav div').html(provinceValue+' '+cityValue).css({
                'color':'#333'
            });
            //省市页面切入过度效果
            $('.project-location-select').animate({
                left:'100%'
            },500)
        })

    });
    $('.location li:first-child').addClass('screen-active');

 //找项目---省份之间的选择状态的切换
    $('.location li').bind('click', function() {
        $(this).addClass('screen-active').siblings().removeClass('screen-active');
        $('.location-inner-state').animate({
            height:"4rem"
        },500)
    });
    $('.project-screen-drop').hide();

})


//找项目---动态折叠省市列表框
$('.location-inner-state h2 span').click(function(){
    $('.location-inner-state').animate({
        height:"20rem"
    },500)
})

//找项目头部菜单栏点击效果
$('.project-sort').click(function(){
    $('.project-sort').css({'color':'#5cce49'})
    headersrc=$(this).css("background-image");
    headerarr=headersrc.split("_");
    headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png)";
    headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png)";
    $(this).css({'background-image':headersrc2});
    $('.project-sort-drop').slideDown("fast");
});

//找人才头部菜单栏点击效果-----
$('.talent-sort').click(function(){
    $('.talent-sort').css({'color':'#5cce49'})
    headersrc=$(this).css("background-image");
    headerarr=headersrc.split("_");
    headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png)";
    headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png)";
    $(this).css({'background-image':headersrc2});
    $('.talent-sort-drop').slideDown("fast");
});


//找项目综合排序选择菜单状态切换
$('.project-sort-drop ul li').click(function(){
    $(this).css({'color':'#5cce49'}).siblings().css({'color':'#333'});
    $('.project-sort').html($(this).text());
    //背景图标状态切换-活动状态
    src=$(this).css("background-image");
    arr=src.split("_");
    src2=arr[0]+"_"+arr[1]+"_"+"pre.png)";
    $(this).css({'background-image':src2});
    $(this).children('span').show().parent().siblings().children("span").hide();
    //背景图标状态切换-非活动状态
    sibsrc=$(this).siblings().eq(0).css("background-image")
    arr2=sibsrc.split("_");
    src3=arr2[0]+"_"+arr2[1]+"_"+"nor.png)";
    $(this).siblings().eq(0).css({'background-image':src3});

    sibsrc2=$(this).siblings().eq(1).css("background-image")
    arr3=sibsrc2.split("_");
    src4=arr3[0]+"_"+arr3[1]+"_"+"nor.png)";
    $(this).siblings().eq(1).css({'background-image':src4});

    //选择后收起来的状态
    $('.project-sort-drop').slideUp("fast");
    $('.project-sort').css({
        'background-image':headersrc3,
        'color':'#333'
    });
});

//找人才综合排序选择菜单状态切换-----
$('.talent-sort-drop ul li').click(function(){
    $(this).css({'color':'#5cce49'}).siblings().css({'color':'#333'});
    $('.talent-sort').html($(this).text());

    //背景图标状态切换-活动状态
    src=$(this).css("background-image");
    arr=src.split("_");
    src2=arr[0]+"_"+arr[1]+"_"+"pre.png)";
    $(this).css({'background-image':src2});
    $(this).children('span').show().parent().siblings().children("span").hide();
    //背景图标状态切换-非活动状态
    sibsrc=$(this).siblings().eq(0).css("background-image")
    arr2=sibsrc.split("_");
    src3=arr2[0]+"_"+arr2[1]+"_"+"nor.png)";
    $(this).siblings().eq(0).css({'background-image':src3});

    //选择后收起来的状态
    $('.talent-sort-drop').slideUp("fast");
    $('.talent-sort').css({
        'background-image':headersrc3,
        'color':'#333'
    });
});



//找项目筛选菜单栏
$('.project-screening').click(function(){
    $('.project-screening').css({'color':'#5cce49'})
    headersrc=$(this).css("background-image");
    headerarr=headersrc.split("_");
    headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png)";
    headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png)";
    $(this).css({'background-image':headersrc2});
    $('.project-screen-drop').slideToggle("fast");
});

//找人才筛选菜单栏-----
$('.talent-screening').click(function(){
    $('.talent-screening').css({'color':'#5cce49'})
    headersrc=$(this).css("background-image");
    headerarr=headersrc.split("_");
    headersrc2=headerarr[0]+"_"+headerarr[1]+"_"+"up.png)";
    headersrc3=headerarr[0]+"_"+headerarr[1]+"_"+"down.png)";
    $(this).css({'background-image':headersrc2});
    $('.talent-screen-drop').slideDown("fast");
});

//找项目筛选选择后收起
$('.project-inner-button button').click(function(){
    $('.project-screen-drop').slideUp("fast");
    $('.project-screening').css({
        'background-image':headersrc3,
        'color':'#333'
    });
})
//找项目筛选选择后收起
$('.talent-inner-button button').click(function(){
    $('.talent-screen-drop').slideUp("fast");
    $('.talent-screening').css({
        'background-image':headersrc3,
        'color':'#333'
    });
})
//找人才 人才定位 状态选择
$('.talent-inner-state ul li').click(function(){
    $(this).addClass('screen-active').siblings().removeClass('screen-active');
});







var projectStateValue;
var provinceValue;
var cityValue;
var projectDirectionValue;
var projectDescriptionValue;
var projectProfileValue;
var projectFinancingValue1;
var projectFinancingValue2;
var roleValue;
var cooperationValue;
var salaryValue;
var stockProportionValue;
var projectDeclarationValue;
var projectLinkValue;

//发项目---项目阶段状态选择
$('.project-progress-nav').click(function(){
    $('.project-progress').show();
});
$('.project-progress ul li').click(function(){
    $(this).addClass("project-progress-active").siblings().removeClass("project-progress-active");
    clearTimeout(timer2);
    var timer2=setTimeout(function(){
        $('.project-progress').hide();
    },100)
    $('.project-progress-nav div').html($(this).html()).css({'color':'#333'});
    var projectStateValue=$(this).html();
})
//发项目-项目方向
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

//项目简述
$('.project-description-nav').click(function(){
    $('.project-description').animate({
        left:0
    },300)
})
$('.project-description button').click(function(){
    $('.project-description').animate({
        left:'100%'
    },300);
    $('.project-description-nav>div').html($('.project-description textarea').val()).css({
        'color':'#333'
    });
    projectDescriptionValue=$('.project-description textarea').val();

})
$('.project-description textarea').focus(function(){
    if($('.project-description textarea').val()=='请输入项目简介..'){
        $('.project-description textarea').val('');
    }
})
//项目简介
$('.project-profile-nav').click(function(){
    $('.project-profile').animate({
        left:0
    },300)
})
$('.project-profile button').click(function(){
    $('.project-profile').animate({
        left:'100%'
    },300);
    $('.project-profile-nav>div').html($('.project-description textarea').val()).css({
        'color':'#333'
    });
    projectProfileValue=$('.project-description textarea').val();

})
$('.project-profile textarea').focus(function(){
    if($('.project-profile textarea').val()=='请输入项目介绍..'){
        $('.project-profile textarea').val('');
    }
})

//融资状态
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
        projectFinancingValue2=0;
    }else{
        projectFinancingValue2=$('.project-financing-turn input').val();
    }
    value=projectFinancingValue1+' '+projectFinancingValue2+' '+$('.project-financing-turn span').html();
    $('.project-financing-nav div').html(value).css({
        'color':'#333'
    });
    $('.project-financing').hide();
})
//合伙人招募
$('.project-partner-nav2').click(function(){
    $('.project-partner').animate({
        'left':'0'
    },300)
})
$('.partner-role ul li').click(function(){
    $(this).addClass('a').siblings().removeClass('screen-active');
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
    $('.explain').html($('.project-declaration textarea').val());
    projectDeclarationValue=$('.project-declaration textarea').val();
})
$('.project-partner-save').click(function(){

        $('.project-partner').animate({
            'left':'100%'
        },200);
        $('.project-partner-selected').append("<li>"+roleValue+"</li>");
        $('.project-partner-save').html('取消该项');
})

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

/*----------------------发项目需要提交的数据对象 start------------------------------*/
var projectObj={
    //项目阶段
    projectState:projectStateValue,
    //项目地区
    projectProvince:provinceValue,
    projectCity:cityValue,
    //项目方向
    projectDirection:projectDirectionValue,
    //项目简述
    projectDescription:projectDescriptionValue,
    //项目介绍
    projectProfile:projectProfileValue,
    //融资状态
    projectFinancing1:projectFinancingValue1,
    projectFinancing2:projectFinancingValue2,
    //合伙人招募
    role:roleValue,
    cooperation:cooperationValue,
    salary:salaryValue,
    stockProportion:stockProportionValue,
    projectDeclaration:projectDeclarationValue,
    //产品链接
    projectLink:projectLinkValue
}
/*----------------------发项目需要提交的数据对象 end------------------------------*/

//发项目 结束---------------------

var talentPersonalValue;


//发布简历需要提交后台的数据对象
var talentobj={
    talentName:$('.talent-name').val(),
    talentPersonal:talentPersonalValue
}
    //昵称
    var talentName=$('.talent-name').val();
console


//发布简历
    //个人定位
    $('.talent-personal-nav').click(function(){
        //点击出现选择框
        $('.talent-personal').show();
    })
        //人才定位选择
    $('.talent-personal>div>ul>li').click(function(){
        $(this).addClass('talent-personal-active').siblings().removeClass('talent-personal-active');
        talentPersonalValue=$(this).html();
    })

