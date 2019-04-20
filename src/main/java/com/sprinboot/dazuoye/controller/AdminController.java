package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.Forum;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Resource
    private GameServices gameServices;
    @Resource
    private UserServices userServices;
    @Resource
    private ChargeServices chargeServices;
    @Resource
    private ShopCarServices shopCarServices;
    @Resource
    private CommentServices commentServices;
    @Resource
    private UserinfoServices userinfoServices;
    @Resource
    private ForumServices forumServices;
    @Resource
    private AdminServices adminServices;


    @RequestMapping("/index")
    public String index() {
        return "admin/index";
    }

    //    查询所有游戏并分页(跳转至游戏商城)
    @RequestMapping("/profile")
    public String profile(@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model, HttpServletRequest request) throws Exception {
        String username = ((User) request.getSession().getAttribute("usersession")).getUsername();
        model.addAttribute("gameinfo", gameServices.findByPage(currentPage, username));
        return "admin/profile";
    }

    //    跳转至游戏具体页面
    @RequestMapping("/game_info")
    public String game_info(@RequestParam Integer id, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model) throws Exception {
        List<Game> games = gameServices.selectGameById(id);
        //List<Comment> comments = commentServices.findByPage(id,currentPage);
        for (Game game : games) {
            model.addAttribute("gameinfoByid", game);
        }
        model.addAttribute("comment", commentServices.findByPage(currentPage, id));
//        System.out.println("*****************************************"+commentServices.findByPage(currentPage,id));
        return "admin/game_info";
    }

    //    论坛首页查询所有游戏
    @RequestMapping("/about")
    public String about(Model model) throws Exception {
        Game game = new Game();
        List<Game> games = gameServices.getAllGame(game);
        model.addAttribute("gamesinfo", games);
        return "admin/about";
    }

    //展示各游戏论坛帖子
    @RequestMapping("/showforum")
    public String showForum(@RequestParam int game_id, Model model) throws Exception {
        List<Forum> forumList = forumServices.findForumByGameId(game_id);
        if (forumList != null) {
            model.addAttribute("forumList", forumList);
        }
        return "admin/community";
    }


    //查看帖子具体内容
    @RequestMapping(value = "/findcontent")
    public String findContent(@RequestParam int id,Model model)throws Exception{
        Forum forum = forumServices.findForumByForumId(id);
        model.addAttribute("forum",forum);
        return "admin/forum_info";
    }

    //修改游戏价格
    @RequestMapping("/modifyGamePrice")
    @ResponseBody
    public String modifyGamePrice(@RequestParam int save_price,@RequestParam int id) throws Exception{
        JSONObject json = new JSONObject();
        if (adminServices.modifyGamePrice(save_price,id)){
            json.put("msg","success");
        }else {
            json.put("msg","error");
        }
        return json.toJSONString();
    }

    //恢复游戏价格
    @RequestMapping("/modifyGamePriceBack")
    @ResponseBody
    public String modifyGamePriceBack(@RequestParam int id) throws Exception{
        JSONObject json = new JSONObject();
        if (adminServices.modifyGamePriceBack(id)){
            json.put("msg","success");
        }else {
            json.put("msg","error");
        }
        return json.toJSONString();
    }

    //查询游戏是否打折
    @RequestMapping("/checkStatu")
    @ResponseBody
    public String checkStatus(@RequestParam int id) throws Exception{
        JSONObject json = new JSONObject();
        if (adminServices.checkStatu(id)){
            json.put("msg","yes");
        }   else {
            json.put("msg","no");
        }
        return json.toJSONString();
    }

}
