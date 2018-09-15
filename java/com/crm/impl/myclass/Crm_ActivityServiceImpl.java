package com.crm.impl.myclass;

import com.crm.dao.myclass.Crm_ActivityDao;
import com.crm.pojo.myclass.Crm_Activity;
import com.crm.service.myclass.Crm_ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_ActivityServiceImpl implements Crm_ActivityService {

    @Autowired
    private Crm_ActivityDao crm_activityDao;

    @Override
    public List<Crm_Activity> getActList(Crm_Activity crm_activity) {
        return crm_activityDao.getActList(crm_activity);
    }

    @Override
    public int addAct(Crm_Activity crm_activity) {
        return crm_activityDao.addAct(crm_activity);
    }

    @Override
    public int updateAct(Crm_Activity crm_activity) {
        return crm_activityDao.updateAct(crm_activity);
    }

    @Override
    public Crm_Activity getActById(Integer actId) {
        return crm_activityDao.getActById(actId);
    }

    @Override
    public int deleteAct(Integer actId) {
        return crm_activityDao.deleteAct(actId);
    }
}
