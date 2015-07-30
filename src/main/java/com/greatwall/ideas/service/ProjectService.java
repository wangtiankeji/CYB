package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Project;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface ProjectService {
    int deleteByPrimaryKey(Integer projectId);

    int save(Project project);

    Project getProject(Integer projectId);

    int updateByPrimaryKey(Project project);

	List<Project> getPage(Project project, PageParameter page)
			throws DaoException;

}