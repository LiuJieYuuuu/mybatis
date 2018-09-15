package com.crm.impl.hcServiceImpl;

import com.crm.dao.hcDao.ResultDao;
import com.crm.pojo.hcpojo.Result;
import com.crm.service.hcService.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResultServiceImpl implements ResultService {

    @Autowired
    private ResultDao resultDao;
    @Override
    public List<Result> getResultList() {
        return resultDao.getResultList();
    }

    @Override
    public int addResult(Result result) {
        return resultDao.addResult(result);
    }

    @Override
    public int updateStatus2(int resultid, int resultstatus) {
        return resultDao.updateStatus2(resultid,resultstatus);
    }

    @Override
    public int updateResult(Result result) {
        return resultDao.updateResult(result);
    }


}
