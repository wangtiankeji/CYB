package com.greatwall.ideas.dto;

public class Partner {
    private Integer partnerId;

    private Integer projectId;

    private String partnerRole;

    private String cooperationMode;

    private String salaryType;

    private String optionProportion;

    private String recruitManifesto;

    public Integer getPartnerId() {
        return partnerId;
    }

    public void setPartnerId(Integer partnerId) {
        this.partnerId = partnerId;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public String getPartnerRole() {
        return partnerRole;
    }

    public void setPartnerRole(String partnerRole) {
        this.partnerRole = partnerRole == null ? null : partnerRole.trim();
    }

    public String getCooperationMode() {
        return cooperationMode;
    }

    public void setCooperationMode(String cooperationMode) {
        this.cooperationMode = cooperationMode == null ? null : cooperationMode.trim();
    }

    public String getSalaryType() {
        return salaryType;
    }

    public void setSalaryType(String salaryType) {
        this.salaryType = salaryType == null ? null : salaryType.trim();
    }

    public String getOptionProportion() {
        return optionProportion;
    }

    public void setOptionProportion(String optionProportion) {
        this.optionProportion = optionProportion == null ? null : optionProportion.trim();
    }

    public String getRecruitManifesto() {
        return recruitManifesto;
    }

    public void setRecruitManifesto(String recruitManifesto) {
        this.recruitManifesto = recruitManifesto == null ? null : recruitManifesto.trim();
    }
}