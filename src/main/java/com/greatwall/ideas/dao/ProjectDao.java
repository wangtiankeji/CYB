package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Project;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface ProjectDao {
    int deleteByPrimaryKey(Integer projectId);

    int insert(Project project);

    Project selectByPrimaryKey(Integer projectId);

    int updateByPrimaryKeySelective(Project project);

	List<Project> getPage(Project project, PageParameter page)
			throws DaoException;

	Project getProject(Project project);

	int updateConcernCount(Integer eventId, String type);

}