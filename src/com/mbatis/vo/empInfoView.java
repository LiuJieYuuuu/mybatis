package com.mbatis.vo;

public class empInfoView {
    private Integer empno;
    private String ename;
    private String dname;
    private String loc;

    public empInfoView() {
    }

    public empInfoView(Integer empno, String ename, String dname, String loc) {
        this.empno = empno;
        this.ename = ename;
        this.dname = dname;
        this.loc = loc;
    }

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    @Override
    public String toString() {
        return "empInfoView{" +
                "empno=" + empno +
                ", ename='" + ename + '\'' +
                ", dname='" + dname + '\'' +
                ", loc='" + loc + '\'' +
                '}';
    }
}
