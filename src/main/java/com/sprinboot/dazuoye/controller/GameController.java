package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
public class GameController {
    @Resource
    private GameServices gameServices;


    //    查询所有游戏并分页
    @RequestMapping("/profile")
    public String profile(@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model) throws Exception {
        model.addAttribute("gameinfo", gameServices.findByPage(currentPage));
        return "profile";
    }
}
