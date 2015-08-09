package com.greatwall.ideas.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.service.ConcernService;
import com.greatwall.ideas.service.EventService;
import com.greatwall.platform.base.controller.BaseController;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("index/concern")
public class IndexConcernController extends BaseController {
	
	Logger logger = Logger.getLogger(IndexConcernController.class);
	
	@Autowired
	private ConcernService concernService;

	@RequestMapping("/addConcern")
	public@ResponseBody String addConcern(Concern concern,HttpServletRequest request){
		try {
			String validate = validate(concern,request);
			if(!"".equals(validate)){
				return validate;
			}
			User u = super.getSessionUser(request.getSession());
			concern.setUserId(u.getUserId());
			if("signup".equals(concern.getConcernType())){
				return signUp(concern);
				
			}else if("concern".equals(concern.getConcernType())){
				
				if("project".equals(concern.getTargetType())){
					return concernProject(concern);
				}else{
					return concernEvent(concern);
				}
				
			}
			
			return "类型错误";
		} catch (ServiceException e) {
			return e.getMessage();
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
	}
	
	private String concernProject(Concern concern) throws ServiceException{
		if(!concernService.concern(concern)){
			if(concernService.unConcern(concern)){
				return "cancel";
			}else{
				return "取消收藏失败";
			}
		}else{
			return "success";
		}
	}
	
	private String concernEvent(Concern concern) throws ServiceException{
		if(!concernService.concern(concern)){
			if(concernService.unConcern(concern)){
				return "cancel";
			}else{
				return "取消收藏失败";
			}
		}else{
			return "success";
		}
	}
	
	private String validate(Concern concern,HttpServletRequest request){
		if(concern==null){
			return "类型不能为空";
		}
		if(concern.getConcernType()==null||concern.getTargetId()==null
				||concern.getTargetType()==null){
			return "类型不能为空";
		}
		if("signup".equals(concern.getConcernType())){
			if(StringUtils.isBlank(concern.getPhone())){
				return "电话不能为空";
			}
			if(StringUtils.isBlank(concern.getUserName())){
				return "姓名不能为空";
			}
		}
		if(!checkLogin(request)){
			return "unlogin";
		}
		return "";
	}
	
	private String signUp(Concern concern) throws ServiceException{
		if(concernService.signUp(concern)){
			return "success";
		}else{
			return "保存失败";
		}
	}
	
}