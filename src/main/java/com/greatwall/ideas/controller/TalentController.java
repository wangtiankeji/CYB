package com.greatwall.ideas.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.service.TalentService;
import com.greatwall.platform.base.controller.BaseController;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;

/**
* @ClassName: ResumeController
* @Description: TODO(这里用一句话描述这个类的作用)
* @author fudk fudk_k@sina.com
* @date 2015年7月30日 下午8:04:00
*
*/ 
@Controller
@RequestMapping("/talent")
public class TalentController extends BaseController {

	Logger logger = Logger.getLogger(TalentController.class);
	
	@Autowired
	private TalentService talentService;
	
	@RequestMapping("/showTalents")
	public ModelAndView showTalents(){
		return new ModelAndView("/ideas/talent/showTalents.jsp");
	}
	
	@RequestMapping("/getTalents")
	public ModelAndView getTalents(Talent talent,PageParameter page,ModelMap model){
		try {
			model.addAttribute("talents",talentService.getPage(talent, page));
			model.addAttribute("page", page);
		} catch (Exception e) {
			logger.error("查询简历错误",e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/ideas/talent/talents.jsp");
	}
	
	@RequestMapping("/addTalentInit")
	public ModelAndView addTalentInit(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index/talent/talent.jsp");
		
		return mav;
	}
	
	@RequestMapping("/updateInit/{resumeId}")
	public ModelAndView updateInit(@PathVariable Integer talentId,ModelMap model){
		if(talentId>0){
			model.addAttribute("talent", talentService.getTalent(talentId));
		}
		return new ModelAndView("/ideas/talent/talent.jsp");
	}
	
	@RequestMapping("/addTalent")
	public@ResponseBody String addTalent(Talent talent,HttpSession httpSession){
		try {
			User u = super.getSessionUser(httpSession);
			if(u==null){
				return "未登录";
			}
			talent.setUserId(u.getUserId());
			talent.setCreateTime(new Date());
			talent.setHits(0);
			talent.setConcernCount(0);
			if(talentService.save(talent)==1){
				return "success";
			}else{
				return "保存失败";
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
	}
	
	@RequestMapping("/updateTalent")
	public@ResponseBody String updateTalent(Talent talent){
		try {
			if(talent!=null&&talent.getTalentId()!=null){
				if(talentService.updateTalentByKey(talent)==1){
					return "success";
				}
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		return "保存失败";
	}
	
	@RequestMapping("/resumeInit")
	public ModelAndView resumeInit(){
		return new ModelAndView("/index/talent/resume.jsp");
	}
}
