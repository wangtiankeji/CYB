package com.greatwall.ideas.controller;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/addInit")
	public ModelAndView addInit(Model model) {
		return new ModelAndView("index.jsp");
	}
	
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

	
	@RequestMapping("/updateInit/{productId}")
	public ModelAndView updateInit(@PathVariable Integer productId,ModelMap model){
		
		return new ModelAndView("/recharge/addProduct.jsp");
	}
}