package com.crm.dao.pagedao;

import com.crm.pojo.pagepojo.EnterpriseM;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface enterpriseMDao {
    int addEnterprise(EnterpriseM enterpriseM);
    List<EnterpriseM> getEnterpriseList();
    EnterpriseM getEnterpriseById(int id);
    int updateEnterprise(EnterpriseM enterpriseM);
    List<EnterpriseM> getEnterpriseListByName(String name);
}
