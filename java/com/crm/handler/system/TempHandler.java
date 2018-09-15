package com.crm.handler.system;

import com.crm.pojo.system.Etemp;
import com.crm.pojo.system.Templete;
import com.crm.service.system.TempleteService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/")
public class TempHandler {
    @Autowired
    private TempleteService templeteServiceimpl;

    /**
     * 获取所有的父模块和子模块
     * @param request
     * @return
     */
    @RequestMapping("templete/getAllTemps")
    public ModelAndView getTempletes(HttpServletRequest request){
        ModelAndView mv=new ModelAndView("redirect:/system/Templetes.jsp");
        List<Templete> temps=templeteServiceimpl.getTempletes();
        request.getSession().setAttribute("temps",temps);
        return mv;
    }

    /**
     * 添加父模块或者子模块
     * @return
     */
    @RequestMapping("templete/addTemp")
    public ModelAndView addTempbefore(){
        ModelAndView mv=new ModelAndView("system/addTemps");
        List<Templete> temps=templeteServiceimpl.getTempletes();
        mv.addObject("temps",temps);
        return mv;
    }
    @RequestMapping("templete/addTempSuccess")
    public ModelAndView addTempafter(@RequestParam("tname")String tname,
                                     @RequestParam("address") String address,
                                     @RequestParam("temp") String temp,
                                     @RequestParam("ftemp") String ftemp){
        if(temp.equals("templete")){
            Templete templete=new Templete();
            templete.setTpname(tname);
            templeteServiceimpl.addFTemplete(templete);
        }else{
            Etemp etemp=new Etemp();
            etemp.setEtpname(tname);
            etemp.setEtpaddress(address);
            etemp.setTpid(Integer.parseInt(ftemp));
            templeteServiceimpl.addEtemp(etemp);
        }
        HttpServletRequest request=((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        request.getSession().setAttribute("model","model");
        return new ModelAndView("redirect:/login");
        //return getTempletes(request);
    }

    /**
     * 修改子模块信息
     * @param etpid
     * @return
     */
    @RequestMapping("templete/updateTemp")
    public ModelAndView updateTempbefore(@RequestParam("etpid") String etpid){
        ModelAndView mv=new ModelAndView("system/updateTemp");
        Etemp etemp=templeteServiceimpl.getEtempInfo(Integer.parseInt(etpid));
        List<Templete> temps=templeteServiceimpl.getTempletes();
        mv.addObject("temps",temps);
        mv.addObject("etemp",etemp);
        return mv;
    }
    @RequestMapping("templete/updateTempSuccess")
    public ModelAndView updateTempafter(Etemp etemp){
        templeteServiceimpl.updateEtemp(etemp);
        HttpServletRequest request=((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        request.getSession().setAttribute("model","model");
        return new ModelAndView("redirect:/login");
        //return getTempletes(request);
    }

    /**
     * 修改父模块
     * @param tpid
     * @return
     */
    @RequestMapping("templete/updateFtemp")
    public ModelAndView updateFtemp(@RequestParam("tpid")String tpid){
        ModelAndView mv=new ModelAndView("system/updateFtemp");
        Templete templete=templeteServiceimpl.getTemplete(Integer.parseInt(tpid));
        mv.addObject("ftemp",templete);
        return mv;
    }
    @RequestMapping("templete/updateFtempSuccess")
    public ModelAndView updateFtempSuccess(Templete templete){
        System.out.println(templete);
        templeteServiceimpl.updateFtemp(templete);
        HttpServletRequest request=((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        request.getSession().setAttribute("model","model");
        return new ModelAndView("redirect:/login");
        //return getTempletes(request);
    }

    /**
     * 删除父模块
     * @param request
     * @return
     */
    @RequestMapping("templete/deleteFtemp")
    public ModelAndView deleteFtemp(@RequestParam("tpid") Integer tpid,HttpServletRequest request){
        templeteServiceimpl.deleteFtemp(tpid);
        request.getSession().setAttribute("model","model");
        return new ModelAndView("redirect:/login");
        //return getTempletes(request);
    }

    /**
     * 删除子模块
     * @param etpid
     * @param request
     * @return
     */
    @RequestMapping("/templete/deleteEtemp")
    public ModelAndView deleteEtemp(@RequestParam("etpid") Integer etpid,HttpServletRequest request){
        templeteServiceimpl.deleteEtemp(etpid);
        request.getSession().setAttribute("model","model");
        return new ModelAndView("redirect:/login");
        //return getTempletes(request);
    }
}
