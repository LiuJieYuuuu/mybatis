package com.crm.service.myclass;

import com.crm.pojo.myclass.Crm_Activity;

import java.util.List;

public interface Crm_ActivityService {
    List<Crm_Activity> getActList(Crm_Activity crm_activity);
    int addAct(Crm_Activity crm_activity);
    int updateAct(Crm_Activity crm_activity);
    Crm_Activity getActById(Integer actId);
    int deleteAct(Integer actId);
}
