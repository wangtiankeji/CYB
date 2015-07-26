package com.greatwall.ideas;

import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greatwall.ideas.dao.EventsDao;
import com.greatwall.ideas.dao.ProjectDao;
import com.greatwall.ideas.dao.ResumeDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Events;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.ideas.dto.Resume;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class ResumeDaoTest {

	@Autowired
	private ResumeDao resumeDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Resume resume = new Resume();
        	resume.setResumeName("个人简历");
        	resume.setCreateTime(new Date());
        	
        	resumeDao.insert(resume);
        	
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
        	
        	Resume resume = new Resume();
        	
        	PageParameter page = new PageParameter();
        	
        	List<Resume> resumelist = resumeDao.getPage(resume, page);
        	
        	if(resumelist!=null){
        		for(Resume res:resumelist){
        			System.out.println("========="+res.getResumeName());
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
