package com.sprinboot.dazuoye.controller;


import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ForumController {

    @Resource
    private GameServices gameServices;


    //    论坛首页查询所有游戏
    @RequestMapping("/about")
    public String about(Model model) throws Exception {
        Game game=new Game();
        List<Game> games=gameServices.getAllGame(game);
        model.addAttribute("gamesinfo",games);
        return "about";
    }

}
