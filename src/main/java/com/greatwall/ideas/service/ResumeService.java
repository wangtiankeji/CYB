package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Resume;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface ResumeService {

	List<Resume> getPage(Resume resume, PageParameter page)
			throws DaoException;

	int save(Resume resume);

	Resume getResume(Integer resumeId);

	int updateResumeByKey(Resume resume);

}
