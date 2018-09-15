package com.crm.service.myclass;

import com.crm.pojo.myclass.Crm_Score;

import java.util.List;

public interface Crm_ScoreService {
    int insertScoreList(List<Crm_Score> list);
    int updateScoreList(List<Crm_Score> list);
    List<Crm_Score> getScoreList(Integer reviewId);
}
