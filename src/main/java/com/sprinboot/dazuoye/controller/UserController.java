package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserServices userServices;

    @RequestMapping("/login")
    public String tologin(){
        return "login";
    }

    @RequestMapping("/dologin")
    public String dologin(@RequestParam String username, @RequestParam String password, Model model, HttpSession httpSession) throws Exception {
     User user=userServices.getUser(username,password);
     if (user!=null){
         httpSession.setAttribute("usersession",user);
         return "index";
     }else {
         model.addAttribute("error","账号或密码错误！");
         return "login";
     }
    }

}
