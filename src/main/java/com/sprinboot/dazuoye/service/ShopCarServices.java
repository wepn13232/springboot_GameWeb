package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.ShopCar;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

/**
 * @author Cedric on 2019/4/8
 * @description ${Description}
 */
public interface ShopCarServices {
    //根据用户名字查询订单
    List<ShopCar> findShopCarByUserName(String username) throws Exception;


    //添加订单到购物车
    boolean addShopCar(ShopCar shopCar) throws Exception;

    //更新订单状态
    boolean modifyShopCar(Integer id, Date buyDate) throws Exception;

    //删除一条订单
    boolean deleteShopCar(@Param("id") Integer id) throws Exception;

    //付款后更新余额
    boolean modifyCashLeft(String username, Integer cashLeft) throws Exception;

    //根据用户名字和游戏名查询订单状态
    Integer findStatusByUserNameAndGameName(String username, String game_name) throws Exception;

    //多选付款购买
    boolean modifyMoreShopCar(String moreid, Date buyDate )throws Exception;

}
