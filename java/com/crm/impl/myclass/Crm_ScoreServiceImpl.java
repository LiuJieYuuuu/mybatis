package com.crm.impl.myclass;

import com.crm.dao.myclass.Crm_ScoreDao;
import com.crm.pojo.myclass.Crm_Score;
import com.crm.pojo.myclass.Crm_ScoreList;
import com.crm.service.myclass.Crm_ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_ScoreServiceImpl implements Crm_ScoreService {
    @Autowired
    private Crm_ScoreDao crm_scoreDao;

    @Override
    public int insertScoreList(List<Crm_Score> list) {
        return crm_scoreDao.insertScoreList(list);
    }

    @Override
    public int updateScoreList(List<Crm_Score> list) {
        return crm_scoreDao.updateScoreList(list);
    }


    @Override
    public List<Crm_Score> getScoreList(Integer reviewId) {
        return crm_scoreDao.getScoreList(reviewId);
    }
}
