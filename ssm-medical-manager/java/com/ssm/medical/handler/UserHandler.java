package com.ssm.medical.handler;

import com.ssm.medical.pojo.AdminUser;
import com.ssm.medical.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/")
public class UserHandler {
    @Autowired
    private UserService userServiceimpl;

    @RequestMapping("login")
    public ModelAndView login(AdminUser adminUser, HttpServletRequest request){
        AdminUser au=userServiceimpl.loginUser(adminUser);
        if (au!=null){
            ModelAndView mv=new ModelAndView("redirect:/manager.jsp");
            request.getSession().setAttribute("adminuser",au);
            return mv;
        }else{
            return new ModelAndView("redirect:/login.jsp");
        }
    }

    @RequestMapping("system/useradd")
    public ModelAndView UserAdd(AdminUser adminUser){
        userServiceimpl.useradd(adminUser);
        return getUsers();
    }

    @RequestMapping("system/getUsers")
    public ModelAndView getUsers(){
        ModelAndView mv=new ModelAndView("system/user_list");
        List<AdminUser> list=userServiceimpl.getUsers();
        mv.addObject("list",list);
        return mv;
    }

    @RequestMapping("system/deleteUser")
    public ModelAndView deleteUser(@RequestParam("auid")Integer auid){
        userServiceimpl.deleteUser(auid);
        return getUsers();
    }

    @RequestMapping("system/updatePwd")
    public String  updatePwd(@RequestParam("old_pwd") String old_pwd,
                             @RequestParam("new_pwd") String new_pwd,
                             HttpServletRequest request){
        Integer auid=((AdminUser)request.getSession().getAttribute("adminuser")).getAuid();
        if(!userServiceimpl.updatePwd(auid,old_pwd,new_pwd)) {
            request.getSession().setAttribute("error","error");
            return "redirect:/system/user_password.jsp";
        }else {
            return "redirect:/login.jsp";
        }
    }
}
