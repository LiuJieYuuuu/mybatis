package com.crm.pojo.top;

import java.io.Serializable;
import java.util.Date;

/**
 * 客户实体类
 */
public class Client implements Serializable {
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

    public Client() {
    }

    public Client(Integer cliid, String cliname, String clitel, String clischool, String clicreater, String cliresultor,
                  String clicity, String center, String cliway, Integer clistatus, Integer cliattitude, Date clicreatetime) {
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
                '}';
    }
}
