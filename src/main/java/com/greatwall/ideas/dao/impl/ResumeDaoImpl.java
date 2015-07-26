package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.ResumeDao;
import com.greatwall.ideas.dto.Resume;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class ResumeDaoImpl extends MyBatisDao implements ResumeDao {

	@Override
	public int deleteByPrimaryKey(Integer resumeId) {
		return this.delete("ResumeMapper.deleteByPrimaryKey", resumeId);
	}

	@Override
	public int insert(Resume resume) {
		return this.save("ResumeMapper.insert",resume);
	}

	@Override
	public Resume selectByPrimaryKey(Integer resumeId) {
		return this.get("ResumeMapper.selectByPrimaryKey", resumeId);
	}

	@Override
	public int updateByPrimaryKeySelective(Resume resume) {
		return this.update("ResumeMapper.updateByPrimaryKeySelective", resume);
	}
	
	@Override
	public List<Resume> getPage(Resume resume,PageParameter page) throws DaoException {
		return this.getListPage("ResumeMapper.selectPage", resume, page);
	}

}
