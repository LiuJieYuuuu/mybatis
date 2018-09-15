package com.crm.service.hcService;

import com.crm.pojo.hcpojo.Client;
import com.crm.pojo.hcpojo.Trainee;

import java.util.List;

public interface ClientService {

    List<Client> getClientList(String cliname, String center, Integer clistatus);

    int addClient(Client client);

    int updateClient(Client client);

    int addTrainee (Trainee trainee);

}
