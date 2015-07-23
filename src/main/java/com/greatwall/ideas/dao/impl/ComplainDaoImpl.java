package com.greatwall.ideas.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.ComplainDao;
import com.greatwall.ideas.dto.Complain;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class ComplainDaoImpl extends MyBatisDao implements ComplainDao {

			
	public int insert(Complain complain) {
		return this.save("ComplainMapper.insert",complain);
	}

	@Override
	public int deleteByPrimaryKey(Integer complainId) {
		return this.delete("ComplainMapper.deleteByPrimaryKey", complainId);
	}

	@Override
	public Complain getByPrimaryKey(Integer complainId) {
		return this.get("ComplainMapper.selectByPrimaryKey", complainId);
	}
	
	public List<Complain> getPage(Complain complain, PageParameter page) throws DaoException{
		return this.getListPage("ComplainMapper.selectPage",complain,page);
	}
	

}
