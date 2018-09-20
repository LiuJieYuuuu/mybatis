package com.ssm.medical.pojo;

import java.sql.Timestamp;

public class AdminUser {
    private Integer auid;
    private String auname;
    private String aupwd;
    private Timestamp ctime;

    public Timestamp getCtime() {
        return ctime;
    }

    public void setCtime(Timestamp ctime) {
        this.ctime = ctime;
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
                ", aupwd='" + aupwd + '\'' +
                '}';
    }
}
