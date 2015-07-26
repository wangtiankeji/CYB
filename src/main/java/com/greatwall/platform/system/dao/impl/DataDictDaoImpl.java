package com.greatwall.platform.system.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.system.dao.DataDictDao;
import com.greatwall.platform.system.dto.DataDict;

@Repository
public class DataDictDaoImpl extends MyBatisDao implements DataDictDao {

	@Override
	public int deleteByPrimaryKey(Integer dataId) {
		return this.delete("DataDictMapper.deleteByPrimaryKey", dataId);
	}

	@Override
	public int insert(DataDict dataDict) {
		return this.save("DataDictMapper.insert",dataDict);
	}

	@Override
	public DataDict selectByPrimaryKey(Integer dataId) {
		return this.get("DataDictMapper.selectByPrimaryKey", dataId);
	}

	@Override
	public int updateByPrimaryKeySelective(DataDict dataDict) {
		return this.update("DataDictMapper.updateByPrimaryKeySelective", dataDict);
	}
	
	@Override
	public List<DataDict> getDataDicts(DataDict dataDict){
		return this.getList("DataDictMapper.select", dataDict);
	}

}
