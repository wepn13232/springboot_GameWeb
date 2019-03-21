package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

//    删除用户
    @RequestMapping("/delectUser")
    public String delectUser(@RequestParam Integer id){
        userServices.delectUser(id);
        return "index";
    }

//    增加用户
    @RequestMapping("/addUser")
    public String addUser(@RequestParam String username,@RequestParam String password){
        userServices.insertUser(username,password);
        return "index";
    }

//    修改密码
    @RequestMapping("/updatePwd")
    public String updatePwd(@RequestParam String username,@RequestParam String password){
        userServices.updatePassword(username,password);
        return "index";

    }
}
