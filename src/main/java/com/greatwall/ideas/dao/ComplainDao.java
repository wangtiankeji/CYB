package com.greatwall.ideas.dao;

import java.util.List;

import com.greatwall.ideas.dto.Complain;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.domain.PageParameter;


public interface ComplainDao {
	
	
	/** 
	* @Title: insert 
	* @Description: 保存频道 
	* @param channel
	* @return int    返回类型 
	* @throws 
	*/
	public int insert(Complain complain);
	
	public int deleteByPrimaryKey(Integer complainId);
	
	public Complain getByPrimaryKey(Integer complainId);
	
	public List<Complain> getPage(Complain complain, PageParameter page) throws DaoException;
//
//	int updateByPrimaryKeySelective(Channel record);
//
//	int updateByPrimaryKey(Channel record);
}