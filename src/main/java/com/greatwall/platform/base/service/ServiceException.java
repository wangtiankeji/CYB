package com.greatwall.platform.base.service;

public class ServiceException extends Exception {
	
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = -4618029925693802324L;

	public ServiceException() {  
	        super();  
	    }  
	  
	    /** 
	     * @param arg0 
	     */  
	    public ServiceException(String arg0) {  
	        super(arg0);  
	    }  
	  
	    /** 
	     * @param arg0 
	     * @param arg1 
	     */  
	    public ServiceException(String arg0, Throwable arg1) {  
	        super(arg0, arg1);  
	    }  
	  
	    /** 
	     * @param arg0 
	     */  
	    public ServiceException(Throwable arg0) {  
	        super(arg0);  
	    }  

}
