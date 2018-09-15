package com.crm.impl.top;

import com.crm.dao.top.RClientDao;
import com.crm.pojo.top.Client;
import com.crm.pojo.top.Cookies;
import com.crm.service.top.RClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RClientServiceImpl implements RClientService {
    @Autowired
    private RClientDao rClientDao;
    @Override
    public Integer selClientS(String username) {
        return rClientDao.selClientS(username);
    }

    @Override
    public Integer selClientW(String username) {
        return rClientDao.selClientW(username);
    }

    @Override
    public Integer selClientY(String username) {
        return rClientDao.selClientY(username);
    }

    @Override
    public List<Cookies> selClientCook(String username) {
        return rClientDao.selClientCook(username);
    }

    @Override
    public List<Client> selClientOk(String username) {
        return rClientDao.selClientOk(username);
    }

    @Override
    public List<Client> selClientBad(String username) {
        return rClientDao.selClientBad(username);
    }
}
