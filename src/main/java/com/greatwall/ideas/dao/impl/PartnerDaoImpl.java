package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.PartnerDao;
import com.greatwall.ideas.dto.Partner;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class PartnerDaoImpl extends MyBatisDao implements PartnerDao {

	@Override
	public int deleteByPrimaryKey(Integer partnerId) {
		return this.delete("PartnerMapper.deleteByPrimaryKey", partnerId);
	}

	@Override
	public int insert(Partner partner) {
		return this.save("PartnerMapper.insert",partner);
	}

	@Override
	public Partner selectByPrimaryKey(Integer partnerId) {
		return this.get("PartnerMapper.selectByPrimaryKey", partnerId);
	}
	
	@Override
	public List<Partner> getPage(Partner partner, PageParameter page)
			throws DaoException {
		return this.getListPage("PartnerMapper.selectPage", partner, page);
	}

	@Override
	public int updateByPrimaryKeySelective(Partner partner) {
		return this.update("PartnerMapper.updateByPrimaryKeySelective", partner);
	}

}
