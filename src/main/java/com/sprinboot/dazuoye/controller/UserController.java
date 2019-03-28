package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserServices userServices;

    @RequestMapping("/login")
    public String tologin() {
        return "login";
    }

    @RequestMapping("/dologin")
    @ResponseBody
    public String dologin(@RequestParam String username, @RequestParam String password, Model model, HttpSession httpSession) throws Exception {
        User user = userServices.getUser(username, password);
        JSONObject json = new JSONObject();

        if (user != null) {
            httpSession.setAttribute("usersession", user);
            json.put("lg", "success");
        } else {
//            model.addAttribute("error", "账号或密码错误！");
            json.put("lg", "error");
        }
        return json.toJSONString();
    }

    //    注册用户
    @RequestMapping("/doregister")
    public String doregister(@RequestParam String username, @RequestParam String password) throws Exception {
        userServices.addUser(username, password);
        return "redirect:/login";
    }

}
