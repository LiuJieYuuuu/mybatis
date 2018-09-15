package com.crm.dao.system;

import com.crm.pojo.system.Etemp;
import com.crm.pojo.system.Templete;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TempleteDao {
    List<Templete> getTempletes();

    int addFTemplete(Templete templete);

    int addEtemp(Etemp etemp);

    Etemp getEtempInfo(@Param("etpid") Integer etpid);

    int updateEtemp(Etemp etemp);

    Templete getTemplete(@Param("tpid") Integer tpid);

    int updateFtemp(Templete templete);

    int deleteFtemp(Integer tpid);

    int deleteEtemp(Integer etpid);
}
