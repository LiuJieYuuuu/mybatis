package com.crm.impl.system;

import com.crm.dao.system.LogjDao;
import com.crm.pojo.system.Logj;
import com.crm.service.system.LogjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class LogjServiceImpl implements LogjService {
    @Autowired
    private LogjDao logjDao;

    @Override
    public int addLogj(Logj logj) {
        return logjDao.addLogj(logj.getAuid(),logj.getIncident(),logj.getLip());
    }

    @Override
    public List<Logj> getAllLogjs() {
        return logjDao.getAllLogjs();
    }
}
