package com.crm.dao.hcDao;

import com.crm.pojo.hcpojo.Result;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResultDao {
    List<Result> getResultList();

    int addResult(Result result);

    int updateStatus2(@Param("resultid") Integer resultid, @Param("resultstatus") Integer resultstatus);

    int updateResult(Result result);

}
