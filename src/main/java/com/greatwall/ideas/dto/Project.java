package com.greatwall.ideas.dto;

import java.util.Date;

public class Project {
    private Integer projectId;

    private String projectName;

    private String projectState;

    private String projectArea;

    private String projectDirect;

    private String projectIntro;

    private String projectDes;

    private Integer peopleNum;

    private String financingState;

    private Double financingAmount;

    private String financingUnit;

    private String systemUrl;

    private String contactPhone;

    private Date createTime;

    private Date lastUpdateTime;

    private Integer userId;

    private Integer hits;

    private String projectImg;

    private String status;

    private Integer concernCount;

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    public String getProjectState() {
        return projectState;
    }

    public void setProjectState(String projectState) {
        this.projectState = projectState == null ? null : projectState.trim();
    }

    public String getProjectArea() {
        return projectArea;
    }

    public void setProjectArea(String projectArea) {
        this.projectArea = projectArea == null ? null : projectArea.trim();
    }

    public String getProjectDirect() {
        return projectDirect;
    }

    public void setProjectDirect(String projectDirect) {
        this.projectDirect = projectDirect == null ? null : projectDirect.trim();
    }

    public String getProjectIntro() {
        return projectIntro;
    }

    public void setProjectIntro(String projectIntro) {
        this.projectIntro = projectIntro == null ? null : projectIntro.trim();
    }

    public String getProjectDes() {
        return projectDes;
    }

    public void setProjectDes(String projectDes) {
        this.projectDes = projectDes == null ? null : projectDes.trim();
    }

    public Integer getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(Integer peopleNum) {
        this.peopleNum = peopleNum;
    }

    public String getFinancingState() {
        return financingState;
    }

    public void setFinancingState(String financingState) {
        this.financingState = financingState == null ? null : financingState.trim();
    }

    public Double getFinancingAmount() {
        return financingAmount;
    }

    public void setFinancingAmount(Double financingAmount) {
        this.financingAmount = financingAmount;
    }

    public String getFinancingUnit() {
        return financingUnit;
    }

    public void setFinancingUnit(String financingUnit) {
        this.financingUnit = financingUnit == null ? null : financingUnit.trim();
    }

    public String getSystemUrl() {
        return systemUrl;
    }

    public void setSystemUrl(String systemUrl) {
        this.systemUrl = systemUrl == null ? null : systemUrl.trim();
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public String getProjectImg() {
        return projectImg;
    }

    public void setProjectImg(String projectImg) {
        this.projectImg = projectImg == null ? null : projectImg.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Integer getConcernCount() {
        return concernCount;
    }

    public void setConcernCount(Integer concernCount) {
        this.concernCount = concernCount;
    }
}