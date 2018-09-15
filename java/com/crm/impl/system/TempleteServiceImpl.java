package com.crm.impl.system;

import com.crm.dao.system.TempleteDao;
import com.crm.pojo.system.Etemp;
import com.crm.pojo.system.Templete;
import com.crm.service.system.TempleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class TempleteServiceImpl implements TempleteService {
    @Autowired
    private TempleteDao templeteDao;

    @Override
    public List<Templete> getTempletes() {
        return templeteDao.getTempletes();
    }

    @Override
    public int addFTemplete(Templete templete) {
        return templeteDao.addFTemplete(templete);
    }

    @Override
    public int addEtemp(Etemp etemp) {
        return templeteDao.addEtemp(etemp);
    }

    @Override
    public Etemp getEtempInfo(Integer etpid) {
        return templeteDao.getEtempInfo(etpid);
    }

    @Override
    public int updateEtemp(Etemp etemp) {
        return templeteDao.updateEtemp(etemp);
    }

    @Override
    public Templete getTemplete(Integer tpid) {
        return templeteDao.getTemplete(tpid);
    }

    @Override
    public int updateFtemp(Templete templete) {
        return templeteDao.updateFtemp(templete);
    }

    @Override
    public int deleteFtemp(Integer tpid) {
        return templeteDao.deleteFtemp(tpid);
    }

    @Override
    public int deleteEtemp(Integer etpid) {
        return templeteDao.deleteEtemp(etpid);
    }
}
