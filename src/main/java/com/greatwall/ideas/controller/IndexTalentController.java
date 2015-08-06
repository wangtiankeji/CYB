package com.greatwall.ideas.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.ideas.service.TalentService;
import com.greatwall.platform.base.controller.BaseController;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;

@Controller
@RequestMapping("index/talent")
public class IndexTalentController extends BaseController {

	Logger logger = Logger.getLogger(IndexTalentController.class);
	@Autowired
	private TalentService talentService;
	
	@RequestMapping("/showTalents")
	public ModelAndView showProjects(){
		return new ModelAndView("/index/talent/showTalents.jsp");
	}
	
	@RequestMapping("/getTalents")
	public @ResponseBody Map<String,Object> getTalents(Talent talent,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("objs",talentService.getPage(talent, page));
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询活动分页错误",e);
		}
		return map;
	}
	
}
