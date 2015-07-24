package com.greatwall.platform.login.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greatwall.platform.system.dto.User;
import com.greatwall.platform.system.service.UserService;



/**
 * 首页
 * @author fudk_k@sina.com
 * @update 2014-7-6
 */
@Controller
public class RegistController {

	Logger logger = Logger.getLogger(RegistController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping("/regist")
	public@ResponseBody String regist(User user) {
		try {
			if(user==null||user.getLoginName()==null){
				return "用户名不能为空";
			}
			if (!userService.hasUser(user)) {
				userService.saveUser(user);
			} else {
				return "用户已注册";
			}
		} catch (Exception e) {
			logger.error("保存用户失败", e);
			return "注册错误";
		}
		return "success";
	}

}