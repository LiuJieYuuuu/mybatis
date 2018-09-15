package com.crm.pojo.myclass;

import java.sql.Date;

public class Crm_Activity {
    private Integer actId;
    private Integer actClassId;
    private String actPlace;
    private Date actTime;
    private String actName;
    private Integer actTeacherId;
    private String className;
    private String teaName;

    public Crm_Activity(Integer actId, Integer actClassId, String actPlace, Date actTime, String actName, Integer actTeacherId, String className, String teaName) {
        this.actId = actId;
        this.actClassId = actClassId;
        this.actPlace = actPlace;
        this.actTime = actTime;
        this.actName = actName;
        this.actTeacherId = actTeacherId;
        this.className = className;
        this.teaName = teaName;
    }

    public Crm_Activity(){}

    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }

    public Integer getActId() {
        return actId;
    }

    public void setActId(Integer actId) {
        this.actId = actId;
    }

    public Integer getActClassId() {
        return actClassId;
    }

    public void setActClassId(Integer actClassId) {
        this.actClassId = actClassId;
    }

    public String getActPlace() {
        return actPlace;
    }

    public void setActPlace(String actPlace) {
        this.actPlace = actPlace;
    }

    public Date getActTime() {
        return actTime;
    }

    public void setActTime(Date actTime) {
        this.actTime = actTime;
    }

    public Integer getActTeacherId() {
        return actTeacherId;
    }

    public void setActTeacherId(Integer actTeacherId) {
        this.actTeacherId = actTeacherId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    @Override
    public String toString() {
        return "Crm_Activity{" +
                "actId=" + actId +
                ", actClassId=" + actClassId +
                ", actPlace='" + actPlace + '\'' +
                ", actTime=" + actTime +
                ", actTeacherId=" + actTeacherId +
                ", className='" + className + '\'' +
                ", teaName='" + teaName + '\'' +
                '}';
    }
}
