package com.crm.handler.pagehandler;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.InterviewM;
import com.crm.service.pageservice.InterviewService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employment/")
public class InterviewHandler {
    @Autowired
    private InterviewService interviewServiceImpl;
    @RequestMapping("Interview")
    public ModelAndView getInterviewList(String iResult,Integer cPage){
        int page=1;
        int pageSize=5;
        if(cPage!=null){
            page=cPage;
        }
        ModelAndView mv=new ModelAndView("employment/InterviewManage");
        PageHelper.startPage(page,pageSize);
        List<InterviewM> list=new ArrayList<>();
        if(iResult==null || iResult.equals("null") || iResult.equals("")){
            list=interviewServiceImpl.getInterviewList();
            System.out.println(list);
        }else{
            list=interviewServiceImpl.getInterviewListByResult(iResult);
        }
        mv.addObject("iResult",iResult);
        PageInfo<InterviewM> pageInfo=new PageInfo<>(list);
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }

    @RequestMapping("addInterview")
    public ModelAndView addInterview(){
        ModelAndView mv=new ModelAndView("employment/addInterview");
        List<Trainee> studentList=interviewServiceImpl.getStudentNames();
        List<EnterpriseM> enterpriseList=interviewServiceImpl.getEnterpriseNames();
        List<Crm_Class> classList=interviewServiceImpl.getClassNames();
        mv.addObject("studentList",studentList);
        mv.addObject("enterpriseList",enterpriseList);
        mv.addObject("classList",classList);
        return mv;
    }

    @RequestMapping("doAddInterview")
    public String doAddInterview(InterviewM interviewM){
        interviewServiceImpl.addInterview(interviewM);
        return "redirect:Interview";
    }

    @RequestMapping("updateInterview")
    public ModelAndView updateInterview(Integer id){
        ModelAndView mv=new ModelAndView("employment/updateInterview");
        InterviewM interviewM=interviewServiceImpl.getInterviewById(id);
        List<Trainee> studentList=interviewServiceImpl.getStudentNames();
        List<EnterpriseM> enterpriseList=interviewServiceImpl.getEnterpriseNames();
        List<Crm_Class> classList=interviewServiceImpl.getClassNames();
        mv.addObject("interview",interviewM);
        mv.addObject("studentList",studentList);
        mv.addObject("enterpriseList",enterpriseList);
        mv.addObject("classList",classList);
        return mv;
    }

    @RequestMapping("doUpdateInterview")
    public String doUpdateInterview(InterviewM interviewM){
        interviewServiceImpl.updateInterview(interviewM);
        return "redirect:Interview";
    }
}
