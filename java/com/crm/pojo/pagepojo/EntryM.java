package com.crm.pojo.pagepojo;

import java.sql.Date;

public class EntryM {
    private Integer id;
    private Integer classNo;
    private Integer studentNo;
    private Integer eeNo;
    private Date eTime;
    private Double sal;
    private String back;
    private String className;
    private String tname;
    private String name;

    public EntryM() {
    }

    public EntryM(Integer id, Integer classNo, Integer studentNo, Integer eeNo, Date eTime, Double sal, String back) {
        this.id = id;
        this.classNo = classNo;
        this.studentNo = studentNo;
        this.eeNo = eeNo;
        this.eTime = eTime;
        this.sal = sal;
        this.back = back;
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

    public Integer getEeNo() {
        return eeNo;
    }

    public void setEeNo(Integer eeNo) {
        this.eeNo = eeNo;
    }

    public Date geteTime() {
        return eTime;
    }

    public void seteTime(Date eTime) {
        this.eTime = eTime;
    }

    public Double getSal() {
        return sal;
    }

    public void setSal(Double sal) {
        this.sal = sal;
    }

    public String getBack() {
        return back;
    }

    public void setBack(String back) {
        this.back = back;
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
        return "EntryM{" +
                "id=" + id +
                ", classNo=" + classNo +
                ", studentNo=" + studentNo +
                ", eeNo=" + eeNo +
                ", eTime=" + eTime +
                ", sal=" + sal +
                ", back='" + back + '\'' +
                ", className='" + className + '\'' +
                ", tname='" + tname + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
