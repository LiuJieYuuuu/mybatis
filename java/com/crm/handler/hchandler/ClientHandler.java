package com.crm.handler.hchandler;

import com.crm.pojo.hcpojo.Client;
import com.crm.pojo.hcpojo.Result;
import com.crm.pojo.hcpojo.Trainee;
import com.crm.pojo.hcpojo.Way;
import com.crm.service.hcService.ClientService;
import com.crm.service.hcService.ResultService;
import com.crm.service.hcService.WayService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class ClientHandler {

    @Autowired
    private ClientService clientServiceImpl;
    @Autowired
    private WayService wayServiceImpl;
    @Autowired
    private ResultService resultServiceImpl;



    @RequestMapping("hc/client")
    public ModelAndView client(String cliname, String center, Integer clistatus,Integer curPage){
        System.out.println(cliname + center + clistatus);
        ModelAndView mv = new ModelAndView("hc/form");
        int pageNum=1;
        if(curPage != null) {
            pageNum=curPage;
        }
        PageHelper.startPage(pageNum, 2);
        List<Client> clientList = clientServiceImpl.getClientList(cliname, center, clistatus);
        PageInfo<Client> pageInfo = new PageInfo<Client>(clientList);
        mv.addObject("pageInfo", pageInfo);
        return mv;
    }

    @RequestMapping("hc/addClient")
    public ModelAndView addClient(){
        ModelAndView mv = new ModelAndView("hc/addClient");
        List<Result> resultList =  resultServiceImpl.getResultList();
        System.out.println(resultList);
        List<Way> wayList = wayServiceImpl.getWayList();
        mv.addObject("resultList",resultList);
        mv.addObject("wayList",wayList);
        return mv;
    }

    @RequestMapping("hc/addClientSuccess")
    public ModelAndView addClient(Client client){
        System.out.println(client);
        clientServiceImpl.addClient(client);
        return new ModelAndView("redirect:/hc/client");
    }

    @RequestMapping("hc/change3")
    public ModelAndView change3(Client client){
        ModelAndView mv = new ModelAndView("hc/updateClient");
        mv.addObject("client",client);
        return mv;
    }

    @RequestMapping("hc/updateClient")
    public String updateClient(Client client, Trainee trainee){
        System.out.println(client);
        clientServiceImpl.updateClient(client);

        if(client.getClistatus() == 2){
            trainee.setTraid(client.getCliid());
            trainee.setTname(client.getCliname());
            trainee.setTrasex(client.getClisex());
            trainee.setTraschool(client.getClischool());
            trainee.setTratel(client.getClitel());
            trainee.setTraqq(client.getCliqq());
            System.out.println(trainee);
            clientServiceImpl.addTrainee(trainee);
            return "redirect:/hc/client";
        }
        return "redirect:/hc/client";
    }
}
