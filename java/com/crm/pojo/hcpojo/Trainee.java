package com.crm.pojo.hcpojo;

public class Trainee {
   private  String tname;
   private  String tratel;
   private  String traschool;
   private  String tracity;
   private  Integer traid;
   private  String traclass;
   private   Integer trasex;
   private  String  traeback;
   private  String tramajor;
   private  String traqq;

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTratel() {
        return tratel;
    }

    public void setTratel(String tratel) {
        this.tratel = tratel;
    }

    public String getTraschool() {
        return traschool;
    }

    public void setTraschool(String traschool) {
        this.traschool = traschool;
    }

    public String getTracity() {
        return tracity;
    }

    public void setTracity(String tracity) {
        this.tracity = tracity;
    }

    public Integer getTraid() {
        return traid;
    }

    public void setTraid(Integer traid) {
        this.traid = traid;
    }

    public String getTraclass() {
        return traclass;
    }

    public void setTraclass(String traclass) {
        this.traclass = traclass;
    }

    public Integer getTrasex() {
        return trasex;
    }

    public void setTrasex(Integer trasex) {
        this.trasex = trasex;
    }

    public String getTraeback() {
        return traeback;
    }

    public void setTraeback(String traeback) {
        this.traeback = traeback;
    }

    public String getTramajor() {
        return tramajor;
    }

    public void setTramajor(String tramajor) {
        this.tramajor = tramajor;
    }

    public String getTraqq() {
        return traqq;
    }

    public void setTraqq(String traqq) {
        this.traqq = traqq;
    }

    public Trainee(String tname, String tratel, String traschool, String tracity, Integer traid, String traclass, Integer trasex, String traeback, String tramajor, String traqq) {
        this.tname = tname;
        this.tratel = tratel;
        this.traschool = traschool;
        this.tracity = tracity;
        this.traid = traid;
        this.traclass = traclass;
        this.trasex = trasex;
        this.traeback = traeback;
        this.tramajor = tramajor;
        this.traqq = traqq;
    }
    public  Trainee()
    {

    }

    @Override
    public String toString() {
        return "Trainee{" +
                "tname='" + tname + '\'' +
                ", tratel='" + tratel + '\'' +
                ", traschool='" + traschool + '\'' +
                ", tracity='" + tracity + '\'' +
                ", traid=" + traid +
                ", traclass='" + traclass + '\'' +
                ", trasex=" + trasex +
                ", traeback='" + traeback + '\'' +
                ", tramajor='" + tramajor + '\'' +
                ", traqq='" + traqq + '\'' +
                '}';
    }

}
