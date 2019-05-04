package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.CommentServices;
import com.sprinboot.dazuoye.service.GameServices;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.UUID;

@Controller
public class GameController {
    @Resource
    private GameServices gameServices;
    @Resource
    private CommentServices commentServices;
    @Resource
    private ShopCarServices shopCarServices;

    //    查询所有游戏并分页
    @RequestMapping("/profile")
    public String profile(@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, @RequestParam(value = "form_content", defaultValue = "", required = false) String form_content, Model model, HttpServletRequest request) throws Exception {
        String username;
        if (request.getSession().getAttribute("usersession") == null) {
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            username = uuid;
        } else {
            username = ((User) request.getSession().getAttribute("usersession")).getUsername();
        }
        model.addAttribute("gameinfo", gameServices.findByPage(currentPage, username));
        if (form_content != null) {
            List<Game> gamelist = gameServices.selectGameByFormContent(form_content);

        }

        return "profile";
    }

    //    跳转至游戏具体页面
    @RequestMapping("/game_info")
    public String game_info(@RequestParam Integer id, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model) throws Exception {
//        查看游戏详情信息
        List<Game> games = gameServices.selectGameById(id);
        for (Game game : games) {
            model.addAttribute("gameinfoByid", game);
        }
//        列出所有评论
        model.addAttribute("comment", commentServices.findByPage(currentPage, id));

        return "game_info";
    }

    //查询游戏
    @RequestMapping(value = "/profile/search")
    @ResponseBody
    public List<Game> search(@RequestParam String form_content, Model model) throws Exception {
        JSONObject jsonObject = new JSONObject();
        List<Game> gamelist = gameServices.selectGameByFormContent(form_content);
        if (!gamelist.isEmpty()) {
            model.addAttribute("gamelist", gamelist);
            jsonObject.put("msg", "success");
        } else {
            jsonObject.put("msg", "error");
        }
        return gamelist;
    }


}
