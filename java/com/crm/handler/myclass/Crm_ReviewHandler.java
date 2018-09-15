package com.crm.handler.myclass;


import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.myclass.Crm_Review;
import com.crm.pojo.myclass.Crm_Score;
import com.crm.pojo.myclass.Crm_Teacher;
import com.crm.service.myclass.Crm_ClassService;
import com.crm.service.myclass.Crm_ReviewService;
import com.crm.service.myclass.Crm_ScoreService;
import com.crm.service.myclass.Crm_TeacherService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/classManage/")
public class Crm_ReviewHandler {
    @Autowired
    private Crm_ClassService crm_classServiceImpl;
    @Autowired
    private Crm_TeacherService crm_teacherServiceImpl;
    @Autowired
    private Crm_ReviewService crm_reviewServiceImpl;
    @Autowired
    private Crm_ScoreService crm_scoreServiceImpl;

    @RequestMapping("crm_review")
    public ModelAndView crm_review(@Param("pageNum") String pageNum,
                                   @Param("reviewClassId") String reviewClassId,
                                   @Param("reviewTeaId") String reviewTeaId){
        ModelAndView mv = new ModelAndView("classManage/crmreview");
        Crm_Review crm_review = new Crm_Review();

        int cpage = 1;
        int cid = 0;
        int tid = 0;
        if(pageNum != null && pageNum!=""){
            cpage = Integer.parseInt(pageNum);
        }
        if(reviewTeaId != null && reviewTeaId !=""){
            tid = Integer.parseInt(reviewTeaId);
            crm_review.setReviewTeaId(tid);

        }
        if(reviewClassId != null && reviewClassId !=""){
            cid = Integer.parseInt(reviewClassId);
            crm_review.setReviewClassId(cid);
        }
        PageHelper.startPage(cpage,4);
        List<Crm_Review> list = crm_reviewServiceImpl.getReviewList(crm_review);
        List<Crm_Class> clist =  crm_classServiceImpl.getClassList();
        List<Crm_Teacher> tlist = crm_teacherServiceImpl.getTeaList();
        PageInfo<Crm_Review> pageInfo = new PageInfo<Crm_Review>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("clist",clist);
        mv.addObject("tlist",tlist);
        mv.addObject("tid",tid);
        mv.addObject("cid",cid);
        return mv;
    }

    @RequestMapping("addReview")
    public ModelAndView addReview(@Param("actName") String reviewName,
                                  @Param("actTime") String reviewTime,
                                  @Param("reviewTeaId") String reviewTeaId,
                                  @Param("reviewClassId") String reviewClassId){

        Crm_Review crm_review = new Crm_Review();
        int cid = Integer.parseInt(reviewClassId);
        crm_review.setReviewClassId(cid);
        int tid = Integer.parseInt(reviewTeaId);
        crm_review.setReviewTeaId(tid);
        crm_review.setReviewName(reviewName);
        java.sql.Date date=java.sql.Date.valueOf(reviewTime);
        crm_review.setReviewTime(date);

        crm_reviewServiceImpl.addReview(crm_review);

        String className = crm_classServiceImpl.getClassNameById(cid);
        List<Trainee> list =  crm_classServiceImpl.getAllTraineeByClassName(className);
        List<Crm_Score> slist = new ArrayList<Crm_Score>();
        for(Trainee t:list){
            Crm_Score crm_score = new Crm_Score();
            crm_score.setTraId(t.getTraid());
            slist.add(crm_score);
        }
        crm_scoreServiceImpl.insertScoreList(slist);

        return crm_review(null,null,null);
    }

    @RequestMapping("del_review")
    public ModelAndView del_review(@Param("reviewId") Integer reviewId,
                                   @Param("pageNum") String pageNum
                                   ){
        crm_reviewServiceImpl.delReview(reviewId);
        return crm_review(pageNum,null,null);
    }


}
