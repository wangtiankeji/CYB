package com.greatwall.ideas.dao;

import com.greatwall.ideas.dto.Concern;


public interface ConcernDao {
    int deleteByPrimaryKey(Integer concernId);

    int insert(Concern record);


//    Concern selectByPrimaryKey(Integer concernId);
//
//    int updateByPrimaryKeySelective(Concern record);
//
//    int updateByPrimaryKey(Concern record);
}