package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Concern;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface ConcernDao {
    int deleteByPrimaryKey(Integer concernId);

    int insert(Concern concern);

    Concern selectByPrimaryKey(Integer concernId);

    int updateByPrimaryKeySelective(Concern concern);
    
    public List<Concern> getPage(Concern concern, PageParameter page) throws DaoException;
    
//
//    int updateByPrimaryKey(Concern record);
}