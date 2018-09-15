package com.crm.pojo.myclass;

import java.sql.Date;

public class Crm_Review {
    private Integer reviewId;
    private String reviewName;
    private Integer reviewClassId;
    private Date reviewTime;
    private Integer reviewTeaId;
    private String className;
    private String teaName;

    public Crm_Review(Integer reviewId, String reviewName, Integer reviewClassId, Date reviewTime, Integer reviewTeaId, String className, String teaName) {
        this.reviewId = reviewId;
        this.reviewName = reviewName;
        this.reviewClassId = reviewClassId;
        this.reviewTime = reviewTime;
        this.reviewTeaId = reviewTeaId;
        this.className = className;
        this.teaName = teaName;
    }
    public Crm_Review(){}

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public String getReviewName() {
        return reviewName;
    }

    public void setReviewName(String reviewName) {
        this.reviewName = reviewName;
    }

    public Integer getReviewClassId() {
        return reviewClassId;
    }

    public void setReviewClassId(Integer reviewClassId) {
        this.reviewClassId = reviewClassId;
    }

    public Date getReviewTime() {
        return reviewTime;
    }

    public void setReviewTime(Date reviewTime) {
        this.reviewTime = reviewTime;
    }

    public Integer getReviewTeaId() {
        return reviewTeaId;
    }

    public void setReviewTeaId(Integer reviewTeaId) {
        this.reviewTeaId = reviewTeaId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }
}
