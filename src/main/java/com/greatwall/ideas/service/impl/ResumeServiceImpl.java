package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.ResumeDao;
import com.greatwall.ideas.dto.Resume;
import com.greatwall.ideas.service.ResumeService;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

/**
* @ClassName: ResumeServiceImpl
* @Description: 个人简历业务逻辑类
* @author fudk fudk_k@sina.com
* @date 2015年7月30日 下午7:51:58
*
*/ 
@Service("resumeService")
public class ResumeServiceImpl implements ResumeService{

	@Autowired
	private ResumeDao resumeDao;
	
	@Override
	public List<Resume> getPage(Resume resume, PageParameter page)
			throws DaoException {
		return resumeDao.getPage(resume, page);
	}

	@Override
	public int save(Resume resume) {
		return resumeDao.insert(resume);
	}

	@Override
	public Resume getResume(Integer resumeId) {
		return resumeDao.selectByPrimaryKey(resumeId);
	}

	@Override
	public int updateResumeByKey(Resume resume) {
		return resumeDao.updateByPrimaryKeySelective(resume);
	}

}
