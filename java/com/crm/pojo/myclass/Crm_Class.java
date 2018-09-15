package com.crm.pojo.myclass;

public class Crm_Class {
    private Integer classNo;
    private String className;
    private Integer javaTeaId;
    private Integer mindTeaId;
    private String teaName;


    public Crm_Class(Integer classNo, String className, Integer javaTeaId, Integer mindTeaId, String teaName) {
        this.classNo = classNo;
        this.className = className;
        this.javaTeaId = javaTeaId;
        this.mindTeaId = mindTeaId;
        this.teaName = teaName;
    }
    public Crm_Class(){}

    public Integer getClassNo() {
        return classNo;
    }

    public void setClassNo(Integer classNo) {
        this.classNo = classNo;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public Integer getJavaTeaId() {
        return javaTeaId;
    }

    public void setJavaTeaId(Integer javaTeaId) {
        this.javaTeaId = javaTeaId;
    }

    public Integer getMindTeaId() {
        return mindTeaId;
    }

    public void setMindTeaId(Integer mindTeaId) {
        this.mindTeaId = mindTeaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    @Override
    public String toString() {
        return "Crm_Class{" +
                "classNo=" + classNo +
                ", className='" + className + '\'' +
                ", javaTeaId=" + javaTeaId +
                ", mindTeaId=" + mindTeaId +
                ", teaName='" + teaName + '\'' +
                '}';
    }
}
