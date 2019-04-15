package com.sprinboot.dazuoye.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class PageController {

    //    跳转至主页
    @RequestMapping("/index")
    public String index() {
        return "index";
    }





    //    跳转至详细论坛
    @RequestMapping("/community")
    public String community() {
        return "community";
    }

    //    跳转至注册页面
    @RequestMapping("/register")
    public String register() {
        return "register";
    }

//    跳转至未登录页面
    @RequestMapping("/nologin")
    public String nologin(){
        return "nologin";
    }


    //注销当前账户
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session!=null){
            session.invalidate();
        }
        return "redirect:index";
    }

}
