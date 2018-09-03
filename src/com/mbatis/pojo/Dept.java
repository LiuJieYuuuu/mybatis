package com.mbatis.pojo;

import java.io.Serializable;

public class Dept implements Serializable{
    private Integer deptno;
    private String dename;
    private String loc;

    public Dept() {
    }

    public Dept(String dname, String loc) {
        this.dename = dname;
        this.loc = loc;
    }

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }

    public String getDename() {
        return dename;
    }

    public void setDename(String dname) {
        this.dename = dname;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptno=" + deptno +
                ", dname='" + dename + '\'' +
                ", loc='" + loc + '\'' +
                '}';
    }
}
