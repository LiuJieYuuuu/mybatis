package com.example.springbootweb.Controller;


import com.example.springbootweb.Exception.UserNotExistException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.Map;

@Controller
public class HelloController {

    @ResponseBody
    @RequestMapping("/hello")
    public String hello(@RequestParam("user") String user){
        if(user.equals("aaa"))
            throw new UserNotExistException();
        return "hello world!";
    }

    @RequestMapping("/success")
    public String success(Map<String,Object> map){
        map.put("hello","<h2>你好</h2>");
        map.put("users", Arrays.asList("zhasan","lisi","wulaowu1"));
        return "success";
    }
}