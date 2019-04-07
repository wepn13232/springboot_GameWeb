package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.service.ChargeServices;
import com.sprinboot.dazuoye.service.GameServices;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserPageController {
    @Resource
    private GameServices gameServices;
    @Resource
    private UserServices userServices;
    @Resource
    private ChargeServices chargeServices;


    @RequestMapping("/index")
    public String index() {
        return "user/index";
    }

    //    查询所有游戏并分页(跳转至游戏商城)
    @RequestMapping("/profile")
    public String profile(@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage, Model model) throws Exception {
        model.addAttribute("gameinfo", gameServices.findByPage(currentPage));
        return "user/profile";
    }

    //    跳转至游戏具体页面
    @RequestMapping("/game_info")
    public String game_info(@RequestParam Integer id, Model model) throws Exception {
        List<Game> games = gameServices.selectGameById(id);
        for (Game game : games) {
            model.addAttribute("gameinfoByid", game);
        }
        return "user/game_info";
    }

    //    跳转至论坛
    @RequestMapping("/about")
    public String about() {
        return "user/about";
    }

    //    跳转至详细论坛
    @RequestMapping("/community")
    public String community() {
        return "user/community";
    }

    //    跳转至充值页面
    @RequestMapping("/charge")
    public String charge(@RequestParam String username,Model model) throws Exception {
       int cash= chargeServices.checkCashLeft(username);
        model.addAttribute("cashleft",cash);
        return "user/charge";
    }


    //    跳转至购物车、订单界面
    @RequestMapping("/orderList")
    public String orderList() {
        return "user/orderList";
    }




    //账户充值
    @RequestMapping("/userCharge")
    @ResponseBody
    public String userCharge(@RequestParam int cashCharge, @RequestParam String username) throws Exception {
        JSONObject jsonObject = new JSONObject();
        if (userServices.chargeMoney(cashCharge, username) >= 1) {
            jsonObject.put("charge", "success");
        } else {
            jsonObject.put("charge", "error");
        }
        return jsonObject.toJSONString();
    }

}
