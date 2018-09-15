package com.crm.handler.notice;

import com.crm.pojo.notice.Crm_Notice;
import com.crm.pojo.system.AdminUser;
import com.crm.service.notice.Crm_NoticeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.http.HttpRequest;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/classManage/")
public class Crm_NoticeHandler {

    @Autowired
    private Crm_NoticeService crm_NoticeServiceImpl;

    @RequestMapping("crm_notice")
    public ModelAndView crm_notice(@Param("pageNum") String pageNum,
                                   @Param("ntitle") String ntitle,
                                   @Param("ncontent") String ncontent,
                                   @Param("npublisher") String npublisher){
        Crm_Notice crm_Notice = new Crm_Notice();
        ModelAndView mv = new ModelAndView("classManage/crmnotice");
        int cpage = 1;
        if(ntitle!=null && ntitle!=""){
            crm_Notice.setNtitle("%"+ntitle+"%");
            mv.addObject("ntitle",ntitle);
        }else {
            crm_Notice.setNtitle(ntitle);
        }

        if(ncontent!=null && ncontent!=""){
            crm_Notice.setNcontent("%"+ncontent+"%");
            mv.addObject("ncontent",ncontent);
        }else {
            crm_Notice.setNcontent(ncontent);
        }

        if(npublisher!=null && npublisher!=""){
            crm_Notice.setNpublisher("%"+npublisher+"%");
            mv.addObject("npublisher",npublisher);
        }else {
            crm_Notice.setNpublisher(npublisher);
        }

        if(pageNum != null && pageNum!=""){
            cpage = Integer.parseInt(pageNum);
        }
        PageHelper.startPage(cpage,4);
        List<Crm_Notice> list=crm_NoticeServiceImpl.getNoticeList(crm_Notice);
        PageInfo<Crm_Notice> pageInfo = new PageInfo<Crm_Notice>(list);
        mv.addObject("pageInfo",pageInfo);
        return mv;
    }

    @RequestMapping("delNotice")
    public ModelAndView delNotice(@Param("pageNum") String pageNum,
                            @Param("ntitle") String ntitle,
                            @Param("ncontent") String ncontent,
                            @Param("npublisher") String npublisher,
                            @Param("nid") Integer nid){
        crm_NoticeServiceImpl.delNotice(nid);
        ModelAndView mv = crm_notice(pageNum,ntitle,ncontent,npublisher);
        return mv;
    }

    @RequestMapping("addNotice")
    public ModelAndView addNotice(@Param("ntitle") String ntitle,
                                  @Param("ncontent") String ncontent, HttpServletRequest request){
        Crm_Notice crm_notice = new Crm_Notice();
        crm_notice.setNtitle(ntitle);
        crm_notice.setNcontent(ncontent);
        String name=((AdminUser)request.getSession().getAttribute("adminuser")).getAuname();
        crm_notice.setNpublisher(name);
        crm_NoticeServiceImpl.addNotice(crm_notice);
        return crm_notice(null,null,null,null);
    }

    @RequestMapping("look_notice")
    public ModelAndView look_notice(@Param("nid") Integer nid){
        ModelAndView mv = new ModelAndView("classManage/noticeDetail");
        Crm_Notice notice = crm_NoticeServiceImpl.getNoticeById(nid);
        mv.addObject("notice",notice);
        return mv;
    }

}
