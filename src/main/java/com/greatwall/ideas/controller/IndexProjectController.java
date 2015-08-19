package com.greatwall.ideas.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;








import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Partner;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.ProjectCon;
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
	public @ResponseBody Map<String,Object> getProjects(ProjectCon project,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			if("近一周".equals(project.getCreatTimeStr())){
				project.setCreateTime(DateUtils.addWeeks(new Date(), -1));
			}else if("近一月".equals(project.getCreatTimeStr())){
				project.setCreateTime(DateUtils.addMonths(new Date(), -1));
			}else if("近三月".equals(project.getCreatTimeStr())){
				project.setCreateTime(DateUtils.addMonths(new Date(), -3));
			}
			if(StringUtils.isNotBlank(project.getPartnerRole())){
				map.put("objs",projectService.selectProjectPartnerPage(project, page));
			}else{
				map.put("objs",projectService.getPage(project, page));
			}
			
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询活动分页错误",e);
		}
		return map;
	}
	
	@RequestMapping("/getProject/{projectId}")
	public ModelAndView getProject(@PathVariable Integer projectId,ModelMap model){
		if(projectId!=null){
			Partner partner = new Partner();
			partner.setProjectId(projectId);
			model.addAttribute("project", projectService.getProject(projectId));
			model.addAttribute("partners", projectService.getPartners(partner));
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index/project/projectDetail.jsp");
		return mav;
	}
	
}
