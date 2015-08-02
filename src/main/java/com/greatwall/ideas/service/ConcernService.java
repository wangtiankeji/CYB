package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;

public interface ConcernService {

	List<Concern> getPage(Concern concern, PageParameter page)
			throws DaoException;

	int save(Concern concern);

	Concern getResume(Integer concernId);

	int updateResumeByKey(Concern concern);

	Boolean signUp(Concern concern) throws ServiceException;

	Boolean concern(Concern concern) throws ServiceException;

	Boolean unConcern(Concern concern) throws ServiceException;

}
