package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserServices userServices;

//查询所有用户
    @RequestMapping("/allUser")
    public String allUser(Model model) {
        User user = new User();
        List<User> users= userServices.getAllUser(user);
        model.addAttribute("userinfo",users);
        return "index";
    }
}
