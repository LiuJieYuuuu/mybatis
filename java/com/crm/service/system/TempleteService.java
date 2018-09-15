package com.crm.service.system;

import com.crm.pojo.system.Etemp;
import com.crm.pojo.system.Templete;

import java.util.List;

public interface TempleteService {
    List<Templete> getTempletes();

    int addFTemplete(Templete templete);

    int addEtemp(Etemp etemp);

    Etemp getEtempInfo(Integer etpid);

    int updateEtemp(Etemp etemp);

    Templete getTemplete(Integer tpid);

    int updateFtemp(Templete templete);

    int deleteFtemp(Integer tpid);

    int deleteEtemp(Integer etpid);
}
