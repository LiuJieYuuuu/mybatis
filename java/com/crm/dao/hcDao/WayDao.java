package com.crm.dao.hcDao;

import com.crm.pojo.hcpojo.Way;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WayDao {

    List<Way> getWayList();

    int addWay(Way way);

    int updateStatus(@Param("wayid") Integer wayid, @Param("waystatus") Integer waystatus);

    int updateWay(Way way);
}
