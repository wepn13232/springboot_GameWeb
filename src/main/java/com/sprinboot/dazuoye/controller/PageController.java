package com.sprinboot.dazuoye.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

//    跳转至主页
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/profile")
    public String profile(){
        return "profile";
    }

//    跳转至购物指南
    @RequestMapping("/about")
    public String about(){
        return "about";
    }

//    跳转至详细论坛
    @RequestMapping("/community")
    public String community(){
        return "community";
    }
}
