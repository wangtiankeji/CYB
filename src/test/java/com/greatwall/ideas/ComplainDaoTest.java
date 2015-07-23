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

import com.greatwall.ideas.dao.ComplainDao;
import com.greatwall.ideas.dto.Complain;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class ComplainDaoTest {

	@Autowired
	private ComplainDao complainDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Complain complain = new Complain();
        	complain.setComplainContent("2222222");
        	complain.setCreateTime(new Date());
        	complain.setState("enable");
        	complain.setUserId(123);
        	
        	complainDao.insert(complain);
            System.out.println("=========");
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
            System.out.println("========="+complainDao.deleteByPrimaryKey(0));
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
        	
        	Complain complain = new Complain();
        	
        	List<Complain> colist = complainDao.getPage(complain, page);
            System.out.println("=========");
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
}
