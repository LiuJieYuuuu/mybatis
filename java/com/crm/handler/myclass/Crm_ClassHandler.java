package com.crm.handler.myclass;


import com.crm.pojo.myclass.Crm_Activity;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.myclass.Crm_Teacher;
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
public class Crm_ClassHandler {

    @Autowired
    private Crm_TeacherService crm_teacherServiceImpl;
    @Autowired
    private Crm_ClassService crm_classServiceImpl;

    @RequestMapping("add_class")
    public ModelAndView add_class(){
        ModelAndView mv = new ModelAndView("classManage/addclass");
        List<Crm_Teacher> tlist = crm_teacherServiceImpl.getTeaList();
        mv.addObject("tlist",tlist);
        return mv;
    }

    @RequestMapping("addc")
    public ModelAndView addc(@Param("className") String className,
                             @Param("javaTeaId") Integer javaTeaId,
                             @Param("mindTeaId") Integer mindTeaId){

        Crm_Class crm_class = new Crm_Class();
        crm_class.setClassName(className);
        crm_class.setJavaTeaId(javaTeaId);
        crm_class.setMindTeaId(mindTeaId);
        crm_classServiceImpl.addClass(crm_class);
        return my_class(null);
    }

    @RequestMapping("my_class")
    public ModelAndView my_class(@Param("pageNum") String pageNum){
        ModelAndView mv = new ModelAndView("classManage/crmclass");

        int cpage = 1;
        if(pageNum != null && pageNum!=""){
            cpage = Integer.parseInt(pageNum);
        }
        PageHelper.startPage(cpage,4);
        List<Crm_Class> list = crm_classServiceImpl.getAllClass();
        List<Crm_Teacher> tlist = crm_teacherServiceImpl.getTeaList();
        PageInfo<Crm_Class> pageInfo = new PageInfo<Crm_Class>(list);
        mv.addObject("tlist",tlist);
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }

}
