package com.crm.dao.hcDao;

import com.crm.pojo.hcpojo.Client;
import com.crm.pojo.hcpojo.Trainee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClientDao {
    List<Client> getClientList(@Param("cliname") String cliname,
                               @Param("center") String center,
                               @Param("clistatus") Integer clistatus);

    int addClient(Client client);

    int updateClient(Client client);

    int addTrainee (Trainee trainee);
}
