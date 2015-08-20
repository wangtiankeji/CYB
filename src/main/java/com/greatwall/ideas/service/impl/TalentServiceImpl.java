package com.greatwall.ideas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatwall.ideas.dao.TalentDao;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.dto.TalentCon;
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
	private TalentDao talentDao;
	
	@Override
	public List<Talent> getPage(TalentCon talent, PageParameter page)
			throws DaoException {
		return talentDao.getPage(talent, page);
	}

	@Override
	public int save(Talent talent) {
		return talentDao.insert(talent);
	}

	@Override
	public Talent getTalent(Integer talentId) {
		return talentDao.selectByPrimaryKey(talentId);
	}

	@Override
	public int updateTalentByKey(Talent talent) {
		return talentDao.updateByPrimaryKeySelective(talent);
	}
	
	@Override
	public int addHits(Integer talentId){
		return talentDao.addHits(talentId);
	}

}
