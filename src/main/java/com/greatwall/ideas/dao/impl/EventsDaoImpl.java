package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.EventsDao;
import com.greatwall.ideas.dto.Events;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class EventsDaoImpl extends MyBatisDao implements EventsDao {

	@Override
	public int deleteByPrimaryKey(Integer eventId) {
		return this.delete("EventsMapper.deleteByPrimaryKey", eventId);
	}

	@Override
	public int insert(Events events) {
		return this.save("EventsMapper.insert",events);
	}

	@Override
	public Events selectByPrimaryKey(Integer eventId) {
		return this.get("EventsMapper.selectByPrimaryKey", eventId);
	}

	@Override
	public List<Events> getPage(Events events, PageParameter page)
			throws DaoException {
		return this.getListPage("EventsMapper.selectPage", events, page);
	}

	@Override
	public int updateByPrimaryKeySelective(Events events) {
		return this.update("EventsMapper.updateByPrimaryKeySelective", events);
	}

}
