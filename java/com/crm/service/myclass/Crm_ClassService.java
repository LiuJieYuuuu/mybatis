package com.crm.service.myclass;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;

import java.util.List;

public interface Crm_ClassService {
    List<Crm_Class> getClassList();
    List<Crm_Class> getAllClass();
    int addClass(Crm_Class crm_class);
    List<Trainee> getAllTraineeByClassName(String className);
    String getClassNameById(Integer classNo);
}
