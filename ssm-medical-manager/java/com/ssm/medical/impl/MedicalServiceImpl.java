package com.ssm.medical.impl;

import com.ssm.medical.dao.MedicalDao;
import com.ssm.medical.pojo.Medical;
import com.ssm.medical.service.MedicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MedicalServiceImpl implements MedicalService {
    @Autowired
    private MedicalDao medicalDao;

    @Override
    public int addmedical(Medical medical) {
        return medicalDao.addmedical(medical);
    }
}
