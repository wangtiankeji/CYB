package com.test.data;

import com.test.model.Talent;

public interface TalentMapper {
    int deleteByPrimaryKey(Integer talentId);

    int insert(Talent record);

    int insertSelective(Talent record);

    Talent selectByPrimaryKey(Integer talentId);

    int updateByPrimaryKeySelective(Talent record);

    int updateByPrimaryKey(Talent record);
}