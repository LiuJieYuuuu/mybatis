package com.crm.pojo.system;

import java.io.Serializable;

public class Etemp implements Serializable{
    private Integer etpid;
    private String etpname;
    private String etpaddress;
    private Integer tpid;

    @Override
    public String toString() {
        return "Etemp{" +
                "etpid=" + etpid +
                ", etpname='" + etpname + '\'' +
                ", etpaddress='" + etpaddress + '\'' +
                ", tpid=" + tpid +
                '}';
    }

    public Integer getTpid() {
        return tpid;
    }

    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }

    public Integer getEtpid() {
        return etpid;
    }

    public void setEtpid(Integer etpid) {
        this.etpid = etpid;
    }

    public String getEtpname() {
        return etpname;
    }

    public void setEtpname(String etpname) {
        this.etpname = etpname;
    }

    public String getEtpaddress() {
        return etpaddress;
    }

    public void setEtpaddress(String etpaddress) {
        this.etpaddress = etpaddress;
    }
}
