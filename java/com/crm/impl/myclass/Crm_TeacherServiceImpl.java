package com.crm.impl.myclass;

import com.crm.dao.myclass.Crm_TeacherDao;
import com.crm.pojo.myclass.Crm_Teacher;
import com.crm.service.myclass.Crm_TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_TeacherServiceImpl implements Crm_TeacherService {

    @Autowired
    private Crm_TeacherDao crm_teacherDao;

    @Override
    public List<Crm_Teacher> getTeaList() {
        return crm_teacherDao.getTeaList();
    }
}
