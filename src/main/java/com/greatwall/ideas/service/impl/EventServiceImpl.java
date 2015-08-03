package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.EventDao;
import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.service.EventService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

/** 
 * @ClassName: EventsServiceImpl 
 * @Description:  
 * @author fudk fudk_k@sina.com 
 * @date 2015年7月26日 下午2:19:10 
 *  
 */
@Service("eventService")
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao eventDao;

	
	@Override
	public List<Event> getPage(Event event, PageParameter page) throws DaoException{
		return eventDao.getPage(event, page);
	}
	
	@Override
	public List<Event> getConcernPage(Event event, PageParameter page)
			throws DaoException {
		return eventDao.getConcernPage(event, page);
	}
	
	@Override
	public int save(Event event){
		return eventDao.insert(event);
	}
	
	@Override
	public Event getEvent(Integer eventId){
		return eventDao.selectByPrimaryKey(eventId);
	}
	
	@Override
	public int updateEventByKey(Event event){
		return eventDao.updateByPrimaryKeySelective(event);
	}
	
	@Override
	public int addHits(Integer eventId){
		return eventDao.addHits(eventId);
	}
	
	@Override
	public int addCallNum(Integer eventId){
		return eventDao.addCallNum(eventId);
	}
	
	
	
}
