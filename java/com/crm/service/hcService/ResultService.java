package com.crm.service.hcService;

import com.crm.pojo.hcpojo.Result;

import java.util.List;

public interface ResultService {
    List<Result> getResultList();

    int addResult(Result result);

    int updateStatus2(int resultid,int resultstatus);

    int updateResult(Result result);
}
