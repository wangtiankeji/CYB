package com.greatwall.ideas.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.EventsDao;
import com.greatwall.ideas.dao.PubinfoDao;
import com.greatwall.ideas.dto.Events;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.service.EventsService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

/** 
 * @ClassName: EventsServiceImpl 
 * @Description:  
 * @author fudk fudk_k@sina.com 
 * @date 2015年7月26日 下午2:19:10 
 *  
 */
@Service("pubinfoService")
public class EventsServiceImpl implements EventsService {

	@Autowired
	private EventsDao eventsDao;

	
	@Override
	public List<Events> getPage(Events events, PageParameter page) throws DaoException{
		return eventsDao.getPage(events, page);
	}
	
	@Override
	public int save(Events events){
		return eventsDao.insert(events);
	}
	
	@Override
	public Events getEvents(Integer eventId){
		return eventsDao.selectByPrimaryKey(eventId);
	}
	
	@Override
	public int updateEventsByKey(Events events){
		return eventsDao.updateByPrimaryKeySelective(events);
	}
	
	
}
