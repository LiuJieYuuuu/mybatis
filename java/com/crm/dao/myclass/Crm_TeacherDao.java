package com.crm.dao.myclass;

import com.crm.pojo.myclass.Crm_Teacher;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Crm_TeacherDao {
    List<Crm_Teacher> getTeaList();
}
