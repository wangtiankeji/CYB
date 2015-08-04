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
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Event;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class EventDaoTest {

	@Autowired
	private EventDao eventsDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Event events = new Event();
        	events.setEventName("足球赛");
        	events.setStatus("enable");
        	events.setEventAddress("湖南长沙");
        	events.setCreateTime(new Date());
        	eventsDao.insert(events);
        	
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
        	
        	Event events = new Event();    
        	
        	PageParameter page = new PageParameter();
        	
        	List<Event> eventslist = eventsDao.getPage(events, page);
        	
        	if(eventslist!=null){
        		for(Event eve:eventslist){
        			System.out.println("========="+eve.getEventName());
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
