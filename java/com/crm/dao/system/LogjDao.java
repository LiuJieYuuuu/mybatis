package com.crm.dao.system;

import com.crm.pojo.system.Logj;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogjDao {
    int addLogj(@Param("auid") Integer auid,
                @Param("incident") String incident,
                @Param("lip") String lip);

    List<Logj> getAllLogjs();
}
