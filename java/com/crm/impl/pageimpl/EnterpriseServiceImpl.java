package com.crm.impl.pageimpl;

import com.crm.dao.pagedao.enterpriseMDao;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.service.pageservice.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private enterpriseMDao enterpriseMDao;
    @Override
    public int addEnterprise(EnterpriseM enterpriseM) {
        return enterpriseMDao.addEnterprise(enterpriseM);
    }

    @Override
    public List<EnterpriseM> getEnterpriseList() {
        return enterpriseMDao.getEnterpriseList();
    }

    @Override
    public EnterpriseM getEnterpriseById(int id) {
        return enterpriseMDao.getEnterpriseById(id);
    }

    @Override
    public int updateEnterprise(EnterpriseM enterpriseM) {
        return enterpriseMDao.updateEnterprise(enterpriseM);
    }

    @Override
    public List<EnterpriseM> getEnterpriseListByName(String name) {
        return enterpriseMDao.getEnterpriseListByName(name);
    }
}
