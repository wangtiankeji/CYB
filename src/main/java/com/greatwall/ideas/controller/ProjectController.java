package com.greatwall.ideas.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.platform.domain.PageParameter;

@Controller
@RequestMapping("/project")
public class ProjectController {

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
}
