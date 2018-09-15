package com.crm.aop;

import com.crm.handler.system.LogjHandler;
import com.crm.impl.system.LogjServiceImpl;
import com.crm.pojo.system.AdminUser;
import com.crm.pojo.system.Logj;
import com.crm.service.system.LogjService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;

@Service
@Aspect
public class AspectAop {
    @Resource
    private LogjService logjServiceimpl;

//    @Before("execution(* com.crm.impl.*.*.*(..))")
//    public void before(JoinPoint joinPoint) {
//        String methodName = joinPoint.getSignature().getName();
//        System.out.println("method:  " + methodName + "  begins");
//
//    }
//
//    @After("execution(* com.crm.handler.*.*.*(..))")
//    public void After(JoinPoint joinPoint) {
//        String methodName = joinPoint.getSignature().getName();
//        System.out.println("method:  " + methodName + "  ends");
//    }

    /**
     * 加个returning属性，该属性值与方法参数名称一致
     * @param joinPoint
     * @param result
     */
//    @AfterReturning(value="execution(* com.crm.handler.*.*.*(..))",returning="result")
//    public void AfterReturning(JoinPoint joinPoint, Object result ){
//        String methodName=joinPoint.getSignature().getName();
//        System.out.println("method:  "+methodName+"  return result:"+result);
//    }

    /**
     * 该方法定义了Exception最高异常级别，也可以定义具体异常
     * @param joinPoint
     * @param exception
     */
    @AfterThrowing(value="execution(* com.crm.impl.*.*.*(..))",throwing="exception")
    public void afterThrowing(JoinPoint joinPoint, Exception exception){
        String methodName=joinPoint.getSignature().getName();
        System.out.println("method:  "+methodName+"抛出exception:"+exception);
    }

    /**
     * 环绕通知需带着ProceedingJoinPoint参数
     * ProceedingJoinPoint参数决定是否执行目标方法
     * 必须有返回值
     * @param pjp
     * @return
     */
    @Around(value = "execution(* com.crm.impl.*.*.*(..))")
    public Object around(ProceedingJoinPoint pjp) {
        String methodName = pjp.getSignature().getName();
        Object result = null;
        try {
            // before
            //System.out.println("环绕通知method:  " + methodName + "  begins开启");
            // AfterReturning执行目标方法

            result = pjp.proceed();
            if(methodName.equals("addLogj")){
                return result;
            }else {
                String incident = "";
                if (methodName.contains("updateEtemp")) {
                    incident = "修改子模块";
                } else if (methodName.contains("addFTemplete")) {
                    incident = "添加父模块";
                }else if (methodName.contains("addEtemp")) {
                    incident = "添加子模块";
                }else if (methodName.contains("updateFtemp")) {
                    incident = "修改父模块";
                } else if(methodName.contains("updateUserTemp")){
                    incident="修改权限";
                } else if(methodName.contains("updateState")){
                    incident="修改登录权限";
                }
                HttpServletRequest request =
                        ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
                AdminUser adminUser = (AdminUser) request.getSession().getAttribute("adminuser");
                Integer auid = adminUser.getAuid();
                //获取本机ip地址
                InetAddress address = null;
                try {
                    address = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                String ip = address.getHostAddress();
                Logj logj = new Logj();
                logj.setAuid(auid);
                logj.setLip(ip);
                logj.setIncident(incident);
                if (!incident.isEmpty())
                    logjServiceimpl.addLogj(logj);
                return result;
            }
            //System.out.println("本机ip：" + ip);
            //System.out.println("method:  " + methodName);
        } catch (Throwable e) {
            // AfterThrowing
            //System.out.println("method:  " + methodName + "抛出 exception:" + e);
            return result;
        }
        // After
        //System.out.println("环绕通知method:  " + methodName + "  ends结束");
    }
}
