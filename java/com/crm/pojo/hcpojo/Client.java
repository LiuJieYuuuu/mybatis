package com.crm.pojo.hcpojo;

import java.util.Date;

/**
 * 客户实体类
 */
public class Client {
    private Integer cliid;

    private String cliname;

    private String clitel;

    private String clischool;

    private String clicreater;

    private String cliresultor;

    private String clicity;

    private String center;

    private String cliway;

    private Integer clistatus;

    private Integer cliattitude;

    private Date clicreatetime;

    private Integer clisex;

    private String cliqq;

    private String cliconsultcontent;

    private String cliresulttype;

    public Integer getCliid() {
        return cliid;
    }

    public void setCliid(Integer cliid) {
        this.cliid = cliid;
    }

    public String getCliname() {
        return cliname;
    }

    public void setCliname(String cliname) {
        this.cliname = cliname;
    }

    public String getClitel() {
        return clitel;
    }

    public void setClitel(String clitel) {
        this.clitel = clitel;
    }

    public String getClischool() {
        return clischool;
    }

    public void setClischool(String clischool) {
        this.clischool = clischool;
    }

    public String getClicreater() {
        return clicreater;
    }

    public void setClicreater(String clicreater) {
        this.clicreater = clicreater;
    }

    public String getCliresultor() {
        return cliresultor;
    }

    public void setCliresultor(String cliresultor) {
        this.cliresultor = cliresultor;
    }

    public String getClicity() {
        return clicity;
    }

    public void setClicity(String clicity) {
        this.clicity = clicity;
    }

    public String getCenter() {
        return center;
    }

    public void setCenter(String center) {
        this.center = center;
    }

    public String getCliway() {
        return cliway;
    }

    public void setCliway(String cliway) {
        this.cliway = cliway;
    }

    public Integer getClistatus() {
        return clistatus;
    }

    public void setClistatus(Integer clistatus) {
        this.clistatus = clistatus;
    }

    public Integer getCliattitude() {
        return cliattitude;
    }

    public void setCliattitude(Integer cliattitude) {
        this.cliattitude = cliattitude;
    }

    public Date getClicreatetime() {
        return clicreatetime;
    }

    public void setClicreatetime(Date clicreatetime) {
        this.clicreatetime = clicreatetime;
    }

    public Integer getClisex() {
        return clisex;
    }

    public void setClisex(Integer clisex) {
        this.clisex = clisex;
    }

    public String getCliqq() {
        return cliqq;
    }

    public void setCliqq(String cliqq) {
        this.cliqq = cliqq;
    }

    public String getCliconsultcontent() {
        return cliconsultcontent;
    }

    public void setCliconsultcontent(String cliconsultcontent) {
        this.cliconsultcontent = cliconsultcontent;
    }

    public String getCliresulttype() {
        return cliresulttype;
    }

    public void setCliresulttype(String cliresulttype) {
        this.cliresulttype = cliresulttype;
    }

    public Client() {
    }

    public Client(Integer cliid, String cliname, String clitel, String clischool, String clicreater, String cliresultor,
                  String clicity, String center, String cliway, Integer clistatus, Integer cliattitude, Date clicreatetime, Integer clisex, String cliqq, String cliconsultcontent, String cliresulttype) {
        this.cliid = cliid;
        this.cliname = cliname;
        this.clitel = clitel;
        this.clischool = clischool;
        this.clicreater = clicreater;
        this.cliresultor = cliresultor;
        this.clicity = clicity;
        this.center = center;
        this.cliway = cliway;
        this.clistatus = clistatus;
        this.cliattitude = cliattitude;
        this.clicreatetime = clicreatetime;
        this.clisex = clisex;
        this.cliqq = cliqq;
        this.cliconsultcontent = cliconsultcontent;
        this.cliresulttype = cliresulttype;
    }

    @Override
    public String toString() {
        return "Client{" +
                "cliid=" + cliid +
                ", cliname='" + cliname + '\'' +
                ", clitel='" + clitel + '\'' +
                ", clischool='" + clischool + '\'' +
                ", clicreater='" + clicreater + '\'' +
                ", cliresultor='" + cliresultor + '\'' +
                ", clicity='" + clicity + '\'' +
                ", center='" + center + '\'' +
                ", cliway='" + cliway + '\'' +
                ", clistatus=" + clistatus +
                ", cliattitude=" + cliattitude +
                ", clicreatetime=" + clicreatetime +
                ", clisex=" + clisex +
                ", cliqq='" + cliqq + '\'' +
                ", cliconsultcontent='" + cliconsultcontent + '\'' +
                ", cliresulttype='" + cliresulttype + '\'' +
                '}';
    }
}
