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
		pubinfo.setType("indeximg");
		model.addAttribute("indeximgs", pubinfoService.getPubinfoList(pubinfo));
		return new ModelAndView("index.jsp");
	}
	
	private void getImgs(Model model,String type){
		Pubinfo pubinfo = new Pubinfo();
		pubinfo.setType(type);
		model.addAttribute("pageimgs", pubinfoService.getPubinfoList(pubinfo));
	}
	
	@RequestMapping("/office")
	public ModelAndView office(Model model) {
		getImgs(model, "office");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/office.jsp");
		return mav;
	}
	
	@RequestMapping("/company")
	public ModelAndView company(Model model) {
		getImgs(model, "company");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/company.jsp");
		return mav;
	}
	
	@RequestMapping("/partnerAgreement")
	public ModelAndView partnerAgreement(Model model) {
		getImgs(model, "partnerAgreement");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/partneragreement.jsp");
		return mav;
	}
	
	@RequestMapping("/entrepreneurship")
	public ModelAndView entrepreneurship(Model model) {
		getImgs(model, "entrepreneurship");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/entrepreneurship.jsp");
		return mav;
	}
	
	@RequestMapping("/accounting")
	public ModelAndView accounting(Model model) {
		getImgs(model, "accounting");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/accounting.jsp");
		return mav;
	}
	@RequestMapping("/contract")
	public ModelAndView contract(Model model) {
		getImgs(model, "contract");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/contract.jsp");
		return mav;
	}
	@RequestMapping("/lawyer")
	public ModelAndView lawyer(Model model) {
		getImgs(model, "lawyer");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/lawyer.jsp");
		return mav;
	}
	@RequestMapping("/law")
	public ModelAndView law(Model model) {
		getImgs(model, "law");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/law.jsp");
		return mav;
	}
	@RequestMapping("/trademark")
	public ModelAndView trademark(Model model) {
		getImgs(model, "trademark");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/trademark.jsp");
		return mav;
	}
	@RequestMapping("/copyright")
	public ModelAndView copyright(Model model) {
		getImgs(model, "copyright");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/copyright.jsp");
		return mav;
	}
	@RequestMapping("/hr")
	public ModelAndView hr(Model model) {
		getImgs(model, "hr");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/hr.jsp");
		return mav;
	}
	@RequestMapping("/partner")
	public ModelAndView partner(Model model) {
		getImgs(model, "partner");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/main/partner.jsp");
		return mav;
	}

}