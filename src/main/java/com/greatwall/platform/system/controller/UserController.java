package com.greatwall.platform.system.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;
import com.greatwall.platform.system.dto.User;
import com.greatwall.platform.system.service.RoleService;
import com.greatwall.platform.system.service.UserService;
import com.greatwall.recharge.dto.ChannelCondition;
import com.greatwall.recharge.dto.UserChannel;
import com.greatwall.recharge.service.ChannelService;
import com.greatwall.recharge.service.UserChannelService;
import com.greatwall.util.RMSConstant;
import com.greatwall.util.ValidateUtil;

@Controller
@RequestMapping("/system/user")
public class UserController {

	Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@Autowired
	private ChannelService channelService;

	@Autowired
	private UserChannelService userChannelService;
	@Autowired
	private RoleService roleService;

	
	@RequestMapping("/userManage")
	public ModelAndView userManage(User user, ModelMap model) {
		// model.addAttribute("roletree",
		// JSONArray.fromObject(roleService.getRoleTree()));
		return new ModelAndView("/sysmanage/user/usermanage.jsp");
	}

	@RequestMapping("/getUsers")
	public ModelAndView getUsers(User user, PageParameter page,
			HttpSession session, ModelMap model) {
		try {
			model.addAttribute("users", userService.getUsers(user, page));
			model.addAttribute("page", page);
		} catch (DaoException e) {
			logger.error("查询用户列表错误", e);
			return new ModelAndView("/common/error.jsp");
		}
		return new ModelAndView("/sysmanage/user/users.jsp");
	}

	@RequestMapping("/searchUsers")
	public @ResponseBody
	List<User> searchUsers(String q, PageParameter page, HttpSession session)
			throws DaoException {
		if (StringUtils.isBlank(q)) {
			return null;
		}
		User user = new User();
		user.setLoginName(q.trim());

		return userService.searchUsers(user, page);
		/*
		 * List<User> userlist = userService.searchUsers(user, page);
		 * List<Map<String,Object>> relist = new
		 * ArrayList<Map<String,Object>>();
		 * if(userlist!=null&&userlist.size()>0){ for(User us : userlist){
		 * Map<String,Object> map = new HashMap<String,Object>();
		 * map.put("label", us.getLoginName()); map.put("value",
		 * us.getUserId()); map.put("userName", us.getUserName());
		 * relist.add(map); } }
		 * 
		 * return relist;
		 */
	}

	/**
	 * @Title: addUserInit
	 * @Description: 显示新增用户页面
	 * @param @param model
	 * @param @return 设定文件
	 * @return ModelAndView 返回类型
	 * @throws
	 */
	@RequestMapping("/addUserInit")
	public ModelAndView addUserInit(ModelMap model) {

		return new ModelAndView("/sysmanage/user/regist.jsp");
	}

	/**
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("/addUser")
	public @ResponseBody
	String addUser(User user, ModelMap model) {
		try {
			if (!userService.hasUser(user)) {

				// userService.saveUserAndChannel(user,channelCondition,roleId);
			} else {
				return "用户已注册";
			}
		} catch (Exception e) {
			logger.error("保存用户失败", e);
			return e.getMessage();
		}
		return "success";
	}

	@RequestMapping("/updateUserInit/{userId}")
	public ModelAndView updateUserInit(@PathVariable Integer userId,
			ModelMap model) {

		model.addAttribute("updateUser", userService.getUser(userId));
		return new ModelAndView("/sysmanage/user/regist.jsp");
	}

	@RequestMapping("/updateUser")
	public @ResponseBody
	String updateUser(User user, HttpSession session, ModelMap model) {
		try {
			// userService.updateUserAndChannel(user,channelCondition);
		} catch (Exception e) {
			logger.error("保存用户失败", e);
			return e.getMessage();
		}
		return "success";
	}

	public @ResponseBody
	String disableUser() {

		return "success";
	}

	public @ResponseBody
	String enableUser() {

		return "success";
	}

	@RequestMapping("/passwordInit")
	public ModelAndView changePasswordInit() {
		return new ModelAndView("/sysmanage/user/changepassword.jsp");
	}

	@RequestMapping("/updatePassword")
	public @ResponseBody
	String updatePassword(String oldPassword, String newPassword,
			HttpSession session) {
		User u = (User) session.getAttribute("user");

		if (userService.updatePassowrd(u.getUserId(), oldPassword, newPassword)) {
			return "success";
		} else {
			return "旧密码错误";
		}

	}
}
