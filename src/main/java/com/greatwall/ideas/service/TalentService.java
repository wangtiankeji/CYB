package com.greatwall.ideas.service;

import java.util.List;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.dto.TalentCon;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface TalentService {

	List<Talent> getPage(TalentCon talent, PageParameter page)
			throws DaoException;

	int save(Talent talent);

	Talent getTalent(Integer talentId);

	int updateTalentByKey(Talent talent);

	int addHits(Integer talentId);

	List<Talent> getConcernPage(Concern concern, PageParameter page)
			throws DaoException;

}
