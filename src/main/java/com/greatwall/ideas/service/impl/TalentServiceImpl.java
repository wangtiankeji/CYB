package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.TalentDao;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.service.TalentService;
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
public class TalentServiceImpl implements TalentService{

	@Autowired
	private TalentDao resumeDao;
	
	@Override
	public List<Talent> getPage(Talent talent, PageParameter page)
			throws DaoException {
		return resumeDao.getPage(talent, page);
	}

	@Override
	public int save(Talent talent) {
		return resumeDao.insert(talent);
	}

	@Override
	public Talent getTalent(Integer talentId) {
		return resumeDao.selectByPrimaryKey(talentId);
	}

	@Override
	public int updateTalentByKey(Talent talent) {
		return resumeDao.updateByPrimaryKeySelective(talent);
	}

}
