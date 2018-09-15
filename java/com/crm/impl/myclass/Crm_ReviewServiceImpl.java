package com.crm.impl.myclass;

import com.crm.dao.myclass.Crm_ReviewDao;
import com.crm.pojo.myclass.Crm_Review;
import com.crm.service.myclass.Crm_ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_ReviewServiceImpl implements Crm_ReviewService {

    @Autowired
    private Crm_ReviewDao crm_reviewDao;

    @Override
    public List<Crm_Review> getReviewList(Crm_Review crm_review) {
        return crm_reviewDao.getReviewList(crm_review);
    }

    @Override
    public int addReview(Crm_Review crm_review) {
        return crm_reviewDao.addReview(crm_review);
    }

    @Override
    public int delReview(Integer reviewId) {
        return crm_reviewDao.delReview(reviewId);
    }
}
