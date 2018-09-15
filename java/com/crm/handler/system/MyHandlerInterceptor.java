package com.crm.handler.system;

import com.crm.pojo.system.AdminUser;
import com.crm.pojo.system.Logj;
import com.crm.service.system.LogjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyHandlerInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //System.out.println("prehandle");
        ServletContext servletContext=request.getServletContext();
        String url=request.getServletPath();
        String[] uri=servletContext.getInitParameter("login").split(";");
        for(String u:uri){
            if(url.contains(u))
                return true;
        }
        AdminUser adminUser= (AdminUser) request.getSession().getAttribute("adminuser");
        if(adminUser!=null) {
            return true;
        }else{
            response.getWriter().print("<script>window.parent.location.replace('/login.jsp');</script>");
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
