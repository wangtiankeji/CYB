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
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Events;
import com.greatwall.ideas.dto.Project;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class ProjectDaoTest {

	@Autowired
	private ProjectDao projectDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Project project = new Project();
        	project.setProjectName("新项目");
        	project.setCreateTime(new Date());
        	
        	projectDao.insert(project);
        	
//        	Office settled
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
        	
        	Project project = new Project();
        	
        	PageParameter page = new PageParameter();
        	
        	List<Project> projectlist = projectDao.getPage(project, page);
        	
        	if(projectlist!=null){
        		for(Project pro:projectlist){
        			System.out.println("========="+pro.getProjectName());
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
