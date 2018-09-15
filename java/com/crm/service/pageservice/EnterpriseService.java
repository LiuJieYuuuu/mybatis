package com.crm.service.pageservice;

import com.crm.pojo.pagepojo.EnterpriseM;

import java.util.List;

public interface EnterpriseService {
    int addEnterprise(EnterpriseM enterpriseM);
    List<EnterpriseM> getEnterpriseList();
    EnterpriseM getEnterpriseById(int id);
    int updateEnterprise(EnterpriseM enterpriseM);
    List<EnterpriseM> getEnterpriseListByName(String name);
}
