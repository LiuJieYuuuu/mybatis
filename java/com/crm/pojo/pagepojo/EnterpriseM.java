package com.crm.pojo.pagepojo;

public class EnterpriseM {
    private Integer id;
    private String name;
    private String loc;
    private String tel;
    private String isPartner;

    public EnterpriseM() {
    }

    public EnterpriseM(Integer id, String name, String loc, String tel, String isPartner) {
        this.id = id;
        this.name = name;
        this.loc = loc;
        this.tel = tel;
        this.isPartner = isPartner;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getIsPartner() {
        return isPartner;
    }

    public void setIsPartner(String isPartner) {
        this.isPartner = isPartner;
    }

    @Override
    public String toString() {
        return "EnterpriseM{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", loc='" + loc + '\'' +
                ", tel='" + tel + '\'' +
                ", isPartner='" + isPartner + '\'' +
                '}';
    }
}
