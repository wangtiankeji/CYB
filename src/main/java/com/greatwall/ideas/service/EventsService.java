package com.greatwall.ideas.service;

import java.util.List;
import java.util.Map;

import com.greatwall.ideas.dto.Events;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface EventsService {


	List<Events> getPage(Events events, PageParameter page)
			throws DaoException;

	int save(Events events);

	Events getEvents(Integer eventId);

	int updateEventsByKey(Events events);

}
