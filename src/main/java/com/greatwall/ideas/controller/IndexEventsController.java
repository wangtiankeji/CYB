package com.greatwall.ideas.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Events;
import com.greatwall.ideas.service.EventsService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("index/events")
public class IndexEventsController {
	
	Logger logger = Logger.getLogger(IndexEventsController.class);
	
	@Autowired
	private EventsService eventsService;

	
	@RequestMapping("/showEvents")
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
			model.addAttribute("events", eventsService.getEvents(eventId));
		}
		return new ModelAndView("/ideas/events/event.jsp");
	}
	
	@RequestMapping("/addEvents")
	public@ResponseBody String addEvents(Events events){
		try {
			events.setCreateTime(new Date());
			if(eventsService.save(events)==1){
				return "success";
			}else{
				return "保存失败";
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
	}
	@RequestMapping("/updateEvents")
	public@ResponseBody String updateEvents(Events events){
		try {
			if(events!=null&&events.getEventId()!=null){
				if(eventsService.updateEventsByKey(events)==1){
					return "success";
				}
			}
		} catch (Exception e) {
			logger.error("保存错误", e);
			return "保存错误";
		}
		
		return "保存失败";
	}
	
	@RequestMapping("/showIndexEvents/{type}")
	public ModelAndView showIndexEvents(@PathVariable String type){
		String gotopage = "";
		if("activity".equals(type)){
			gotopage = "index/activity/showActivitys.jsp";
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName(gotopage);
		return mav;
	}
	@RequestMapping("/getIndexEvents")
	public@ResponseBody Map<String,Object> getIndexEvents(Events events,PageParameter page,ModelMap model){
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			map.put("events", eventsService.getPage(events, page));
			map.put("page", page);
			
		} catch (DaoException e) {
			logger.error("查询公共信息错误",e);
		}
		return map;
//		try {
//			model.addAttribute("eventses",eventsService.getPage(events, page));
//			model.addAttribute("page", page);
//		} catch (Exception e) {
//			logger.error("查询公共信息错误",e);
//			return new ModelAndView("/common/error.jsp");
//		}
//		return new ModelAndView("/ideas/events/events.jsp");
	}
	
	@RequestMapping("/getIndexEvents/{type}/{eventId}")
	public ModelAndView getIndexEvent(@PathVariable String type,
			@PathVariable Integer eventId,ModelMap model){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index/"+type+"/details.jsp");
		return mav;
	}
}