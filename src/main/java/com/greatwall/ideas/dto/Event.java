package com.greatwall.ideas.dto;

import java.util.Date;

public class Event {
    private Integer eventId;

    private String eventName;

    private String eventType;

    private Date eventTime;

    private Date createTime;

    private String eventDes;

    private String eventGuest;

    private String guestDes;

    private String eventProcess;

    private Date effectiveTime;

    private String eventAddress;

    private Integer userId;

    private String eventTel;

    private String website;

    private String email;

    private String weixin;

    private String weibo;

    private Double eventCost;

    private String auth;

    private String status;

    private String eventImg;

    private Integer concernCount;

    private Integer signUpNum;

    private Integer commentLevel;

    private Integer hits;

    private Integer callNum;

    private String provider;

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName == null ? null : eventName.trim();
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType == null ? null : eventType.trim();
    }

    public Date getEventTime() {
        return eventTime;
    }

    public void setEventTime(Date eventTime) {
        this.eventTime = eventTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getEventDes() {
        return eventDes;
    }

    public void setEventDes(String eventDes) {
        this.eventDes = eventDes == null ? null : eventDes.trim();
    }

    public String getEventGuest() {
        return eventGuest;
    }

    public void setEventGuest(String eventGuest) {
        this.eventGuest = eventGuest == null ? null : eventGuest.trim();
    }

    public String getGuestDes() {
        return guestDes;
    }

    public void setGuestDes(String guestDes) {
        this.guestDes = guestDes == null ? null : guestDes.trim();
    }

    public String getEventProcess() {
        return eventProcess;
    }

    public void setEventProcess(String eventProcess) {
        this.eventProcess = eventProcess == null ? null : eventProcess.trim();
    }

    public Date getEffectiveTime() {
        return effectiveTime;
    }

    public void setEffectiveTime(Date effectiveTime) {
        this.effectiveTime = effectiveTime;
    }

    public String getEventAddress() {
        return eventAddress;
    }

    public void setEventAddress(String eventAddress) {
        this.eventAddress = eventAddress == null ? null : eventAddress.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEventTel() {
        return eventTel;
    }

    public void setEventTel(String eventTel) {
        this.eventTel = eventTel == null ? null : eventTel.trim();
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website == null ? null : website.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getWeixin() {
        return weixin;
    }

    public void setWeixin(String weixin) {
        this.weixin = weixin == null ? null : weixin.trim();
    }

    public String getWeibo() {
        return weibo;
    }

    public void setWeibo(String weibo) {
        this.weibo = weibo == null ? null : weibo.trim();
    }

    public Double getEventCost() {
        return eventCost;
    }

    public void setEventCost(Double eventCost) {
        this.eventCost = eventCost;
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth == null ? null : auth.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getEventImg() {
        return eventImg;
    }

    public void setEventImg(String eventImg) {
        this.eventImg = eventImg == null ? null : eventImg.trim();
    }

    public Integer getConcernCount() {
        return concernCount;
    }

    public void setConcernCount(Integer concernCount) {
        this.concernCount = concernCount;
    }

    public Integer getSignUpNum() {
        return signUpNum;
    }

    public void setSignUpNum(Integer signUpNum) {
        this.signUpNum = signUpNum;
    }

    public Integer getCommentLevel() {
        return commentLevel;
    }

    public void setCommentLevel(Integer commentLevel) {
        this.commentLevel = commentLevel;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public Integer getCallNum() {
        return callNum;
    }

    public void setCallNum(Integer callNum) {
        this.callNum = callNum;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider == null ? null : provider.trim();
    }
}