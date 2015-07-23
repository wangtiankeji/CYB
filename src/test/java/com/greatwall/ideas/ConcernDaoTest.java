package com.greatwall.ideas;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.greatwall.ideas.dao.ConcernDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class ConcernDaoTest {

	@Autowired
	private ConcernDao concernDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Concern concern = new Concern();
        	concern.setConcernType("train");
        	concern.setUserId(123);
        	concern.setTargetId(32145);
        	
        	concernDao.insert(concern);
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
	
	@Test  
    public void delete()  
    {  
        try  
        {  
            System.out.println("========="+concernDao.deleteByPrimaryKey(0));
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
	
	@Test  
    public void getpage()  
    {  
        try  
        {  
        	PageParameter page = new PageParameter();
        	
        	Concern concern = new Concern();
        	
        	List<Concern> colist = concernDao.getPage(concern, page);
        	if(colist!=null){
        		for(Concern conc:colist){
        			System.out.println("========="+conc.getConcernType());
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
