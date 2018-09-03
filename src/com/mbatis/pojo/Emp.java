package com.mbatis.pojo;

public class Emp {
    private Integer empno;
    private String job;
    private String ename;
    private Double sal;
    private Integer deptno;

    public Emp() {
    }

    public Emp(Integer empno, String job, String ename, Double sal, Integer deptno) {
        this.empno = empno;
        this.job = job;
        this.ename = ename;
        this.sal = sal;
        this.deptno = deptno;
    }

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Double getSal() {
        return sal;
    }

    public void setSal(Double sal) {
        this.sal = sal;
    }

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "empno=" + empno +
                ", job='" + job + '\'' +
                ", ename='" + ename + '\'' +
                ", sal=" + sal +
                ", deptno=" + deptno +
                '}';
    }
}
