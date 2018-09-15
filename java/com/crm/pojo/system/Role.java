package com.crm.pojo.system;

import java.io.Serializable;

public class Role implements Serializable {
    private Integer roleid;
    private String rname;
    private String auper;
    private Integer rstate;

    @Override
    public String toString() {
        return "Role{" +
                "rid=" + roleid +
                ", rname='" + rname + '\'' +
                ", auper='" + auper + '\'' +
                ", rstate=" + rstate +
                '}';
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getAuper() {
        return auper;
    }

    public void setAuper(String auper) {
        this.auper = auper;
    }

    public Integer getRstate() {
        return rstate;
    }

    public void setRstate(Integer rstate) {
        this.rstate = rstate;
    }
}
