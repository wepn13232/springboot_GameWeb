package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.ShopCar;

import java.util.List;

/**
 * @author Cedric on 2019/4/8
 * @description ${Description}
 */
public interface ShopCarServices {
    //根据用户名字查询订单
    List<ShopCar> findShopCarByUserName(String username) throws Exception;

    //添加订单到购物车
    boolean addShopCar(ShopCar shopCar)throws Exception;

    //更新订单状态
    boolean modifyShopCar(ShopCar shopCar)throws Exception;
}
