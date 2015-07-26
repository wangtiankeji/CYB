package com.greatwall.ideas.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.PubinfoDao;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.service.PubinfoService;

/** 
 * @ClassName: PubinfoServiceImpl 
 * @Description:  
 * @author fudk fudk_k@sina.com 
 * @date 2015年7月26日 下午2:19:10 
 *  
 */
@Service("pubinfoService")
public class PubinfoServiceImpl implements PubinfoService {

	@Autowired
	private PubinfoDao pubinfoDao;

	@Override
	public Map<String,String> getPubinfos(Pubinfo pubinfo){
		Map<String,String> map = new HashMap<String,String>();
		List<Pubinfo>  pubinfos = pubinfoDao.getPubinfos(pubinfo);
		if(pubinfos!=null){
			for(Pubinfo info : pubinfos){
				map.put(info.getValueKey(), info.getNoticeStr());
			}
		}
		return map;
	}
}