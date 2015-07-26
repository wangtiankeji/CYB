package com.greatwall.ideas;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greatwall.ideas.dao.PubinfoDao;
import com.greatwall.ideas.dto.Concern;
import com.greatwall.ideas.dto.Pubinfo;
import com.greatwall.platform.domain.PageParameter;

//@Transactional
//@TransactionConfiguration(defaultRollback = true)  
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class PubinfoDaoTest {

	@Autowired
	private PubinfoDao pubinfoDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	Pubinfo pubinfo = new Pubinfo();
        	/*pubinfo.setType("indexInfo");
        	pubinfo.setValueKey("companyRegiste");
        	pubinfo.setNoticeStr("￥0元起");*/
        	/*pubinfo.setType("indexInfo");
        	pubinfo.setValueKey("rentalOffice");
        	pubinfo.setNoticeStr("￥3000/间");*/
        	pubinfo.setType("indexInfo");
        	pubinfo.setValueKey("cooperation");
        	pubinfo.setNoticeStr("￥788元/份");
        	
        	pubinfoDao.insert(pubinfo);
        	
//        	Office settled
        }  
        catch (Exception e)  
        {  
        	e.printStackTrace();
            fail("Test failed!");  
        }  
    } 
	
	@Test  
    public void getPubinfos()  
    {  
        try  
        {  
        	
        	Pubinfo pubinfo = new Pubinfo();
        	pubinfo.setType("indexInfo");
        	
        	List<Pubinfo> colist = pubinfoDao.getPubinfos(pubinfo);
        	if(colist!=null){
        		for(Pubinfo conc:colist){
        			System.out.println("========="+conc.getNoticeStr());
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
