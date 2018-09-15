package com.crm.handler.myclass;

import com.crm.pojo.myclass.Crm_Activity;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.myclass.Crm_Teacher;
import com.crm.service.myclass.Crm_ActivityService;
import com.crm.service.myclass.Crm_ClassService;
import com.crm.service.myclass.Crm_TeacherService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/classManage/")
public class Crm_ActivityHandler {
    @Autowired
    private Crm_ActivityService crm_activityServiceImpl;
    @Autowired
    private Crm_ClassService crm_classServiceImpl;
    @Autowired
    private Crm_TeacherService crm_teacherServiceImpl;

    @RequestMapping("crm_activity")
    public ModelAndView crm_activity(@Param("pageNum") String pageNum,
                                     @Param("actClassId") String actClassId,
                                     @Param("actTeacherId") String actTeacherId){
        ModelAndView mv = new ModelAndView("classManage/crmactivity");
        Crm_Activity crm_activity = new Crm_Activity();
        int cpage = 1;
        int cid = 0;
        int tid = 0;
        if(pageNum != null && pageNum!=""){
            cpage = Integer.parseInt(pageNum);
        }
        if(actTeacherId != null && actTeacherId !=""){
            tid = Integer.parseInt(actTeacherId);
            crm_activity.setActTeacherId(tid);
        }
        if(actClassId != null && actClassId !=""){
            cid = Integer.parseInt(actClassId);
            crm_activity.setActClassId(cid);
        }

        PageHelper.startPage(cpage,4);
        List<Crm_Activity> list = crm_activityServiceImpl.getActList(crm_activity);
        List<Crm_Class> clist =  crm_classServiceImpl.getClassList();
        List<Crm_Teacher> tlist = crm_teacherServiceImpl.getTeaList();
        PageInfo<Crm_Activity> pageInfo = new PageInfo<Crm_Activity>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("clist",clist);
        mv.addObject("tlist",tlist);
        mv.addObject("tid",tid);
        mv.addObject("cid",cid);
        return mv;
    }

    @RequestMapping("addActivity")
    public ModelAndView addActivity(@Param("actName") String actName,
                              @Param("actPlace") String actPlace,
                              @Param("actTime") String actTime,
                              @Param("actTeacherId") String actTeacherId,
                              @Param("actClassId") String actClassId){

        ModelAndView mv = crm_activity(null,null,null);
        Crm_Activity crm_activity = new Crm_Activity();
        int cid = Integer.parseInt(actClassId);
        crm_activity.setActClassId(cid);
        int tid = Integer.parseInt(actTeacherId);
        crm_activity.setActTeacherId(tid);
        crm_activity.setActName(actName);
        crm_activity.setActPlace(actPlace);
        java.sql.Date date=java.sql.Date.valueOf(actTime);
        crm_activity.setActTime(date);
        crm_activityServiceImpl.addAct(crm_activity);
        return mv;
    }

    @RequestMapping("updateAct")
    public ModelAndView updateAct(@Param("actId") String actId,
                                  @Param("pageNum") String pageNum){
        ModelAndView mv = new ModelAndView("classManage/updateactivity");
        int id = Integer.parseInt(actId);
        Crm_Activity crm_activity = crm_activityServiceImpl.getActById(id);
        List<Crm_Class> clist =  crm_classServiceImpl.getClassList();
        List<Crm_Teacher> tlist = crm_teacherServiceImpl.getTeaList();
        mv.addObject("clist",clist);
        mv.addObject("tlist",tlist);
        mv.addObject("activity",crm_activity);
        mv.addObject("pageNum",pageNum);
        return mv;
    }

    @RequestMapping("updateActivity")
    public ModelAndView updateActivity(@Param("actName") String actName,
                                       @Param("actPlace") String actPlace,
                                       @Param("actTime") String actTime,
                                       @Param("actTeacherId") String actTeacherId,
                                       @Param("actClassId") String actClassId,
                                       @Param("actId") String actId,
                                       @Param("pageNum") String pageNum){
        ModelAndView mv = crm_activity(pageNum,null,null);
        Crm_Activity crm_Activity = new Crm_Activity();

        int id = Integer.parseInt(actId);
        crm_Activity.setActId(id);
        int cid = Integer.parseInt(actClassId);
        crm_Activity.setActClassId(cid);
        int tid = Integer.parseInt(actTeacherId);
        crm_Activity.setActTeacherId(tid);
        crm_Activity.setActName(actName);
        crm_Activity.setActPlace(actPlace);
        java.sql.Date date=java.sql.Date.valueOf(actTime);
        crm_Activity.setActTime(date);

        crm_activityServiceImpl.updateAct(crm_Activity);
        return mv;
    }

    @RequestMapping("deleteAct")
    public ModelAndView deleteAct(@Param("actId") Integer actId,
                                  @Param("pageNum") String pageNum,
                                  @Param("actClassId") String actClassId,
                                  @Param("actTeacherId") String actTeacherId){
        crm_activityServiceImpl.deleteAct(actId);
        return crm_activity(pageNum,actClassId,actTeacherId);
    }
}
