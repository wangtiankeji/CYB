package com.greatwall.ideas.dto;

import java.util.Date;

public class Talent {
    private Integer talentId;

    private String talentName;

    private String nickname;

    private Integer userId;

    private String talentImg;

    private String goal;

    private String workArea;

    private String sex;

    private String phone;

    private String intro;

    private String entrepreneurship;

    private String talentMoney;

    private String expectedSalary;

    private String goodAt;

    private String workExperience;

    private String educational;

    private String targetType;

    private Date lastUpdateTime;

    private Date createTime;

    private Integer hits;

    private Integer concernCount;

    public Integer getTalentId() {
        return talentId;
    }

    public void setTalentId(Integer talentId) {
        this.talentId = talentId;
    }

    public String getTalentName() {
        return talentName;
    }

    public void setTalentName(String talentName) {
        this.talentName = talentName == null ? null : talentName.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTalentImg() {
        return talentImg;
    }

    public void setTalentImg(String talentImg) {
        this.talentImg = talentImg == null ? null : talentImg.trim();
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal == null ? null : goal.trim();
    }

    public String getWorkArea() {
        return workArea;
    }

    public void setWorkArea(String workArea) {
        this.workArea = workArea == null ? null : workArea.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro == null ? null : intro.trim();
    }

    public String getEntrepreneurship() {
        return entrepreneurship;
    }

    public void setEntrepreneurship(String entrepreneurship) {
        this.entrepreneurship = entrepreneurship == null ? null : entrepreneurship.trim();
    }

    public String getTalentMoney() {
        return talentMoney;
    }

    public void setTalentMoney(String talentMoney) {
        this.talentMoney = talentMoney == null ? null : talentMoney.trim();
    }

    public String getExpectedSalary() {
        return expectedSalary;
    }

    public void setExpectedSalary(String expectedSalary) {
        this.expectedSalary = expectedSalary == null ? null : expectedSalary.trim();
    }

    public String getGoodAt() {
        return goodAt;
    }

    public void setGoodAt(String goodAt) {
        this.goodAt = goodAt == null ? null : goodAt.trim();
    }

    public String getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience == null ? null : workExperience.trim();
    }

    public String getEducational() {
        return educational;
    }

    public void setEducational(String educational) {
        this.educational = educational == null ? null : educational.trim();
    }

    public String getTargetType() {
        return targetType;
    }

    public void setTargetType(String targetType) {
        this.targetType = targetType == null ? null : targetType.trim();
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public Integer getConcernCount() {
        return concernCount;
    }

    public void setConcernCount(Integer concernCount) {
        this.concernCount = concernCount;
    }
}