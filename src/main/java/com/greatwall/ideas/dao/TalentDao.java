package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.dto.TalentCon;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface TalentDao {
    int deleteByPrimaryKey(Integer talentId);

    int insert(Talent talent);

    Talent selectByPrimaryKey(Integer talentId);

    int updateByPrimaryKeySelective(Talent talent);

	List<Talent> getPage(TalentCon talent, PageParameter page) throws DaoException;

	int updateConcernCount(Integer talentId, String type);

	int addHits(Integer talentId);

	List<Talent> getConcernPage(Concern concern, PageParameter page)
			throws DaoException;

}