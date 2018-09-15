package com.crm.pojo.system;


import java.io.Serializable;

public class AdminUser implements Serializable{
    private Integer auid;
    private String auname;
    private Integer austate;
    private String aupwd;
    private String auper;
    private Integer roleid;
    private String rname;

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public AdminUser() {
    }

    public AdminUser(String auname, String aupwd, String auper) {
        this.auname = auname;
        this.aupwd = aupwd;
        this.auper = auper;
    }

    public String getAuper() {
        return auper;
    }

    public void setAuper(String auper) {
        this.auper = auper;
    }

    public Integer getAuid() {
        return auid;
    }

    public void setAuid(Integer auid) {
        this.auid = auid;
    }

    public String getAuname() {
        return auname;
    }

    public void setAuname(String auname) {
        this.auname = auname;
    }

    public Integer getAustate() {
        return austate;
    }

    public void setAustate(Integer austate) {
        this.austate = austate;
    }

    public String getAupwd() {
        return aupwd;
    }

    public void setAupwd(String aupwd) {
        this.aupwd = aupwd;
    }

    @Override
    public String toString() {
        return "AdminUser{" +
                "auid=" + auid +
                ", auname='" + auname + '\'' +
                ", austate=" + austate +
                ", aupwd='" + aupwd + '\'' +
                ", auper='" + auper + '\'' +
                '}';
    }
}
