package com.greatwall.ideas.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.PubinfoDao;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.service.PubinfoService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

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
	public Map<String,Object> getPubinfos(Pubinfo pubinfo){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Pubinfo>  pubinfos = pubinfoDao.getPubinfos(pubinfo);
		if(pubinfos!=null){
			for(Pubinfo info : pubinfos){
				map.put(info.getValueKey(), info.getNoticeStr()==null?info.getHit():info.getNoticeStr());
			}
		}
		return map;
	}
	
	@Override
	public List<Pubinfo> getPubinfoList(Pubinfo pubinfo){
		return pubinfoDao.getPubinfos(pubinfo);
	}
	
	@Override
	public List<Pubinfo> getPage(Pubinfo pubinfo, PageParameter page) throws DaoException{
		return pubinfoDao.getPage(pubinfo, page);
	}
	
	@Override
	public int save(Pubinfo pubinfo){
		return pubinfoDao.insert(pubinfo);
	}
	
	@Override
	public Pubinfo getPubinfo(Integer infoId){
		return pubinfoDao.selectByPrimaryKey(infoId);
	}
	
	@Override
	public int updatePubinfoByKey(Pubinfo pubinfo){
		return pubinfoDao.updateByPrimaryKey(pubinfo);
	}
	
	@Override
	public int addHits(Pubinfo pubinfo){
		return pubinfoDao.addHits(pubinfo);
	}
	
}
