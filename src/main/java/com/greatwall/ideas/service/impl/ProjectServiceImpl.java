package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greatwall.ideas.dao.PartnerDao;
import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Partner;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.ProjectCon;
import com.greatwall.ideas.service.ProjectService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	private ProjectDao projectDao;
	
	@Autowired
	private PartnerDao partnerDao;
	
	@Override
	public int deleteByPrimaryKey(Integer projectId) {
		return projectDao.deleteByPrimaryKey(projectId);
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public int save(Project project,List<Partner> partners) throws ServiceException {
		Project pro = projectDao.getProject(project);
		if(pro!=null){
			throw new ServiceException("项目名称不能重复");
		}
		if(projectDao.insert(project) != 1 ){
			return 0;
		}
		pro = projectDao.getProject(project);
		for(Partner partner:partners){
			partner.setProjectId(pro.getProjectId());
			partnerDao.insert(partner);
		}
		
		return 1;
	}
	
	@Override
	public List<Partner> getPartners(Partner partner){
		return partnerDao.getPartners(partner);
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
	public List<Project> getPage(ProjectCon project, PageParameter page)
			throws DaoException {
		return projectDao.getPage(project, page);
	}
	
	@Override
	public List<Project> selectProjectPartnerPage(ProjectCon project,PageParameter page) throws DaoException {
		return projectDao.selectProjectPartnerPage(project, page);
	}
	
	@Override
	public List<Project> getConcernPage(Concern concern, PageParameter page)
			throws DaoException {
		return projectDao.getConcernPage(concern, page);
	}
	
	@Override
	public int addHits(Integer projectId){
		return projectDao.addHits(projectId);
	}
}
