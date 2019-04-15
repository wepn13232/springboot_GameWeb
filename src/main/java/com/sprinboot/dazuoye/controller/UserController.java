package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
    public String dologin(@RequestParam String username, @RequestParam String password, Model model, HttpServletRequest request) throws Exception {
        User user = userServices.getUser(username, password);
        JSONObject json = new JSONObject();

        if (user != null) {
            request.getSession().setAttribute("usersession", user);
            json.put("user", user);
            json.put("lg", "success");
        } else {
//            model.addAttribute("error", "账号或密码错误！");
            json.put("lg", "error");
        }
        return json.toJSONString();
    }

    //    注册用户
    @RequestMapping(value = "/doregister")
    @ResponseBody
    public String doregister(String userName, String password) throws Exception {
        JSONObject jsonObject = new JSONObject();
        if (userServices.addUser(userName, password) > 0) {
            jsonObject.put("useradd", "1");
        } else {
            jsonObject.put("useradd", "0");
        }
        return jsonObject.toJSONString();
    }

    //注销当前账户
    @RequestMapping("/logout")
    @ResponseBody
    public String logout(HttpServletRequest request) {
        JSONObject jsonObject=new JSONObject();
        HttpSession session = request.getSession();
        if (session!=null){
            session.invalidate();
            jsonObject.put("msg","success");
        }else {
            jsonObject.put("msg","error");
        }
        return jsonObject.toJSONString();
    }

}
