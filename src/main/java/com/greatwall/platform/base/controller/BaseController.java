package com.greatwall.platform.base.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.greatwall.platform.domain.ReturnMsg;
import com.greatwall.platform.system.dto.User;

public class BaseController {

	/*public ReturnMsg getSessionUser(HttpServletRequest request){
		ReturnMsg rm = new ReturnMsg();
		HttpSession httpSession = request.getSession();
		Map<String,Object> map = new HashMap<String,Object>();
		User user = httpSession.getAttribute("user")!=null?(User)httpSession.getAttribute("user"):null;
		if(user!=null){
			map.put("user", user);
			rm.setReturnMap(map);
			rm.setFlag(true);
		}else{
			String url = request.getServletPath();
			System.out.println(url);
			httpSession.setAttribute("lastUrl", url);
			map.put("gotoUrl", "/index#page-login");
			rm.setReturnMap(map);
			rm.setFlag(false);
		}
		
		return rm;
	}*/
	
	public User getSessionUser(HttpSession httpSession){
		return httpSession.getAttribute("user")!=null?(User)httpSession.getAttribute("user"):null;
	}
	
	public Boolean checkLogin(HttpServletRequest request){
		HttpSession httpSession = request.getSession();
		User user = httpSession.getAttribute("user")!=null?(User)httpSession.getAttribute("user"):null;
		if(user==null){
			String url = request.getServletPath();
			System.out.println(url);
			httpSession.setAttribute("lastUrl", url);
			return false;
		}
		
		return true;
	}
}
