package com.crm.handler.pagehandler;

import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.service.pageservice.EnterpriseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employment/")
public class EnterpriseHandler {
    @Autowired
    private EnterpriseService enterpriseServiceImpl;

    /*@RequestMapping("Enterprise")
    public ModelAndView Enterprise(Integer cPage){
        int page=1;
        int pageSize=1;
        if(cPage!=null){
            page=cPage;
        }
        ModelAndView mv=new ModelAndView("employment/EnterpriseManage");
        PageHelper.startPage(page,pageSize);
        List<EnterpriseM> list=enterpriseServiceImpl.getEnterpriseList();
        PageInfo<EnterpriseM> pageInfo=new PageInfo<>(list);
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }*/
    @RequestMapping("Enterprise")
    public ModelAndView Enterprise(String name,Integer cPage){
        int page=1;
        int pageSize=5;
        if(cPage!=null){
            page=cPage;
        }
        ModelAndView mv=new ModelAndView("employment/EnterpriseManage");
        PageHelper.startPage(page,pageSize);
        List<EnterpriseM> list=new ArrayList<>();
        if(name==null ||name.isEmpty()){
            list=enterpriseServiceImpl.getEnterpriseList();
        }else{
            list=enterpriseServiceImpl.getEnterpriseListByName("%"+name+"%");
            mv.addObject("name",name);
        }
        PageInfo<EnterpriseM> pageInfo=new PageInfo<>(list);
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }

    @RequestMapping("updateEnterprise")
    public ModelAndView updateEnterprise(int id){
        ModelAndView mv=new ModelAndView("employment/updateEnterprise");
        EnterpriseM enterpriseM=enterpriseServiceImpl.getEnterpriseById(id);
        mv.addObject("Enterprise",enterpriseM);
        return mv;
    }

    @RequestMapping("doUpdateEnterprise")
    public String updateEnterPrise(EnterpriseM enterpriseM){
        int back=enterpriseServiceImpl.updateEnterprise(enterpriseM);
        return "redirect:Enterprise";
    }

    @RequestMapping("addEnterprise")
    public String addEnterprise(EnterpriseM enterpriseM){
        int back=enterpriseServiceImpl.addEnterprise(enterpriseM);
        return "redirect:Enterprise";
    }
}
