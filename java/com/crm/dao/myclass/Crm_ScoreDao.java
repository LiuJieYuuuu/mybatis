package com.crm.dao.myclass;

import com.crm.pojo.myclass.Crm_Score;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Crm_ScoreDao {
    int insertScoreList(List<Crm_Score> list);
    int updateScoreList(List<Crm_Score> list);
    List<Crm_Score> getScoreList(Integer reviewId);
}
