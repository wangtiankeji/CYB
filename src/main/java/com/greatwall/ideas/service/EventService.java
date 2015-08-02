package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Event;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface EventService {


	List<Event> getPage(Event events, PageParameter page)
			throws DaoException;

	int save(Event event);

	Event getEvent(Integer eventId);

	int updateEventByKey(Event event);

	int addHits(Integer eventId);

	int addCallNum(Integer eventId);

}
