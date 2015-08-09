package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.dto.Partner;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface PartnerDao {
    int deleteByPrimaryKey(Integer partnerId);

    int insert(Partner record);

    Partner selectByPrimaryKey(Integer partnerId);

    int updateByPrimaryKeySelective(Partner record);

	List<Partner> getPage(Partner partner, PageParameter page)
			throws DaoException;

	List<Partner> getPartners(Partner partner);

}