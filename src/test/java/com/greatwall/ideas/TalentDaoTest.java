package com.greatwall.ideas;

import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greatwall.ideas.dao.EventDao;
import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dao.TalentDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.dto.Talent;
import com.greatwall.ideas.dto.TalentCon;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class TalentDaoTest {

	@Autowired
	private TalentDao resumeDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Talent talent = new Talent();
        	talent.setTalentName("个人简历");
        	talent.setCreateTime(new Date());
        	
        	resumeDao.insert(talent);
        	
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
	
	@Test  
    public void getPage()  
    {  
        try  
        {  
        	
        	TalentCon talent = new TalentCon();
        	
        	PageParameter page = new PageParameter();
        	
        	List<Talent> talentlist = resumeDao.getPage(talent, page);
        	
        	if(talentlist!=null){
        		for(Talent res:talentlist){
        			System.out.println("========="+res.getTalentName());
        		}
        	}
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
}
