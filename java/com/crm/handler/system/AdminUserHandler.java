package com.crm.handler.system;


import com.crm.pojo.system.AdminUser;
import com.crm.pojo.system.Role;
import com.crm.pojo.system.Templete;
import com.crm.service.system.AdminUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/")
public class AdminUserHandler {
    @Autowired
    private AdminUserService adminUserServiceImpl;

    /**
     * 登录判断及显示其模块
     * @param adminUser
     * @param request
     * @return
     */
    @RequestMapping("login")
    public ModelAndView login(AdminUser adminUser, HttpServletRequest request){
        Object o=request.getSession().getAttribute("adminuser");
        if(o!=null){
            ModelAndView mv=new ModelAndView("redirect:/main.jsp");
            AdminUser au= (AdminUser) o;
            List<String> list= Arrays.asList(au.getAuper().split(","));
            List<Integer> l=new ArrayList<Integer>();
            for(String a:list){
                l.add(Integer.valueOf(a));
            }
            List<Templete> list1=adminUserServiceImpl.getTempletes(l);
            request.getSession().setAttribute("k",1);
            request.getSession().setAttribute("templete",list1 );
            return mv;
        }else {
            AdminUser au = adminUserServiceImpl.getAdminUser(adminUser);
            if (au != null) {
                ModelAndView mv = new ModelAndView("redirect:/main.jsp");
                request.getSession().setAttribute("adminuser", au);
                List<String> list = Arrays.asList(au.getAuper().split(","));
                List<Integer> l = new ArrayList<Integer>();
                for (String a : list) {
                    l.add(Integer.valueOf(a));
                }
                List<Templete> list1 = adminUserServiceImpl.getTempletes(l);
                request.getSession().setAttribute("templete", list1);
                return mv;
            } else {
                ModelAndView mv = new ModelAndView("redirect:/login.jsp");
                return mv;
            }
        }
    }

    /**
     * 显示所有的角色
     * @param request
     * @return
     */
    @RequestMapping("user/allRoles")
    public ModelAndView allUsers(@RequestParam(value = "cpage",defaultValue = "1",required = true) String cpage,HttpServletRequest request){
        ModelAndView mv=new ModelAndView("redirect:/system/imgtable.jsp");
        if(cpage==null || cpage.isEmpty())
            cpage="1";
        int pageNum=Integer.parseInt(cpage);
        PageHelper.startPage(pageNum,5);
        List<Role> list=adminUserServiceImpl.getRoles();
        PageInfo<Role> pageInfo=new PageInfo<Role>(list);
        request.getSession().setAttribute("pageInfo",pageInfo);
        return mv;
    }

    /**
     * 添加新的角色并赋予权限
     * @return
     */
    @RequestMapping("user/Tempform")
    public ModelAndView addRoleBefore(){
        ModelAndView mv=new ModelAndView("system/form");
        List<Templete> list=adminUserServiceImpl.getAllTempletes();
        mv.addObject("list",list);
        return mv;
    }
    @RequestMapping("user/TempSuccess")
    public ModelAndView addRoleAfter(@RequestParam("rname") String rname,
                                     @RequestParam("auper") String auper){
        Role role=new Role();
        role.setRname(rname);
        role.setAuper(auper);
        adminUserServiceImpl.addRole(role);
        HttpServletRequest request=
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return allUsers(null,request);
    }

    /**
     * 设置角色是否可以使用
     * @param rid
     * @param rstate
     * @return
     */
    @RequestMapping("user/updateState")
    public ModelAndView updateState(@RequestParam("rid") String rid,
                                    @RequestParam("rstate") String rstate,
                                    @RequestParam("cpage")String cpage){
        HttpServletRequest request=
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        AdminUser adminUser=(AdminUser)request.getSession().getAttribute("adminuser");
        adminUserServiceImpl.updateState(Integer.parseInt(rid),Integer.parseInt(rstate));
        if(adminUser.getRoleid()==Integer.parseInt(rid) && rstate.equals("2")) {
            request.getSession().setAttribute("s",1);
            request.getSession().removeAttribute("adminuser");
            return new ModelAndView("redirect:/login");
        }else {
            return allUsers(cpage,request);
        }
    }

