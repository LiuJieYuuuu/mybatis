package com.crm.handler.pagehandler;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.EntryM;
import com.crm.pojo.pagepojo.InterviewM;
import com.crm.service.pageservice.EntryService;
import com.crm.service.pageservice.InterviewService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employment/")
public class EntryHandler {
    @Autowired
    private EntryService entryServiceImpl;
    @Autowired
    private InterviewService interviewServiceImpl;

    @RequestMapping("EntryManage")
    public ModelAndView getEntryList(Integer eeNo,Integer cPage){
        int page=1;
        int pageSize=5;
        if(cPage!=null){
            page=cPage;
        }
        ModelAndView mv=new ModelAndView("employment/EntryManage");
        PageHelper.startPage(page,pageSize);
        List<EntryM> entryMList=new ArrayList<>();
        if(eeNo==null || eeNo==0){
            entryMList=entryServiceImpl.getEntryList();
        }else{
            entryMList=entryServiceImpl.getEntryListById(eeNo);
        }
        List<EnterpriseM> enterpriseMList=interviewServiceImpl.getEnterpriseNames();
        mv.addObject("enterpriseList",enterpriseMList);
        PageInfo<EntryM> entryMPageInfo=new PageInfo<>(entryMList);
        mv.addObject("eeNo",eeNo);
        mv.addObject("entryList",entryMPageInfo);
        return mv;
    }

    @RequestMapping("addEntry")
    public ModelAndView addEntry(){
        ModelAndView mv=new ModelAndView("employment/addEntry");
        List<Trainee> studentList=interviewServiceImpl.getStudentNames();
        List<EnterpriseM> enterpriseList=interviewServiceImpl.getEnterpriseNames();
        List<Crm_Class> classList=interviewServiceImpl.getClassNames();
        mv.addObject("studentList",studentList);
        mv.addObject("enterpriseList",enterpriseList);
        mv.addObject("classList",classList);
        return mv;
    }

    @RequestMapping("doAddEntry")
    public String doAddEntry(EntryM entryM){
        entryServiceImpl.addEntry(entryM);
        return "redirect:EntryManage";
    }

    @RequestMapping("updateEntry")
    public ModelAndView updateEntry(Integer id){
        ModelAndView mv=new ModelAndView("employment/updateEntry");
        EntryM entryM=entryServiceImpl.getEntryById(id);
        List<Trainee> studentList=interviewServiceImpl.getStudentNames();
        List<EnterpriseM> enterpriseList=interviewServiceImpl.getEnterpriseNames();
        List<Crm_Class> classList=interviewServiceImpl.getClassNames();
        mv.addObject("entryM",entryM);
        mv.addObject("studentList",studentList);
        mv.addObject("enterpriseList",enterpriseList);
        mv.addObject("classList",classList);
        return mv;
    }

    @RequestMapping("doUpdateEntry")
    public String doUpdateEntry(EntryM entryM){
        entryServiceImpl.updateEntry(entryM);
        return "redirect:EntryManage";
    }
}
