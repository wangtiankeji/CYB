package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Talent;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface TalentDao {
    int deleteByPrimaryKey(Integer talentId);

    int insert(Talent talent);

    Talent selectByPrimaryKey(Integer talentId);

    int updateByPrimaryKeySelective(Talent talent);

	List<Talent> getPage(Talent talent, PageParameter page) throws DaoException;

	int updateConcernCount(Integer talentId, String type);

}