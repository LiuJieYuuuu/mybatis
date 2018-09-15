package com.crm.pojo.notice;

import java.util.Date;

public class Crm_Notice {
    private Integer nid;
    private String ntitle;
    private String ncontent;
    private String npublisher;
    private Date ntime;

    public Crm_Notice(Integer nid, String ntitle, String ncontent, String npublisher, Date ntime) {
        this.nid = nid;
        this.ntitle = ntitle;
        this.ncontent = ncontent;
        this.npublisher = npublisher;
        this.ntime = ntime;
    }

    public Crm_Notice(){}

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNcontent() {
        return ncontent;
    }

    public void setNcontent(String ncontent) {
        this.ncontent = ncontent;
    }

    public String getNpublisher() {
        return npublisher;
    }

    public void setNpublisher(String npublisher) {
        this.npublisher = npublisher;
    }

    public Date getNtime() {
        return ntime;
    }

    public void setNtime(Date ntime) {
        this.ntime = ntime;
    }

    @Override
    public String toString() {
        return "Crm_Notice{" +
                "nid=" + nid +
                ", ntitle='" + ntitle + '\'' +
                ", ncontent='" + ncontent + '\'' +
                ", npublisher='" + npublisher + '\'' +
                ", ntime=" + ntime +
                '}';
    }
}