    /**
     * 修改角色的权限
     * @param rid
     * @return
     */
    @RequestMapping("user/updateRole")
    public ModelAndView updateAdminUser(@RequestParam("rid")Integer rid){
        ModelAndView mv=new ModelAndView("system/update");
        Role role=adminUserServiceImpl.getRole(rid);
        List<Templete> list=adminUserServiceImpl.getAllTempletes();
        mv.addObject("list",list);
        mv.addObject("role",role);
        return mv;
    }
    @RequestMapping("user/updateSuccess")
    public ModelAndView updateUser(@RequestParam("rid") String rid,
                                    @RequestParam("rname") String rname,
                                   @RequestParam("auper") String auper){
        HttpServletRequest request=
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        AdminUser au=(AdminUser)request.getSession().getAttribute("adminuser");
        Role role=new Role();
        role.setRoleid(Integer.parseInt(rid));
        role.setRname(rname);
        role.setAuper(auper);
        adminUserServiceImpl.updateRole(role);
        if(au.getRoleid()==Integer.parseInt(rid)){
            request.getSession().removeAttribute("templete");
            AdminUser a=adminUserServiceImpl.getAdmingUser(au.getAuid());
            request.getSession().setAttribute("adminuser",a);
            return login(null,request);
        }else {
            return allUsers(null, request);
        }
    }

    /**
     * 显示所有用户
     * @param cpage
     * @return
     */
    @RequestMapping("user/showAdminUser")
    public ModelAndView getAllAdminUsers(@Param("cpage") String cpage){
        ModelAndView mv=new ModelAndView("system/alluser");
        int pageNum=1;
        if(cpage!=null && !cpage.isEmpty())
            pageNum=Integer.parseInt(cpage);
        PageHelper.startPage(pageNum,5);
        List<AdminUser> list=adminUserServiceImpl.getAllAdminUsers();
        List<Role> roles=adminUserServiceImpl.getRoles();
        PageInfo<AdminUser> pageInfo=new PageInfo<AdminUser>(list);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("roles",roles);
        return mv;
    }

    /**
     * 删除用户
     * @param cpage
     * @param auid
     * @return
     */
    @RequestMapping("user/deleteUser")
    public ModelAndView deleteAdminUser(@Param("cpage")String cpage,@Param("auid")String auid){
        adminUserServiceImpl.deleteUser(Integer.parseInt(auid));
        return getAllAdminUsers(cpage);
    }

    /**
     * 修改用户信息
     * @param auid
     * @return
     */
    @RequestMapping("user/updateUserAfter")
    public ModelAndView updateUserbefore(@Param("auid")String auid){
        ModelAndView mv=new ModelAndView("system/updateUser");
        AdminUser adminUser=adminUserServiceImpl.getAdmingUser(Integer.parseInt(auid));
        List<Role> roles=adminUserServiceImpl.getRoles();
        mv.addObject("roles",roles);
        mv.addObject("user",adminUser);
        return mv;
    }
    @RequestMapping("user/updateUser")
    public ModelAndView updateUser(AdminUser adminUser){
        adminUserServiceImpl.updateUser(adminUser);
        return getAllAdminUsers("1");
    }

    /**
     * 添加用户的信息
     * @return
     */
    @RequestMapping("user/addUserbefore")
    public ModelAndView addUserBefore(){
        ModelAndView mv=new ModelAndView("system/addAdminUser");
        List<Role> list=adminUserServiceImpl.getRoles();
        mv.addObject("list",list);
        return mv;
    }
    @RequestMapping("user/addUserSuccess")
    public ModelAndView addUserAfter(AdminUser adminUser){
        HttpServletRequest request=
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        adminUserServiceImpl.addAdminUser(adminUser);
        return getAllAdminUsers("1");
    }


    /**
     * 结束
     */
}
