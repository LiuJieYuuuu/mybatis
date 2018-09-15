package com.crm.pojo.myclass;

import java.sql.Date;

public class Crm_Score {
    private Integer scoreId;
    private Integer reviewId;
    private Integer traId;
    private Integer score;
    private Date reviewTime;
    private String teaName;
    private  String tname;

    public Date getReviewTime() {
        return reviewTime;
    }

    public void setReviewTime(Date reviewTime) {
        this.reviewTime = reviewTime;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Crm_Score(Integer scoreId, Integer reviewId, Integer traId, Integer score, Date reviewTime, String teaName, String tname) {
        this.scoreId = scoreId;
        this.reviewId = reviewId;
        this.traId = traId;
        this.score = score;
        this.reviewTime = reviewTime;
        this.teaName = teaName;
        this.tname = tname;
    }

    public Crm_Score(){}

    public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Integer getTraId() {
        return traId;
    }

    public void setTraId(Integer traId) {
        this.traId = traId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Crm_Score{" +
                "scoreId=" + scoreId +
                ", reviewId=" + reviewId +
                ", traId=" + traId +
                ", score=" + score +
                ", reviewTime=" + reviewTime +
                ", teaName='" + teaName + '\'' +
                ", tname='" + tname + '\'' +
                '}';
    }
}
