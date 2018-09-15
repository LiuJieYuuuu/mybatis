package com.crm.handler.hchandler;

import com.crm.pojo.hcpojo.Result;
import com.crm.service.hcService.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class ResultHandler {

    @Autowired
    private ResultService resultServiceImpl;

    @RequestMapping("hc/result")
    public ModelAndView result(){
        ModelAndView mv = new ModelAndView("hc/imgtable");
        List<Result> resultList =  resultServiceImpl.getResultList();
        mv.addObject("resultList",resultList);
        return mv;
    }

    @RequestMapping("hc/addResult")
    public String addResult(Result result){
        resultServiceImpl.addResult(result);
        return "redirect:/hc/result";
    }

    @RequestMapping("hc/updateStatus2")
    public String updateStatus2(int resultid,int resultstatus){
        System.out.println(resultid + resultstatus);
        resultServiceImpl.updateStatus2(resultid,resultstatus);
        return "redirect:/hc/result";
    }

    @RequestMapping("hc/change2")
    public ModelAndView change2(Result result){
        ModelAndView mv = new ModelAndView("hc/updateResult");
        mv.addObject("result",result);
        return mv;
    }

    @RequestMapping("hc/updateResult")
    public String updateResult(Result result){
        System.out.println(result);
        //System.out.println("我子啊这：" + result);
       resultServiceImpl.updateResult(result);
       return "redirect:/hc/result";
    }
}
