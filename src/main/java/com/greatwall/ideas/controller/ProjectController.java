package com.greatwall.ideas.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.platform.base.controller.BaseController;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;

@Controller
@RequestMapping("/project")
public class ProjectController extends BaseController {

	Logger logger = Logger.getLogger(ProjectController.class);
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/showProjects")
	public ModelAndView showProjects(){
		return new ModelAndView("/ideas/project/showProjects.jsp");
	}
	
	@RequestMapping("/getProjects")
	public ModelAndView getProjects(Project project,PageParameter page,ModelMap model){
		try {
			model.addAttribute("projects",projectService.getPage(project, page));
			model.addAttribute("page", page);
		} catch (Exception e) {
			logger.error("查询项目错误",e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/ideas/project/projects.jsp");
	}
	
	@RequestMapping("/addInit")
	public ModelAndView addInit(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index/project/project.jsp");
		
//		if(!super.checkLogin(request)){
//			mav.setViewName("redirect:/indexLoginInit");
//		}
		return mav;
	}
	
	@RequestMapping("/addProject")
	public@ResponseBody String addProject(Project project,HttpSession httpSession){
		try {
			User u = super.getSessionUser(httpSession);
			if(u==null){
				return "未登录";
			}
			project.setUserId(u.getUserId());
			project.setCreateTime(new Date());
			if(projectService.save(project)==1){
				return "success";
			}else{
				return "保存失败";
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
	}
}
