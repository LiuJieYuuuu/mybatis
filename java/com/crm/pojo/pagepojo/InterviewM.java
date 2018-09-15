package com.crm.pojo.pagepojo;

import java.sql.Date;

public class InterviewM {
    private Integer id;
    private Integer classNo;
    private Integer studentNo;
    private Date iTime;
    private String ieNo;
    private String iContent;
    private String iLoc;
    private String iResult;
    private String className;
    private String tname;
    private String name;
    public InterviewM() {
    }

    public InterviewM(Integer id, Integer classNo, Integer studentNo, Date iTime, String ieNo, String iContent, String iLoc, String iResult) {
        this.id = id;
        this.classNo = classNo;
        this.studentNo = studentNo;
        this.iTime = iTime;
        this.ieNo = ieNo;
        this.iContent = iContent;
        this.iLoc = iLoc;
        this.iResult = iResult;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClassNo() {
        return classNo;
    }

    public void setClassNo(Integer classNo) {
        this.classNo = classNo;
    }

    public Integer getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(Integer studentNo) {
        this.studentNo = studentNo;
    }

    public Date getiTime() {
        return iTime;
    }

    public void setiTime(Date iTime) {
        this.iTime = iTime;
    }

    public String getIeNo() {
        return ieNo;
    }

    public void setIeNo(String ieNo) {
        this.ieNo = ieNo;
    }

    public String getiContent() {
        return iContent;
    }

    public void setiContent(String iContent) {
        this.iContent = iContent;
    }

    public String getiLoc() {
        return iLoc;
    }

    public void setiLoc(String iLoc) {
        this.iLoc = iLoc;
    }

    public String getiResult() {
        return iResult;
    }

    public void setiResult(String iResult) {
        this.iResult = iResult;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "InterviewM{" +
                "id=" + id +
                ", classNo=" + classNo +
                ", studentNo=" + studentNo +
                ", iTime=" + iTime +
                ", ieNo='" + ieNo + '\'' +
                ", iContent='" + iContent + '\'' +
                ", iLoc='" + iLoc + '\'' +
                ", iResult='" + iResult + '\'' +
                ", className='" + className + '\'' +
                ", tname='" + tname + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
