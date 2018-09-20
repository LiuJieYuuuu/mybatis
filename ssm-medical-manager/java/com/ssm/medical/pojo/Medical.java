package com.ssm.medical.pojo;

public class Medical {
    private Integer miid;
    private Integer mino;
    private String miname;
    private Integer miprice;
    private Integer mireport;
    private Integer mirequire;
    private String miaddress;
    private Integer mcid;
    private String mides;
    private String miimg;

    @Override
    public String toString() {
        return "Medical{" +
                "miid=" + miid +
                ", mino=" + mino +
                ", miname='" + miname + '\'' +
                ", miprice=" + miprice +
                ", mireport=" + mireport +
                ", mirequire=" + mirequire +
                ", miaddress='" + miaddress + '\'' +
                ", mcid=" + mcid +
                ", mides='" + mides + '\'' +
                ", miimg='" + miimg + '\'' +
                '}';
    }

    public Integer getMiid() {
        return miid;
    }

    public void setMiid(Integer miid) {
        this.miid = miid;
    }

    public Integer getMino() {
        return mino;
    }

    public void setMino(Integer mino) {
        this.mino = mino;
    }

    public String getMiname() {
        return miname;
    }

    public void setMiname(String miname) {
        this.miname = miname;
    }

    public Integer getMiprice() {
        return miprice;
    }

    public void setMiprice(Integer miprice) {
        this.miprice = miprice;
    }

    public Integer getMireport() {
        return mireport;
    }

    public void setMireport(Integer mireport) {
        this.mireport = mireport;
    }

    public Integer getMirequire() {
        return mirequire;
    }

    public void setMirequire(Integer mirequire) {
        this.mirequire = mirequire;
    }

    public String getMiaddress() {
        return miaddress;
    }

    public void setMiaddress(String miaddress) {
        this.miaddress = miaddress;
    }

    public Integer getMcid() {
        return mcid;
    }

    public void setMcid(Integer mcid) {
        this.mcid = mcid;
    }

    public String getMides() {
        return mides;
    }

    public void setMides(String mides) {
        this.mides = mides;
    }

    public String getMiimg() {
        return miimg;
    }

    public void setMiimg(String miimg) {
        this.miimg = miimg;
    }
}
