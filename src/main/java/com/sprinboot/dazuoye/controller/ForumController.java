package com.sprinboot.dazuoye.controller;


import com.sprinboot.dazuoye.pojo.Forum;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.service.ForumServices;
import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ForumController {

    @Resource
    private GameServices gameServices;
    @Resource
    private ForumServices forumServices;


    //    论坛首页查询所有游戏
    @RequestMapping("/about")
    public String about(Model model) throws Exception {
        Game game = new Game();
        List<Game> games = gameServices.getAllGame(game);
        model.addAttribute("gamesinfo", games);
        return "about";
    }

    //展示各游戏论坛帖子
    @RequestMapping("/showforum")
    public String showForum(@RequestParam int game_id, Model model) throws Exception {
        List<Forum> forumList = forumServices.findForumByGameId(game_id);
        List<Game> gameList=gameServices.selectGameById(game_id);
        if (forumList != null) {
            model.addAttribute("forumList", forumList);
        }
        return "community";
    }


    //查看帖子具体内容
    @RequestMapping(value = "/findcontent")
    public String findContent(@RequestParam int id, Model model) throws Exception {
        Forum forum = forumServices.findForumByForumId(id);
        model.addAttribute("forum", forum);
        return "forum_info";
    }

}
