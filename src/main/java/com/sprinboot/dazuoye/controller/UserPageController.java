package com.sprinboot.dazuoye.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserPageController {

    @RequestMapping("/index")
    public String index(){
        return "user/index";
    }
//    跳转至游戏商城
    @RequestMapping("/profile")
    public String profile() {
        return "profile";
    }

    //    跳转至论坛
    @RequestMapping("/about")
    public String about() {
        return "about";
    }

    //    跳转至详细论坛
    @RequestMapping("/community")
    public String community() {
        return "community";
    }
}
