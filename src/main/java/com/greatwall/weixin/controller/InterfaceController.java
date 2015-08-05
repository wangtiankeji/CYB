/**  
* @Title: InterfaceController.java
* @Package com.greatwall.weixin
* @Description: TODO(用一句话描述该文件做什么)
* @author fudk fudk@sina.com  
* @date 2015年8月4日 下午8:14:04
*/ 
package com.greatwall.weixin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greatwall.weixin.util.SignUtil;

/**
 * @ClassName: InterfaceController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author fudk fudk_k@sina.com
 * @date 2015年8月4日 下午8:14:04
 *
 */
@Controller
@RequestMapping("/weixin")
public class InterfaceController {

	@RequestMapping("/recive")
	public@ResponseBody String recive(String signature,String timestamp,String nonce,String echostr){
		System.out.println("signature = "+signature);
		System.out.println("timestamp = "+timestamp);
		System.out.println("nonce = "+nonce);
		System.out.println("echostr = "+echostr);
		
		if(SignUtil.checkSignature("vNzNcFhyM4PGY2yBrrIn1sKWBa", signature, timestamp, nonce)){
			System.out.println("true");
			return echostr;
		}
		return "";
	}
}
