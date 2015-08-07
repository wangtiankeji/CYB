package com.greatwall.ideas.controller;

import java.util.HashMap;
import java.util.Map;


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
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

@Controller
@RequestMapping("index/project")
public class IndexProjectController extends BaseController {

	Logger logger = Logger.getLogger(IndexProjectController.class);
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/showProjects")
	public ModelAndView showProjects(){
		return new ModelAndView("/index/project/showProjects.jsp");
	}
	
	@RequestMapping("/getProjects")
	public @ResponseBody Map<String,Object> getProjects(Project project,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("objs",projectService.getPage(project, page));
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询活动分页错误",e);
		}
		return map;
	}
	
}
