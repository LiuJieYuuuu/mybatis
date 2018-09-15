package com.crm.impl.hcServiceImpl;

import com.crm.dao.hcDao.WayDao;
import com.crm.pojo.hcpojo.Way;
import com.crm.service.hcService.WayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WayServiceImpl implements WayService {

    @Autowired
    private WayDao wayDao;

    @Override
    public List<Way> getWayList() {
        return wayDao.getWayList();
    }

    @Override
    public int addWay(Way way) {
        return wayDao.addWay(way);
    }

    @Override
    public int updateStatus(int wayid, int waystatus) {
        return wayDao.updateStatus(wayid,waystatus);
    }

    @Override
    public int updateWay(Way way) {
        return wayDao.updateWay(way);
    }
}
