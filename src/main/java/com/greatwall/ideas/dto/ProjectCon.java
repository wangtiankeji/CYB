package com.greatwall.ideas.dto;

public class ProjectCon extends Project {

	private String partnerRole;

	private String creatTimeStr;
	
	private String sort;
	

	public String getPartnerRole() {
		return partnerRole;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public void setPartnerRole(String partnerRole) {
		this.partnerRole = partnerRole;
	}

	public String getCreatTimeStr() {
		return creatTimeStr;
	}

	public void setCreatTimeStr(String creatTimeStr) {
		this.creatTimeStr = creatTimeStr;
	}


}