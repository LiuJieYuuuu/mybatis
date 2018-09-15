package com.crm.dao.myclass;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Crm_ClassDao {
    List<Crm_Class> getClassList();
    List<Crm_Class> getAllClass();
    int addClass(Crm_Class crm_class);
    List<Trainee> getAllTraineeByClassName(String className);
    String getClassNameById(Integer classNo);

}
