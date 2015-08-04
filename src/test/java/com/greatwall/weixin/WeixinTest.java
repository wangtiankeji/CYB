package com.greatwall.weixin;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;

import com.greatwall.weixin.util.HttpClientUtil;

public class WeixinTest {

	public static void main(String[] args)  {
		// TODO Auto-generated method stub
		CloseableHttpClient httpClient = HttpClientUtil.createSSLClientDefault();

		HttpGet get = new HttpGet();

		try {
			get.setURI(new URI("https://api.weixin.qq.com/sns/oauth2/access_token?appid=wxdca4214f883e104a"
					+ "&secret=78c63abd0ee1202bf260b2f3ee8d17c3&code=041df7a5318cd8b5310c5184ea7e6de5&grant_type=authorization_code"));
			
			HttpResponse httpResponse = httpClient.execute(get);
			
			//getEntity()  
			HttpEntity httpEntity = httpResponse.getEntity();  
			if (httpEntity != null) {  
				//打印响应内容  
				System.out.println("response:" + EntityUtils.toString(httpEntity, "UTF-8"));  
			}  
			//释放资源  
			httpClient.close();  
			
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
