package com.crm.handler.top;

import com.crm.pojo.system.AdminUser;
import com.crm.pojo.top.*;
import com.crm.service.top.RClientService;
import com.crm.service.top.RCrm_NoticeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class Crm_HomePage {
    @Autowired
    private RCrm_NoticeService crm_noticeServiceimpl;
    @Autowired
    private RClientService clientServiceimpl;
    @RequestMapping("HomePage")
    public ModelAndView HomePage(HttpServletRequest request){
        HomePage homePage = new HomePage();
        //公告
        ModelAndView mv = new ModelAndView("default");
        List<Crm_Notice> list = crm_noticeServiceimpl.selCrm_noticeS();
        List<String> list1 = new ArrayList<>();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        for (int i = 0 ; i < list.size() ; i++){
            String time = simpleDateFormat.format(list.get(i).getNtime());
            list1.add(time);
        }
        homePage.setNoticeList(list);
        homePage.setnTimeList(list1);
        //信息统计
        String username=((AdminUser)request.getSession().getAttribute("adminuser")).getAuname();
        int clientFollUp = clientServiceimpl.selClientS(username);
        homePage.setClientFollUp(clientFollUp);
        int clientW = clientServiceimpl.selClientW(username);
        homePage.setClientW(clientW);
        int clientY = clientServiceimpl.selClientY(username);
        homePage.setClientY(clientY);
        double i = clientY*1.0/(clientY+clientW)*100;
        String clientL = String.format("%.2f",i) + "%";
        homePage.setClientL(clientL);
        //饼图
        List<Cookies> cookiesList = clientServiceimpl.selClientCook(username);
        homePage.setCookiesList(cookiesList);
        //已办事项

        PageHelper.startPage(1,3);
        List<Client> clientOkList =  clientServiceimpl.selClientOk(username);
        PageInfo pageInfoOk = new PageInfo(clientOkList);
        homePage.setPageInfoOk(pageInfoOk);
        //待办事项
        PageHelper.startPage(1,3);
        List<Client> clientBadList =  clientServiceimpl.selClientBad(username);
        PageInfo pageInfoBad = new PageInfo<>(clientBadList);
        homePage.setPageInfoBad(pageInfoBad);
        //System.out.println(clientBadList);
        mv.addObject("homePage",homePage);
        return mv;
    }
    @RequestMapping("homePagePaging")
    @ResponseBody
    public List<Client> homePagePaging(String x,String cPage,HttpServletRequest request){
        String username=((AdminUser)request.getSession().getAttribute("adminuser")).getAuname();
        List<Client> list = new ArrayList<>();
        if(x.equals("y")){
            PageHelper.startPage(Integer.parseInt(cPage),3);
            List<Client> listY = clientServiceimpl.selClientOk(username);
            list = new PageInfo<>(listY).getList();
            return list;
        }else{
            PageHelper.startPage(Integer.parseInt(cPage),3);
            List<Client> listW = clientServiceimpl.selClientBad(username);
            list = new PageInfo<>(listW).getList();
            return list;
        }
    }


}
