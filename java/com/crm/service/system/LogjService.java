package com.crm.service.system;

import com.crm.pojo.system.Logj;

import java.util.List;

public interface LogjService {
    int addLogj(Logj logj);

    List<Logj> getAllLogjs();
}
