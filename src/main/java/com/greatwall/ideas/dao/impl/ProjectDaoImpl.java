package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.ProjectCon;
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
		project.setConcernCount(project.getConcernCount()==null?0:project.getConcernCount());
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
	public List<Project> getPage(ProjectCon project,PageParameter page) throws DaoException {
		if(StringUtils.isNotBlank(project.getProjectArea())){
			project.setProjectArea("%"+project.getProjectArea()+"%");
		}
		return this.getListPage("ProjectMapper.selectPage", project, page);
	}

	@Override
	public List<Project> selectProjectPartnerPage(ProjectCon project,PageParameter page) throws DaoException {
		if(StringUtils.isNotBlank(project.getProjectArea())){
			project.setProjectArea("%"+project.getProjectArea()+"%");
		}
		return this.getListPage("ProjectMapper.selectProjectPartnerPage", project, page);
	}
	
	@Override
	public List<Project> getConcernPage(Concern concern,PageParameter page) throws DaoException {
		return this.getListPage("ProjectMapper.getConcernPage", concern, page);
	}
	
	@Override
	public int updateConcernCount(Integer eventId,String type){
		if("add".equals(type)){
			return this.update("ProjectMapper.addConcernCount", eventId);
		}else if("sub".equals(type)){
			return this.update("ProjectMapper.subConcernCount", eventId);
		}
		return 0;
	}

	@Override
	public int addHits(Integer projectId){
		return this.update("ProjectMapper.addHits", projectId);
	}

}
