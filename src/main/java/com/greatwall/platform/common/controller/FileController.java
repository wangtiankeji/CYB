package com.greatwall.platform.common.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.http.HttpRequest;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

/** 
* @ClassName: FileController 
* @Description: 文件控制 
* @author fudk fudk_k@sina.com 
* @date 2015年7月4日 下午4:56:13 
*  
*/
@Controller
@RequestMapping("/con")
public class FileController {

	Logger logger = Logger.getLogger(FileController.class);
	
	private String imgPath;
	
	@Value("#{propertiesReader['sys.imgPath']}") 
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	@RequestMapping("/uploadtest")
	public ModelAndView uploadtest(){
		return new ModelAndView("/demo/upload.jsp");
	}
	
	@RequestMapping("/upload")
	public@ResponseBody String upload(@RequestParam MultipartFile upfile,String fileType){
		Map<String,String> map = new HashMap<String,String>();
		
		String fileName = upfile.getOriginalFilename();  
		
		String filest =  new Date().getTime()+"";
		String fileend = fileName.substring(fileName.indexOf(".")+1, fileName.length());
		String path = imgPath;
		StringBuffer fpsb = new StringBuffer();
		fpsb.append("/con/getImg/");
		if(StringUtils.isNotBlank(fileType)){
			fpsb.append(fileType);
			path += "/"+fileType+"/";
		}
		fpsb.append("/");
		fpsb.append(filest);
		fpsb.append("/");
		fpsb.append(fileend);
		
		fileName =filest+"."+fileend;  
		File targetFile = new File(path, fileName);  
		if(!targetFile.exists()){  
			targetFile.mkdirs();  
		}  
		map.put("filePath", fpsb.toString());
		map.put("status", "success");
		//保存  
		try {  
			upfile.transferTo(targetFile);  
		} catch (Exception e) {  
			logger.error("文件上传错误",e);
			map.put("status", "fail");
		}  
		
		Gson gson = new Gson();
		return gson.toJson(map);
	}
	
//	@RequestMapping("/getImg/{fileName}/{suffix}")
//	public @ResponseBody FileInputStream getImg(@PathVariable String fileName,@PathVariable String suffix) throws Exception {
//		System.out.println(imgPath+fileName+"."+suffix);
//		File sf = new File(imgPath+fileName+"."+suffix);
//		FileInputStream in = new FileInputStream(sf);
//		return in;
//	}
	/*@RequestMapping("/getImg/{fileName}/{suffix}")
	public @ResponseBody ResponseEntity<byte[]> getImg(@PathVariable String fileName,@PathVariable String suffix)  {
		 HttpHeaders headers = new HttpHeaders();  
		    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);  
		    headers.setContentDispositionFormData("attachment", fileName+"."+suffix);  
		    
		    ResponseEntity<byte[]> imgf = null;
			try {
				imgf = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(new File(imgPath+fileName+"."+suffix)),  
				        headers, HttpStatus.CREATED);
			} catch (IOException e) {
//				e.printStackTrace();
			}
		    return  imgf;
	}*/
	@RequestMapping("/getImg/**")
	public @ResponseBody ResponseEntity<byte[]> getImg(HttpServletRequest request)  {
		String sPath = request.getServletPath().replace("/con/getImg/", "");
		
		StringBuffer fileName = new StringBuffer();
		StringBuffer filePath = new StringBuffer();
		String[] fps = sPath.split("/");
		if(fps.length>1){
			fileName.append(fps[fps.length-2]);
			fileName.append(".");
			fileName.append(fps[fps.length-1]);
		}
		for(int i=0;i<fps.length-2;i++){
			filePath.append(fps[i]);
			filePath.append("/");
		}
		
		HttpHeaders headers = new HttpHeaders();  
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);  
		headers.setContentDispositionFormData("attachment", fileName.toString());  

		ResponseEntity<byte[]> imgf = null;
		try {
			imgf = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(new File(imgPath+filePath.toString()+fileName.toString())),  
					headers, HttpStatus.CREATED);
		} catch (IOException e) {
							e.printStackTrace();
		}
		return  imgf;
	}
	
}
