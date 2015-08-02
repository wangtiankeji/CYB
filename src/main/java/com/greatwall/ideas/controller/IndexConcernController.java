package com.greatwall.ideas.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("index/concern")
public class IndexConcernController {
	
	Logger logger = Logger.getLogger(IndexConcernController.class);
	
	@Autowired
	private ConcernService concernService;

	@RequestMapping("/addConcern")
	public@ResponseBody String addConcern(Concern concern){
		try {
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
			concern.setUserId(123);
			if("signup".equals(concern.getConcernType())){
				if(concernService.signUp(concern)){
					return "success";
				}else{
					return "保存失败";
				}
				
			}else if("concern".equals(concern.getConcernType())){
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
			
			return "类型错误";
		} catch (ServiceException e) {
			return e.getMessage();
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
	}
	
	/*@RequestMapping("/showEvents")
	public ModelAndView showEvents(){
		return new ModelAndView("/ideas/events/showEvents.jsp");
	}

	@RequestMapping("/addInit")
	public ModelAndView addInit(Model model) {
		return new ModelAndView("/ideas/events/event.jsp");
	}
	
	@RequestMapping("/updateInit/{eventId}")
	public ModelAndView updateInit(@PathVariable Integer eventId,ModelMap model){
		if(eventId!=null&&eventId>0){
			model.addAttribute("events", eventService.getEvents(eventId));
		}
		return new ModelAndView("/ideas/events/event.jsp");
	}

	@RequestMapping("/updateEvents")
	public@ResponseBody String updateEvents(Event events){
		try {
			if(events!=null&&events.getEventId()!=null){
				if(eventService.updateEventByKey(events)==1){
					return "success";
				}
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
		return "保存失败";
	}*/
	
	/*@RequestMapping("/showIndexEvents/{type}")
	public ModelAndView showIndexEvents(@PathVariable String type,ModelMap model){
		String gotopage = "";
		if("activity".equals(type)){
			gotopage = "index/event/showActivitys.jsp";
		}else if("train".equals(type)){
			gotopage = "index/event/showTrains.jsp";
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(gotopage);
		return mav;
	}
	@RequestMapping("/getIndexEvents")
	public@ResponseBody Map<String,Object> getIndexEvents(Event events,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("events", eventService.getPage(events, page));
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询活动分页错误",e);
		}
		return map;
	}
	
	@RequestMapping("/getIndexEvent/{type}/{eventId}")
	public ModelAndView getIndexEvent(@PathVariable String type,
			@PathVariable Integer eventId,ModelMap model){
		
		String gotopage = "";
		if("activity".equals(type)){
			gotopage = "index/event/activityDetails.jsp";
		}else if("train".equals(type)){
			gotopage = "index/event/trainDetails.jsp";
		}
		if(eventId!=null){
			model.addAttribute("event", eventService.getEvents(eventId));
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(gotopage);
		return mav;
	}*/
}