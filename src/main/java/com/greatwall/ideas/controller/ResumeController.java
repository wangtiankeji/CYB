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

import com.greatwall.ideas.dto.Resume;
import com.greatwall.ideas.service.ResumeService;
import com.greatwall.platform.domain.PageParameter;

/**
* @ClassName: ResumeController
* @Description: TODO(这里用一句话描述这个类的作用)
* @author fudk fudk_k@sina.com
* @date 2015年7月30日 下午8:04:00
*
*/ 
@Controller
@RequestMapping("/resume")
public class ResumeController {

	Logger logger = Logger.getLogger(ResumeController.class);
	
	@Autowired
	private ResumeService resumeService;
	
	@RequestMapping("/showResumes")
	public ModelAndView showResumes(){
		return new ModelAndView("/ideas/resume/showResumes.jsp");
	}
	
	@RequestMapping("/getResumes")
	public ModelAndView getResumes(Resume resume,PageParameter page,ModelMap model){
		try {
			model.addAttribute("resumes",resumeService.getPage(resume, page));
			model.addAttribute("page", page);
		} catch (Exception e) {
			logger.error("查询简历错误",e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/ideas/resume/resumes.jsp");
	}
	
	@RequestMapping("/addInit")
	public ModelAndView addInit(Model model) {
		return new ModelAndView("/ideas/resume/resume.jsp");
	}
	
	@RequestMapping("/updateInit/{resumeId}")
	public ModelAndView updateInit(@PathVariable Integer resumeId,ModelMap model){
		if(resumeId>0){
			model.addAttribute("resume", resumeService.getResume(resumeId));
		}
		return new ModelAndView("/ideas/resume/resume.jsp");
	}
	
	@RequestMapping("/addResume")
	public@ResponseBody String addResume(Resume resume){
		try {
			if(resumeService.save(resume)==1){
				return "success";
			}else{
				return "保存失败";
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
	}
	
	@RequestMapping("/updateResume")
	public@ResponseBody String updateResume(Resume resume){
		try {
			if(resume!=null&&resume.getResumeId()!=null){
				if(resumeService.updateResumeByKey(resume)==1){
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
