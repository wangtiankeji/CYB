package com.greatwall.platform.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.greatwall.platform.system.dto.User;

public class BaseController {

	
	public User getSessionUser(HttpSession httpSession){
		return httpSession.getAttribute("user")!=null?(User)httpSession.getAttribute("user"):null;
	}
	
	public Boolean checkLogin(HttpServletRequest request){
		HttpSession httpSession = request.getSession();
		User user = httpSession.getAttribute("user")!=null?(User)httpSession.getAttribute("user"):null;
		if(user==null){
			String url = request.getServletPath();
			httpSession.setAttribute("lastUrl", url);
			return false;
		}
		
		return true;
	}
}
