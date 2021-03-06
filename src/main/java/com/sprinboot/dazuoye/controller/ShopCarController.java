package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.ChargeServices;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/user")
public class ShopCarController {
    @Resource
    private ShopCarServices shopCarServices;
    @Resource
    private ChargeServices chargeServices;

    //加入购物车
    @RequestMapping(value = "/addshopcar")
    @ResponseBody
    public String addShopCar(ShopCar shopCar, HttpServletRequest request) throws Exception {
        JSONObject json = new JSONObject();
        String username = ((User)request.getSession().getAttribute("usersession")).getUsername();
        Date date = new Date();
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        shopCar.setDate(dateformat.format(date));
        shopCar.setUsername(username);
        shopCar.setStatus(0);
        if (shopCarServices.addShopCar(shopCar)){
            json.put("msg","success");
        }else {
            json.put("msg","error");
        }
        return json.toJSONString();
    }

    //验证密码支付
    @RequestMapping(value = "payok")
    @ResponseBody
    public String payPassword(@RequestParam String paypassword,HttpServletRequest request){
        String password = ((User)request.getSession().getAttribute("usersession")).getPassword();
        JSONObject json = new JSONObject();
        if (password.equals(paypassword)){
            json.put("msg", "success");
        }else {
            json.put("msg", "error");
        }
        return json.toJSONString();
    }

    //付款购买
    @RequestMapping(value = "/buygame")
    @ResponseBody
    public  String buyGame(@RequestParam Integer id,@RequestParam Integer game_price,
                           HttpServletRequest request)throws Exception{
        JSONObject json = new JSONObject();
        String username=((User)request.getSession().getAttribute("usersession")).getUsername();
        //查出余额
        int cashLeft = chargeServices.checkCashLeft(username);
        if(cashLeft>=game_price){
            if (shopCarServices.modifyShopCar(id,new Date())){
                int latercash=cashLeft-game_price;
                System.out.println("---------"+latercash);
                //更新余额
                shopCarServices.modifyCashLeft(username,latercash);
                json.put("msg","success");
            }else {
                json.put("msg","error");
            }
        }else {
            json.put("username",username);
            json.put("msg","less");
        }
        return json.toJSONString();
    }

//    多选付款
    @RequestMapping(value = "/buymoregame")
    @ResponseBody
    public String buyMoreGame(@RequestParam String moreid,@RequestParam Integer moregame_price
                                , HttpServletRequest request)throws  Exception{
        JSONObject json  = new JSONObject();
        String username=((User)request.getSession().getAttribute("usersession")).getUsername();
        String ids=moreid.substring(1,moreid.length()-1);
        //查出余额
        int cashLeft = chargeServices.checkCashLeft(username);
        if(cashLeft>=moregame_price){
            if (shopCarServices.modifyMoreShopCar(ids,new Date())){
                int latercash=cashLeft-moregame_price;
                //更新余额
                shopCarServices.modifyCashLeft(username,latercash);
                json.put("msg","success");
            }else {
                json.put("msg","error");
            }
        }else {
            json.put("username",username);
            json.put("msg","less");
        }
        return json.toJSONString();
    }

    //删除订单
    @RequestMapping(value = "/deletegame")
    @ResponseBody
    public  String deleteGame(@RequestParam Integer id)throws Exception{
        JSONObject json = new JSONObject();
        if (shopCarServices.deleteShopCar(id)){
            json.put("msg","success");
        }else {
            json.put("msg","error");
            }
        return json.toJSONString();
    }
}