package com.greatwall.platform.login.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.service.PubinfoService;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	private PubinfoService pubinfoService;
	
	
	@RequestMapping(method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView main(Model model) {
		Pubinfo pubinfo = new Pubinfo();
		pubinfo.setType("indexInfo");
		
		model.addAttribute("infoParams", pubinfoService.getPubinfos(pubinfo));
		return new ModelAndView("index.jsp");
	}

}