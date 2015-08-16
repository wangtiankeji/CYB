package com.greatwall.ideas.controller;


import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.service.EventService;
import com.greatwall.platform.domain.PageParameter;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
@RequestMapping("/event")
public class EventController {
	
	Logger logger = Logger.getLogger(EventController.class);
	
	@Autowired
	private EventService eventService;

	
	@RequestMapping("/showEvents")
	public ModelAndView showEvents(){
		return new ModelAndView("/ideas/event/showEvents.jsp");
	}
	
	/**
	* @Title: getEvents
	* @Description: 得到参数信息列表
	* @param pubinfo
	* @param page
	* @param model
	* @return ModelAndView    返回类型
	* @throws
	*/ 
	@RequestMapping("/getEvents")
	public ModelAndView getEvents(Event event,PageParameter page,ModelMap model){
		try {
			model.addAttribute("events",eventService.getPage(event, page));
			model.addAttribute("page", page);
		} catch (Exception e) {
			logger.error("查询公共信息错误",e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/ideas/event/events.jsp");
	}


	@RequestMapping("/addInit")
	public ModelAndView addInit(Model model) {
		return new ModelAndView("/ideas/event/event.jsp");
	}
	
	@RequestMapping("/updateInit/{eventId}")
	public ModelAndView updateInit(@PathVariable Integer eventId,ModelMap model){
		if(eventId!=null&&eventId>0){
			model.addAttribute("event", eventService.getEvent(eventId));
		}
		return new ModelAndView("/ideas/event/event.jsp");
	}
	
	@RequestMapping("/addEvents")
	public@ResponseBody String addEvents(Event event){
		try {
			event.setCreateTime(new Date());
			event.setHits(0);
			event.setCallNum(0);
			event.setCommentLevel(0);
			event.setSignUpNum(0);
			event.setConcernCount(0);
			if(eventService.save(event)==1){
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
	public@ResponseBody String updateEvents(Event event){
		try {
			if(event!=null&&event.getEventId()!=null){
				if(eventService.updateEventByKey(event)==1){
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
		ModelAndView mav = new ModelAndView();
		mav.setViewName(type+".jsp");
		return mav;
	}
}