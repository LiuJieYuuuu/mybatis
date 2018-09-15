package com.crm.pojo.system;

import java.io.Serializable;
import java.sql.Timestamp;

public class Logj implements Serializable{
    private Integer logid;
    private Integer auid;
    private String incident;
    private Timestamp ltime;
    private String lip;
    private AdminUser adminUser;

    public AdminUser getAdminUser() {
        return adminUser;
    }

    public void setAdminUser(AdminUser adminUser) {
        this.adminUser = adminUser;
    }

    public Logj() {
    }

    public Logj(String incident, String lip) {
        this.incident = incident;
        this.lip = lip;
    }

    @Override
    public String toString() {
        return "Logj{" +
                "logid=" + logid +
                ", auid=" + auid +
                ", incident='" + incident + '\'' +
                ", ltime=" + ltime +
                ", lip='" + lip + '\'' +
                ", adminUser=" + adminUser +
                '}';
    }

    public Integer getLogid() {
        return logid;
    }

    public void setLogid(Integer logid) {
        this.logid = logid;
    }

    public Integer getAuid() {
        return auid;
    }

    public void setAuid(Integer auid) {
        this.auid = auid;
    }

    public String getIncident() {
        return incident;
    }

    public void setIncident(String incident) {
        this.incident = incident;
    }

    public Timestamp getLtime() {
        return ltime;
    }

    public void setLtime(Timestamp ltime) {
        this.ltime = ltime;
    }

    public String getLip() {
        return lip;
    }

    public void setLip(String lip) {
        this.lip = lip;
    }
}
