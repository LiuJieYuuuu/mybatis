package com.crm.pojo.hcpojo;

public class Way {

    private Integer wayid;

    private String wayname;

    private Integer waystatus;

    public Integer getWayid() {
        return wayid;
    }

    public void setWayid(Integer wayid) {
        this.wayid = wayid;
    }

    public String getWayname() {
        return wayname;
    }

    public void setWayname(String wayname) {
        this.wayname = wayname;
    }

    public Integer getWaystatus() {
        return waystatus;
    }

    public void setWaystatus(Integer waystatus) {
        this.waystatus = waystatus;
    }

    public Way(){}

    public Way(Integer wayid, String wayname, Integer waystatus) {
        this.wayid = wayid;
        this.wayname = wayname;
        this.waystatus = waystatus;
    }

    @Override
    public String toString() {
        return "Way{" +
                "wayid=" + wayid +
                ", wayname='" + wayname + '\'' +
                ", waystatus=" + waystatus +
                '}';
    }
}
