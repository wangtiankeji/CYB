package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.PubinfoDao;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class PubinfoDaoImpl extends MyBatisDao implements PubinfoDao {

	@Override
	public int deleteByPrimaryKey(Integer infoId) {
		return this.delete("PubinfoMapper.deleteByPrimaryKey", infoId);
	}

	@Override
	public int insert(Pubinfo pubinfo) {
		return this.save("PubinfoMapper.insert",pubinfo);
	}

	@Override
	public Pubinfo selectByPrimaryKey(Integer infoId) {
		return this.get("PubinfoMapper.selectByPrimaryKey", infoId);
	}

	public List<Pubinfo> getPage(Pubinfo pubinfo, PageParameter page)
			throws DaoException {
		return this.getListPage("PubinfoMapper.selectPage", pubinfo, page);
	}
	
	@Override
	public List<Pubinfo> getPubinfos(Pubinfo pubinfo){
		return this.getList("PubinfoMapper.select", pubinfo);
	}

	@Override
	public int updateByPrimaryKey(Pubinfo pubinfo) {
		return this.update("PubinfoMapper.updateByPrimaryKey", pubinfo);
	}

}
