package com.crm.pojo.myclass;


import java.util.List;

public class Crm_ScoreList {
    private List<Integer> scoreId;
    private List<Integer> score;

    public Crm_ScoreList(List<Integer> scoreId, List<Integer> score) {
        this.scoreId = scoreId;
        this.score = score;
    }
    public Crm_ScoreList(){}

    public List<Integer> getScoreId() {
        return scoreId;
    }

    public void setScoreId(List<Integer> scoreId) {
        this.scoreId = scoreId;
    }

    public List<Integer> getScore() {
        return score;
    }

    public void setScore(List<Integer> score) {
        this.score = score;
    }
}
