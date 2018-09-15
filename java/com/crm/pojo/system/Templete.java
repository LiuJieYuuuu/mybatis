package com.crm.pojo.system;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

public class Templete implements Serializable {
    private Integer tpid;
    private String tpname;
    private List<Etemp> list;

    public Integer getTpid() {
        return tpid;
    }

    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }

    public String getTpname() {
        return tpname;
    }

    public void setTpname(String tpname) {
        this.tpname = tpname;
    }

    public List<Etemp> getList() {
        return list;
    }

    public void setList(List<Etemp> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Templete{" +
                "tpid=" + tpid +
                ", tpname='" + tpname + '\'' +
                ", list=" + list +
                '}';
    }
}
