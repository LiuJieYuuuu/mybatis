package com.crm.service.hcService;


import com.crm.pojo.hcpojo.Way;

import java.util.List;

public interface WayService {

    List<Way> getWayList();

    int addWay(Way way);

    int updateStatus(int wayid,int waystatus);

    int updateWay(Way way);
}
