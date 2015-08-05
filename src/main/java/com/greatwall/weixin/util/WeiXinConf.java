package com.greatwall.weixin.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

@Repository
public class WeiXinConf {

	private   String appId;
	private   String appsecret;
	private   String token;
	private   String oauth2;
	
	public   String getAppId() {
		return appId;
	}
	@Value("#{propertiesReader['weixin.appId']}") 
	public   void setAppId(String appId) {
		this.appId = appId;
	}
	public   String getAppsecret() {
		return appsecret;
	}
	@Value("#{propertiesReader['weixin.appsecret']}") 
	public   void setAppsecret(String appsecret) {
		this.appsecret = appsecret;
	}
	public   String getToken() {
		return token;
	}
	@Value("#{propertiesReader['weixin.token']}")
	public   void setToken(String token) {
		this.token = token;
	}
	public   String getOauth2() {
		return oauth2;
	}
	@Value("#{propertiesReader['weixin.oauth2']}")
	public   void setOauth2(String oauth2) {
		this.oauth2 = oauth2;
	}
	
	
	
	
}
