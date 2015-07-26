package com.greatwall.platform.system.dao;

import java.util.List;

import com.greatwall.platform.system.dto.DataDict;


public interface DataDictDao {
    int deleteByPrimaryKey(Integer dataId);

    int insert(DataDict dataDict);

    DataDict selectByPrimaryKey(Integer dataId);

    int updateByPrimaryKeySelective(DataDict dataDict);

	List<DataDict> getDataDicts(DataDict dataDict);

}