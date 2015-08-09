package com.greatwall.ideas.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greatwall.ideas.dao.ConcernDao;
import com.greatwall.ideas.dao.EventDao;
import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.service.ConcernService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.service.ServiceException;
import com.greatwall.platform.domain.PageParameter;

/**
* @ClassName: ConcernServiceImpl
* @Description: TODO(这里用一句话描述这个类的作用)
* @author fudk fudk_k@sina.com
* @date 2015年8月2日 下午4:22:48
*
*/ 
@Service("concernService")
public class ConcernServiceImpl implements ConcernService {

	Logger logger = Logger.getLogger(ConcernServiceImpl.class);
	
	@Autowired
	private ConcernDao concernDao;
	
	@Autowired
	private EventDao eventDao;
	
	@Autowired
	private ProjectDao projectDao;
	
	@Override
	public List<Concern> getPage(Concern concern, PageParameter page)
			throws DaoException {
		return concernDao.getPage(concern, page);
	}

	@Override
	public int save(Concern concern) {
		return concernDao.insert(concern);
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public Boolean signUp(Concern concern) throws ServiceException{
		try {
			PageParameter page = new PageParameter();
			
			List<Concern> concernList = concernDao.getPage(concern, page);
			if(concernList!=null&&concernList.size()>0){
				throw new ServiceException("已报名");
			}
		} catch (DaoException e) {
			logger.error("", e);
			throw new ServiceException("系统报错");
		}
		if(eventDao.updateSignUpNum(concern.getTargetId(), "add")!=1){
			throw new ServiceException("报名失败");
		}
		if(concernDao.insert(concern)!=1){
			throw new ServiceException("报名失败");
		}
		return true;
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public Boolean concern(Concern concern) throws ServiceException{
		
		try {
			PageParameter page = new PageParameter();
			
			List<Concern> concernList = concernDao.getPage(concern, page);
			if(concernList!=null&&concernList.size()>0){
				return false;
			}else{
				if("project".equals(concern.getTargetType())){
					if(projectDao.updateConcernCount(concern.getTargetId(), "add")!=1){
						throw new ServiceException("收藏失败");
					}
				}else{
					if(eventDao.updateConcernCount(concern.getTargetId(), "add")!=1){
						throw new ServiceException("收藏失败");
					}
				}
				
				if(concernDao.insert(concern)!=1){
					throw new ServiceException("收藏失败");
				}
			}
		} catch (DaoException e) {
			logger.error("", e);
			throw new ServiceException("系统报错");
		}
		
		return true;
	}
	
	@Override
	@Transactional(rollbackFor=Exception.class)
	public Boolean unConcern(Concern concern) throws ServiceException{
		try {
			PageParameter page = new PageParameter();
			List<Concern> concernList = concernDao.getPage(concern, page);
			if(concernList!=null&&concernList.size()>0){
				concern.setConcernId(concernList.get(0).getConcernId());
			}else{
				return false;
			}
		} catch (DaoException e) {
			logger.error("", e);
			throw new ServiceException("系统报错");
		}
		if("project".equals(concern.getTargetType())){
			if(projectDao.updateConcernCount(concern.getTargetId(), "sub")!=1){
				throw new ServiceException("取消收藏失败");
			}
		}else{
			if(eventDao.updateConcernCount(concern.getTargetId(), "sub")!=1){
				throw new ServiceException("取消收藏失败");
			}
		}
		
		if(concernDao.deleteByPrimaryKey(concern.getConcernId())!=1){
			throw new ServiceException("取消收藏失败");
		}
		return true;
	}

	@Override
	public Concern getResume(Integer concernId) {
		return concernDao.selectByPrimaryKey(concernId);
	}

	@Override
	public int updateResumeByKey(Concern concern) {
		return concernDao.updateByPrimaryKeySelective(concern);
	}

}
