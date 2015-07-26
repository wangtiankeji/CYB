package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface PubinfoDao {
    int deleteByPrimaryKey(Integer infoId);

    int insert(Pubinfo pubinfo);

    Pubinfo selectByPrimaryKey(Integer infoId);

    int updateByPrimaryKey(Pubinfo pubinfo);

	List<Pubinfo> getPubinfos(Pubinfo pubinfo);
	
	public List<Pubinfo> getPage(Pubinfo pubinfo, PageParameter page)
			throws DaoException;
}