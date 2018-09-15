package com.crm.handler.myclass;


import com.crm.pojo.myclass.Crm_Score;
import com.crm.pojo.myclass.Crm_ScoreList;
import com.crm.service.myclass.Crm_ScoreService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Controller
@RequestMapping("/classManage/")
public class Crm_ScoreHandler {

    @Autowired
    private Crm_ScoreService crm_scoreServiceImpl;

    @RequestMapping("crm_score")
    public ModelAndView crm_score(@Param("reviewId") Integer reviewId){
        ModelAndView mv = new ModelAndView("classManage/crmscore");
        List<Crm_Score> list = crm_scoreServiceImpl.getScoreList(reviewId);
        mv.addObject("list",list);
        mv.addObject("reviewId",reviewId);
        return mv;
    }

    @RequestMapping("update_score")
    public ModelAndView update_score(@Param("reviewId") Integer reviewId,
                                     HttpServletRequest request){
        String [] ids=request.getParameterValues("scoreid");

        String [] scores=request.getParameterValues("score");
        List<Crm_Score> list = new ArrayList<Crm_Score>();
        for(int i=0;i<ids.length;i++){
            Crm_Score crm_score = new Crm_Score();
            int id=Integer.parseInt(ids[i]);
            int score=Integer.parseInt(scores[i]);
            crm_score.setScoreId(id);
            crm_score.setScore(score);
            list.add(crm_score);
        }

        crm_scoreServiceImpl.updateScoreList(list);
        return crm_score(reviewId);
    }
}
