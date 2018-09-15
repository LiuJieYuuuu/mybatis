package com.crm.pojo.myclass;

public class Crm_Teacher {
    private Integer teaId;
    private String teaName;

    public Crm_Teacher(String teaName) {
        this.teaName = teaName;
    }
    public Crm_Teacher(){}

    public Integer getTeaId() {
        return teaId;
    }

    public void setTeaId(Integer teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    @Override
    public String toString() {
        return "Crm_Teacher{" +
                "teaId=" + teaId +
                ", teaName='" + teaName + '\'' +
                '}';
    }
}
