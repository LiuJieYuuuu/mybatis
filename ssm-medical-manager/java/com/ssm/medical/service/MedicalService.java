package com.ssm.medical.service;

import com.ssm.medical.pojo.Medical;

import java.util.List;

public interface MedicalService {
    /**
     * 添加药品信息
     * @param medical
     * @return
     */
    int addmedical(Medical medical);

    /**
     * 获取所有药品信息
     * @return
     */
    List<Medical> getMedicalInfo();
}
