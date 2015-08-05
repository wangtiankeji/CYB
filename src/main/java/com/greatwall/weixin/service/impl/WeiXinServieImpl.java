package com.greatwall.weixin.service.impl;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.weixin.service.WeiXinService;
import com.greatwall.weixin.util.HttpClientUtil;
import com.greatwall.weixin.util.WeiXinConf;

@Service("weiXinService")
public class WeiXinServieImpl implements WeiXinService {

	private static Logger logger = Logger.getLogger(WeiXinServieImpl.class);

	@Autowired
	private WeiXinConf weiXinConf;
	
	@Override
	public String getOauth2(String code){
		String url = weiXinConf.getOauth2();
		url = url.replace("appid=", "appid="+weiXinConf.getAppId());
		url = url.replace("secret=", "secret="+weiXinConf.getAppsecret());
		url = url.replace("code=", "code="+code);
		CloseableHttpClient httpClient = HttpClientUtil.createSSLClientDefault();

		HttpGet get = new HttpGet();

		try {
			get.setURI(new URI(url));
			
			HttpResponse httpResponse = httpClient.execute(get);
			
			//getEntity()  
			HttpEntity httpEntity = httpResponse.getEntity();  
			if (httpEntity != null) {  
				//打印响应内容  
				String str = EntityUtils.toString(httpEntity, "UTF-8");
				System.out.println("response:" + str);  
				return str;
			}  
			
		} catch (ClientProtocolException e) {
			logger.error("", e);
		} catch (IOException e) {
			logger.error("", e);
		} catch (URISyntaxException e) {
			logger.error("", e);
		}finally {  
			try {
				//释放资源  
				httpClient.close();
			} catch (IOException e) {
			}  
		}  
		return "";
	}
}
