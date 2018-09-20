package com.ssm.medical.service;

import com.ssm.medical.pojo.Medical;

public interface MedicalService {
    /**
     * 添加药品信息
     * @param medical
     * @return
     */
    int addmedical(Medical medical);
}
