package com.crm.service.myclass;

import com.crm.pojo.myclass.Crm_Review;

import java.util.List;

public interface Crm_ReviewService {
    List<Crm_Review> getReviewList(Crm_Review crm_review);
    int addReview(Crm_Review crm_review);
    int delReview(Integer reviewId);
}
