package com.greatwall.ideas.service;

import java.util.List;
import java.util.Map;

import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;

public interface PubinfoService {

	Map<String, Object> getPubinfos(Pubinfo pubinfo);

	List<Pubinfo> getPage(Pubinfo pubinfo, PageParameter page)
			throws DaoException;

	int save(Pubinfo pubinfo);

	Pubinfo getPubinfo(Integer infoId);

	int updatePubinfoByKey(Pubinfo pubinfo);

	List<Pubinfo> getPubinfoList(Pubinfo pubinfo);

	int addHits(Pubinfo pubinfo);

}
