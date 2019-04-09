package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;


@Controller
public class ShopCarController {
    @Resource
    private ShopCarServices shopCarServices;

    //加入购物车
    @RequestMapping(value = "/addshopcar")
    @ResponseBody
    public String addShopCar(ShopCar shopCar, HttpServletRequest request) throws Exception {
        JSONObject json = new JSONObject();
        String username = ((User)request.getSession().getAttribute("usersession")).getUsername();
        shopCar.setDate(new Date());
        shopCar.setUsername(username);
        shopCar.setStatus(0);
        if (shopCarServices.addShopCar(shopCar)){
            json.put("msg","success");
        }else {
            json.put("msg","error");
        }
        return json.toJSONString();
    }

    //付款购买
    @RequestMapping(value = "/buygame")
    public  String buyGame(@RequestParam String game_name)throws Exception{

        return "";
    }
}