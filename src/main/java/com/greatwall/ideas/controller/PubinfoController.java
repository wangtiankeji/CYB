package com.greatwall.ideas.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.service.PubinfoService;
import com.greatwall.platform.domain.PageParameter;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("/pubinfo")
public class PubinfoController {

	Logger logger = Logger.getLogger(PubinfoController.class);

	@Autowired
	private PubinfoService pubinfoService;


	@RequestMapping("/showPubinfos")
	public ModelAndView showPubinfos(){
		return new ModelAndView("/ideas/pubinfo/showPubinfos.jsp");
	}

	/**
	 * @Title: getPubinfos
	 * @Description: 得到参数信息列表
	 * @param pubinfo
	 * @param page
	 * @param model
	 * @return ModelAndView    返回类型
	 * @throws
	 */ 
	@RequestMapping("/getPubinfos")
	public ModelAndView getPubinfos(Pubinfo pubinfo,PageParameter page,ModelMap model){
		try {
			model.addAttribute("pubinfos",pubinfoService.getPage(pubinfo, page));
			model.addAttribute("page", page);
		} catch (Exception e) {
			logger.error("查询公共信息错误",e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/ideas/pubinfo/pubinfos.jsp");
	}


	@RequestMapping("/addInit")
	public ModelAndView addInit(Model model) {
		return new ModelAndView("/ideas/pubinfo/pubinfo.jsp");
	}

	@RequestMapping("/updateInit/{infoId}")
	public ModelAndView updateInit(@PathVariable Integer infoId,ModelMap model){
		if(infoId>0){
			model.addAttribute("pubinfo", pubinfoService.getPubinfo(infoId));
		}
		return new ModelAndView("/ideas/pubinfo/pubinfo.jsp");
	}

	@RequestMapping("/addPubinfo")
	public@ResponseBody String addPubinfo(Pubinfo pubinfo){
		try {
			if(pubinfoService.save(pubinfo)==1){
				return "success";
			}else{
				return "保存失败";
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}

	}
	@RequestMapping("/updatePubinfo")
	public@ResponseBody String updatePubinfo(Pubinfo pubinfo){
		try {
			if(pubinfo!=null&&pubinfo.getInfoId()!=null){
				if(pubinfoService.updatePubinfoByKey(pubinfo)==1){
					return "success";
				}
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}

		return "保存失败";
	}
}