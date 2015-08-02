package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Event;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface EventDao {
    int deleteByPrimaryKey(Integer eventId);

    int insert(Event event);

    Event selectByPrimaryKey(Integer eventId);

    int updateByPrimaryKeySelective(Event event);

	List<Event> getPage(Event event, PageParameter page) throws DaoException;

	int updateSignUpNum(Integer eventId, String type);

	int addHits(Integer eventId);

	int updateConcernCount(Integer eventId, String type);

	int addCallNum(Integer eventId);

}