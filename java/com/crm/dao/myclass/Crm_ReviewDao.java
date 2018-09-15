package com.crm.dao.myclass;

import com.crm.pojo.myclass.Crm_Review;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Crm_ReviewDao {
    List<Crm_Review> getReviewList(Crm_Review crm_review);
    int addReview(Crm_Review crm_review);
    int delReview(Integer reviewId);


}
