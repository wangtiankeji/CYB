package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Talent;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface TalentService {

	List<Talent> getPage(Talent talent, PageParameter page)
			throws DaoException;

	int save(Talent talent);

	Talent getTalent(Integer talentId);

	int updateTalentByKey(Talent talent);

}
