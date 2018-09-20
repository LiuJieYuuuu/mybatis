package com.ssm.medical.impl;

import com.ssm.medical.dao.MedicalDao;
import com.ssm.medical.pojo.MedClassify;
import com.ssm.medical.service.MClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MClassifyServiceImpl implements MClassifyService {
    @Autowired
    private MedicalDao medicalDao;

    @Override
    public List<MedClassify> getM_classifys() {
        return medicalDao.getM_classifys();
    }

    @Override
    public int addM_classify(MedClassify medClassify) {
        return medicalDao.addM_classify(medClassify);
    }

    @Override
    public boolean deletemClassify(Integer mcid) {
        return medicalDao.deletemClassify(mcid);
    }

    @Override
    public MedClassify getmClassify(Integer mcid) {
        return medicalDao.getmClassify(mcid);
    }

    @Override
    public boolean updatemClassify(MedClassify medClassify) {
        return medicalDao.updatemClassify(medClassify);
    }
}
