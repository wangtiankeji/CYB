package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dto.Project;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class ProjectDaoImpl extends MyBatisDao implements ProjectDao {

	@Override
	public int deleteByPrimaryKey(Integer projectId) {
		return this.delete("ProjectMapper.deleteByPrimaryKey", projectId);
	}

	@Override
	public int insert(Project project) {
		return this.save("ProjectMapper.insert",project);
	}

	@Override
	public Project selectByPrimaryKey(Integer projectId) {
		return this.get("ProjectMapper.selectByPrimaryKey", projectId);
	}
	
	@Override
	public Project getProject(Project project){
		return this.get("ProjectMapper.selectProject", project);
	}

	@Override
	public int updateByPrimaryKeySelective(Project project) {
		return this.update("ProjectMapper.updateByPrimaryKeySelective", project);
	}
	
	@Override
	public List<Project> getPage(Project project,PageParameter page) throws DaoException {
			return this.getListPage("ProjectMapper.selectPage", project, page);
	}


}
