package com.greatwall.platform.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.greatwall.platform.login.service.LoginService;
import com.greatwall.platform.system.dto.User;
import com.greatwall.weixin.service.WeiXinService;



/**
 * 登录
 * @author fudk_k@sina.com
 * @update 2014-7-5
 */
@Controller
public class LoginController {

	private static Logger logger = Logger.getLogger(LoginController.class);  
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private WeiXinService weiXinService;
	
	@RequestMapping(value = "/login/ssoLogin",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView ssoLogin(String code,String state,HttpSession httpSession){
		System.out.println("code = "+code);
		System.out.println("state = "+state);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/index");
		try {
			String oauth2 = weiXinService.getOauth2(code);
			
			if(StringUtils.isNotBlank(oauth2)){
				Gson gson = new Gson();
				Map<String,String> map = gson.fromJson(oauth2, HashMap.class);
				if(map.get("openid")!=null&&!"".equals(map.get("openid"))){
					loginService.ssoLogin(map.get("openid"), httpSession);
				}
			}
			
		} catch (Exception e) {
			logger.error("", e);
			mav.setViewName("redirect:/indexLoginInit");
		}
		
		return mav;
	}
	
	@RequestMapping("/indexLoginInit")
	public ModelAndView indexLoginInit() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("indexlogin.jsp");

		return mav;
	}
	
	@RequestMapping(value = "/indexLogin", method = RequestMethod.POST)
	public ModelAndView indexLogin(@RequestParam(value="loginName") String loginName,
			@RequestParam(value="password") String password,HttpSession httpSession){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/index");
		if(StringUtils.isBlank(loginName)||StringUtils.isBlank(password)){
			mav.setViewName("indexlogin.jsp");
			mav.addObject("reflag", 1);//用户名或密码错误
			mav.addObject("loginName", loginName);
			mav.addObject("msg", "用户名或密码为空！");
		}
		
		if(!loginService.checkLogin(loginName, password,httpSession)){
			mav.setViewName("indexlogin.jsp");
			mav.addObject("reflag", 1);//用户名或密码错误
			mav.addObject("loginName", loginName);
			mav.addObject("msg", "用户名或密码错误！");
		}
		
		String lastUrl = httpSession.getAttribute("lastUrl")!=null?(String)httpSession.getAttribute("lastUrl"):null;
		if(StringUtils.isNotBlank(lastUrl)){
			mav.setViewName("redirect:"+lastUrl);
			httpSession.setAttribute("lastUrl", null);
		}
		return mav;
	}
//	public@ResponseBody String indexLogin(@RequestParam(value="loginName") String loginName,
//			@RequestParam(value="password") String password,HttpSession httpSession){
//		if(StringUtils.isBlank(loginName)||StringUtils.isBlank(password)){
//			return "用户名或密码为空";
//		}
//		
//		if(!loginService.checkLogin(loginName, password,httpSession)){
//			return "用户名或密码错误";
//		}
//		return "success";
//	}

	@RequestMapping("/login")
	public ModelAndView login() {

		ModelAndView mav = new ModelAndView();
		//		mav.setViewName("login.ftl");
		mav.setViewName("login.jsp");

		//		String kaptchaExpected = (String)httpSession
		//				.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		//System.out.println(kaptchaExpected);

		return mav;
	}

	@RequestMapping(value = "/loginmain", method = RequestMethod.POST)
	public ModelAndView loginmain(@RequestParam(value="loginName") String loginName,
			@RequestParam(value="password") String password,HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login.jsp");

		try {
			if(StringUtils.isBlank(loginName)||StringUtils.isBlank(password)){
				mav.addObject("reflag", 1);//用户名或密码错误
				mav.addObject("loginName", loginName);
				mav.addObject("msg", "用户名或密码为空！");
				return mav;
			}

			if(loginService.checkLogin(loginName, password,httpSession)){
				//				mav.setViewName("redirect:mana/index");
				mav.setViewName("redirect:/main");
			}else{
				mav.addObject("reflag", 1);//用户名或密码错误
				mav.addObject("loginName", loginName);
				mav.addObject("msg", "用户名或密码错误！");
			}
		} catch (Exception e) {
			logger.error("登录错误",e);
			mav.addObject("reflag", 1);//用户名或密码错误
			mav.addObject("loginName", loginName);
			mav.addObject("msg", "登录错误！");
		}
		return mav;
	}


	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login.jsp");
		if(httpSession.getAttribute("user")!=null){
			httpSession.setAttribute("user", null);
		}

		return mav;
	}


}