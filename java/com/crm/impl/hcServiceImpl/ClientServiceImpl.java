package com.crm.impl.hcServiceImpl;

import com.crm.dao.hcDao.ClientDao;
import com.crm.pojo.hcpojo.Client;
import com.crm.pojo.hcpojo.Trainee;
import com.crm.service.hcService.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientDao clientDao;


    @Override
    public List<Client> getClientList(String cliname, String center, Integer clistatus) {
        return clientDao.getClientList(cliname,center,clistatus);
    }

    @Override
    public int addClient(Client client) {
        return clientDao.addClient(client);
    }

    @Override
    public int updateClient(Client client) {
        return clientDao.updateClient(client);
    }

    @Override
    public int addTrainee(Trainee trainee) {
        return clientDao.addTrainee(trainee);
    }


}
