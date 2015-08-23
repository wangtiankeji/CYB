package com.greatwall.ideas.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.greatwall.ideas.dao.TalentDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.dto.TalentCon;
import com.greatwall.platform.base.dao.DaoException;
import com.greatwall.platform.base.dao.MyBatisDao;
import com.greatwall.platform.domain.PageParameter;

@Repository
public class TalentDaoImpl extends MyBatisDao implements TalentDao {

	@Override
	public int deleteByPrimaryKey(Integer talentId) {
		return this.delete("TalentMapper.deleteByPrimaryKey", talentId);
	}

	@Override
	public int insert(Talent talent) {
		return this.save("TalentMapper.insert",talent);
	}

	@Override
	public Talent selectByPrimaryKey(Integer talentId) {
		return this.get("TalentMapper.selectByPrimaryKey", talentId);
	}

	@Override
	public int updateByPrimaryKeySelective(Talent talent) {
		return this.update("TalentMapper.updateByPrimaryKeySelective", talent);
	}
	
	@Override
	public List<Talent> getPage(TalentCon talent,PageParameter page) throws DaoException {
		return this.getListPage("TalentMapper.selectPage", talent, page);
	}
	
	@Override
	public List<Talent> getConcernPage(Concern concern,PageParameter page) throws DaoException {
		return this.getListPage("TalentMapper.getConcernPage", concern, page);
	}
	
	@Override
	public int updateConcernCount(Integer talentId,String type){
		if("add".equals(type)){
			return this.update("TalentMapper.addConcernCount", talentId);
		}else if("sub".equals(type)){
			return this.update("TalentMapper.subConcernCount", talentId);
		}
		return 0;
	}
	
	@Override
	public int addHits(Integer talentId){
		return this.update("TalentMapper.addHits", talentId);
	}

}
