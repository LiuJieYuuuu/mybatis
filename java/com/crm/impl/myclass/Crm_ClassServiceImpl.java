package com.crm.impl.myclass;

import com.crm.dao.myclass.Crm_ClassDao;
import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.service.myclass.Crm_ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_ClassServiceImpl implements Crm_ClassService {

    @Autowired
    private Crm_ClassDao crm_classDao;

    @Override
    public List<Crm_Class> getClassList() {
        return crm_classDao.getClassList();
    }

    @Override
    public List<Crm_Class> getAllClass() {
        return crm_classDao.getAllClass();
    }

    @Override
    public int addClass(Crm_Class crm_class) {
        return crm_classDao.addClass(crm_class);
    }

    @Override
    public List<Trainee> getAllTraineeByClassName(String className) {
        return crm_classDao.getAllTraineeByClassName(className);
    }

    @Override
    public String getClassNameById(Integer classNo) {
        return crm_classDao.getClassNameById(classNo);
    }
}
