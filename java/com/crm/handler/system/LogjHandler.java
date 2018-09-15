package com.crm.handler.system;

import com.crm.pojo.system.Logj;
import com.crm.service.system.LogjService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class LogjHandler {

    @Autowired
    private LogjService logjServiceimpl;


    @RequestMapping("logj/getlogjs")
    public ModelAndView getLogjs(@RequestParam( value = "cpage",defaultValue = "1",required = true) String cpage, HttpServletRequest request){
        ModelAndView mv=new ModelAndView("redirect:/system/logjs.jsp");
        int pageNum=1;
        if(cpage!=null && !cpage.isEmpty())
            pageNum=Integer.parseInt(cpage);
        pageNum=Integer.parseInt(cpage);
        PageHelper.startPage(pageNum,5);
        List<Logj> list=logjServiceimpl.getAllLogjs();
        PageInfo<Logj> pageInfo=new PageInfo<Logj>(list);
        request.getSession().setAttribute("pageInfo",pageInfo);
        return mv;
    }

    @ResponseBody
    @RequestMapping("logj/getNextLogjs")
    public List<Logj> getAjaxInfo(@RequestParam("cpage")String cpage){
        int pageNum=1;
        if(cpage!=null && !cpage.isEmpty())
            pageNum=Integer.parseInt(cpage);
        pageNum=Integer.parseInt(cpage);
        PageHelper.startPage(pageNum,5);
        List<Logj> list=logjServiceimpl.getAllLogjs();
        PageInfo<Logj> pageInfo=new PageInfo<Logj>(list);
        return pageInfo.getList();
    }

}
