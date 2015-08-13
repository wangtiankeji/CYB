package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Partner;
import com.greatwall.ideas.dto.Project;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;


public interface ProjectService {
    int deleteByPrimaryKey(Integer projectId);

    int save(Project project,List<Partner> partners) throws ServiceException;

    Project getProject(Integer projectId);

    int updateByPrimaryKey(Project project);

	List<Project> getPage(Project project, PageParameter page)
			throws DaoException;

	List<Partner> getPartners(Partner partner);

	List<Project> getConcernPage(Concern concern, PageParameter page)
			throws DaoException;

}