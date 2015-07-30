package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	private ProjectDao projectDao;
	
	@Override
	public int deleteByPrimaryKey(Integer projectId) {
		return projectDao.deleteByPrimaryKey(projectId);
	}

	@Override
	public int save(Project project) {
		return projectDao.insert(project);
	}

	@Override
	public Project getProject(Integer projectId) {
		return projectDao.selectByPrimaryKey(projectId);
	}

	@Override
	public int updateByPrimaryKey(Project project) {
		return projectDao.updateByPrimaryKeySelective(project);
	}

	@Override
	public List<Project> getPage(Project project, PageParameter page)
			throws DaoException {
		return projectDao.getPage(project, page);
	}

}
