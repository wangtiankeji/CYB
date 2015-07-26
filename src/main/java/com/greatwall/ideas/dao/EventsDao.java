package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Events;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface EventsDao {
    int deleteByPrimaryKey(Integer eventId);

    int insert(Events events);

    Events selectByPrimaryKey(Integer eventId);

    int updateByPrimaryKeySelective(Events events);

	List<Events> getPage(Events events, PageParameter page) throws DaoException;

}