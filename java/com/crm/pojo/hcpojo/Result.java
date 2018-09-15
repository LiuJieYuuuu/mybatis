package com.crm.pojo.hcpojo;

public class Result {

    private Integer resultid;

    private String resulttype;

    private Integer resultstatus;

    public Integer getResultid() {
        return resultid;
    }

    public void setResultid(Integer resultid) {
        this.resultid = resultid;
    }

    public String getResulttype() {
        return resulttype;
    }

    public void setResulttype(String resulttype) {
        this.resulttype = resulttype;
    }

    public Integer getResultstatus() {
        return resultstatus;
    }

    public void setResultstatus(Integer resultstatus) {
        this.resultstatus = resultstatus;
    }

    public Result(){}

    public Result(Integer resultid, String resulttype, Integer resultstatus) {
        this.resultid = resultid;
        this.resulttype = resulttype;
        this.resultstatus = resultstatus;
    }

    @Override
    public String toString() {
        return "Result{" +
                "resultid=" + resultid +
                ", resulttype='" + resulttype + '\'' +
                ", resultstatus=" + resultstatus +
                '}';
    }
}
