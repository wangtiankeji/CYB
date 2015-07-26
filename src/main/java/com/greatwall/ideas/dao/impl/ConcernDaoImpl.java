package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.ConcernDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class ConcernDaoImpl extends MyBatisDao implements ConcernDao {

	@Override
	public int deleteByPrimaryKey(Integer concernId) {
		return this.delete("ConcernMapper.deleteByPrimaryKey", concernId);
	}

	@Override
	public int insert(Concern concern) {
		return this.save("ConcernMapper.insert",concern);
	}

	@Override
	public Concern selectByPrimaryKey(Integer concernId) {
		return this.get("ConcernMapper.selectByPrimaryKey", concernId);
	}

	@Override
	public int updateByPrimaryKeySelective(Concern concern) {
		return this.update("ConcernMapper.updateByPrimaryKeySelective", concern);
	}

	@Override
	public List<Concern> getPage(Concern concern, PageParameter page)
			throws DaoException {
		return this.getListPage("ConcernMapper.selectPage", concern, page);
	}

}
