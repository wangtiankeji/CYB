package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.EventDao;
import com.greatwall.ideas.dto.Event;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class EventDaoImpl extends MyBatisDao implements EventDao {

	@Override
	public int deleteByPrimaryKey(Integer eventId) {
		return this.delete("EventMapper.deleteByPrimaryKey", eventId);
	}

	@Override
	public int insert(Event event) {
		return this.save("EventMapper.insert",event);
	}

	@Override
	public Event selectByPrimaryKey(Integer eventId) {
		return this.get("EventMapper.selectByPrimaryKey", eventId);
	}

	@Override
	public List<Event> getPage(Event event, PageParameter page)
			throws DaoException {
		return this.getListPage("EventMapper.selectPage", event, page);
	}

	@Override
	public int updateByPrimaryKeySelective(Event event) {
		return this.update("EventMapper.updateByPrimaryKeySelective", event);
	}
	
	@Override
	public int updateSignUpNum(Integer eventId,String type){
		if("add".equals(type)){
			return this.update("EventMapper.addSignUpNum", eventId);
		}else if("sub".equals(type)){
			return this.update("EventMapper.subSignUpNum", eventId);
		}
		return 0;
	}
	
	@Override
	public int updateConcernCount(Integer eventId,String type){
		if("add".equals(type)){
			return this.update("EventMapper.addConcernCount", eventId);
		}else if("sub".equals(type)){
			return this.update("EventMapper.subConcernCount", eventId);
		}
		return 0;
	}
	
	@Override
	public int addHits(Integer eventId){
		return this.update("EventMapper.addHits", eventId);
	}
	
	@Override
	public int addCallNum(Integer eventId){
		return this.update("EventMapper.addCallNum", eventId);
	}

}
