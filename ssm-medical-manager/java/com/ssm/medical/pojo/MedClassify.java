package com.ssm.medical.pojo;

import java.sql.Timestamp;

public class MedClassify {
    private Integer mcid;
    private String mcname;
    private String mcdes;
    private Timestamp mctime;

    @Override
    public String toString() {
        return "MedClassify{" +
                "mcid=" + mcid +
                ", mcname='" + mcname + '\'' +
                ", mcdes='" + mcdes + '\'' +
                ", mctime=" + mctime +
                '}';
    }

    public Integer getMcid() {
        return mcid;
    }

    public void setMcid(Integer mcid) {
        this.mcid = mcid;
    }

    public String getMcname() {
        return mcname;
    }

    public void setMcname(String mcname) {
        this.mcname = mcname;
    }

    public String getMcdes() {
        return mcdes;
    }

    public void setMcdes(String mcdes) {
        this.mcdes = mcdes;
    }

    public Timestamp getMctime() {
        return mctime;
    }

    public void setMctime(Timestamp mctime) {
        this.mctime = mctime;
    }
}
