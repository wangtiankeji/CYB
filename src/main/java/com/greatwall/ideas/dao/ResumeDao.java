package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Resume;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface ResumeDao {
    int deleteByPrimaryKey(Integer resumeId);

    int insert(Resume resume);

    Resume selectByPrimaryKey(Integer resumeId);

    int updateByPrimaryKeySelective(Resume resume);

	List<Resume> getPage(Resume resume, PageParameter page) throws DaoException;

}