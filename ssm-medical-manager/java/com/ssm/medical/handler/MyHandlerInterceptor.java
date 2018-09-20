package com.ssm.medical.handler;

import com.ssm.medical.pojo.AdminUser;
import org.omg.PortableInterceptor.Interceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyHandlerInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        String [] uri=request.getServletContext().getInitParameter("login").split(";");
        String url=request.getServletPath();
        for(String u:uri){
            if(url.contains(u))
                return true;
        }
        AdminUser au=(AdminUser)request.getSession().getAttribute("adminuser");
        if(au==null){
            response.sendRedirect("/login.jsp");
            return false;
        }else{
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
