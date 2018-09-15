package com.crm.dao.myclass;

import com.crm.pojo.myclass.Crm_Activity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Crm_ActivityDao {
    List<Crm_Activity> getActList(Crm_Activity crm_activity);
    int addAct(Crm_Activity crm_activity);
    int updateAct(Crm_Activity crm_activity);
    Crm_Activity getActById(Integer actId);
    int deleteAct(Integer actId);
}
