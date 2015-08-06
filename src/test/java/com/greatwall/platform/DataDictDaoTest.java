package com.greatwall.platform;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greatwall.platform.system.dao.DataDictDao;
import com.greatwall.platform.system.dto.DataDict;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:applicationContext.xml"})  
public class DataDictDaoTest {

	@Autowired
	private DataDictDao dataDictDao;
	
	@Test  
    public void insert()  
    {  
        try  
        {  
        	DataDict dataDict = new DataDict();
        	dataDict.setDateType("projectState");
        	/*dataDict.setDateKey("idea");
        	dataDict.setDataValue("想法");*/
        	/*dataDict.setDateKey("developing");
        	dataDict.setDataValue("开发中");*/
        	dataDict.setDateKey("onLine");
        	dataDict.setDataValue("已上线");
        	
        	dataDictDao.insert(dataDict);
        	
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
        	
        	DataDict dataDict = new DataDict();
        	dataDict.setDateType("projectState");
        	
        	List<DataDict> dataDictlist = dataDictDao.getDataDicts(dataDict);
        	
        	if(dataDictlist!=null){
        		for(DataDict dict:dataDictlist){
        			System.out.println("========="+dict.getDataValue());
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
