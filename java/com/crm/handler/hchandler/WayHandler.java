package com.crm.handler.hchandler;


import com.crm.pojo.hcpojo.Way;
import com.crm.service.hcService.WayService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class WayHandler {
    @Autowired
    private WayService wayServiceImpl;

    @RequestMapping("hc/way")
    public ModelAndView way(){
        ModelAndView mv = new ModelAndView("hc/imglist");
        List<Way> wayList = wayServiceImpl.getWayList();
        mv.addObject("wayList",wayList);
        return mv;
    }

    @RequestMapping("hc/addWay")
    public String addWay(Way way){
        wayServiceImpl.addWay(way);
        return "redirect:/hc/way";
    }

    @RequestMapping("hc/updateStatus")
    public String updateStatus(int wayid,int waystatus){


        wayServiceImpl.updateStatus(wayid, waystatus);

        return "redirect:/hc/way";
    }

    @RequestMapping("hc/change")
    public ModelAndView change(Way way){
        ModelAndView mv = new ModelAndView("hc/updateWay");
        mv.addObject("way",way);
        return mv;
    }

    @RequestMapping("hc/updateWay")
    public String updateResult(Way way){
        System.out.println(way);
        //System.out.println("我子啊这：" + result);
        wayServiceImpl.updateWay(way);
        return "redirect:/hc/way";
    }
}
