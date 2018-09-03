package com.mbatis.dao;

import com.mbatis.pojo.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDao {
    List<Emp> getEmp(@Param("ename")String ename,
                     @Param("job") String job,
                     @Param("sal") Double sal);
}
