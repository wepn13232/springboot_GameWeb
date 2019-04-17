package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.GameServices;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class GameController {
    @Resource
    private GameServices gameServices;
    @Resource
    private CommentDao commentDao;
    @Resource
    private ShopCarServices shopCarServices;

    //    查询所有游戏并分页
    @RequestMapping("/profile")
    public String profile(@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model, HttpServletRequest request) throws Exception {
        String username;
        if (request.getSession().getAttribute("usersession") == null) {
            username = "zhaocaiqibilipalade";
        } else {
            username = ((User) request.getSession().getAttribute("usersession")).getUsername();
        }
        model.addAttribute("gameinfo", gameServices.findByPage(currentPage, username));
        return "profile";
    }

    //    跳转至游戏具体页面
    @RequestMapping("/game_info")
    public String game_info(@RequestParam Integer id, Model model) throws Exception {
//        查看游戏详情信息
        List<Game> games = gameServices.selectGameById(id);
        for (Game game : games) {
            model.addAttribute("gameinfoByid", game);
        }

//        列出所有评论
        List<Comment> comments = commentDao.getAllCommentById(id);

        model.addAttribute("comment", comments);

        return "game_info";
    }


}
