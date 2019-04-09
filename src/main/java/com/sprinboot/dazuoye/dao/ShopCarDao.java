package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.ShopCar;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * @author Cedric on 2019/4/8
 * @description ${Description}
 */
@Repository("shopCarDao")
@Mapper
public interface ShopCarDao {
    /**
     * 根据用户名字查询订单
     * @return
     */
    @Select("select * from shopcar where username = #{username}")
    List<ShopCar> findShopCarByUserName(@Param("username") String username) throws Exception;

    //添加订单到购物车
    @Insert("insert into shopcar (username,game_name,game_price,date,status) values(#{username},#{game_name},#{game_price},#{date},#{status})")
    boolean addShopCar(ShopCar shopCar)throws Exception;

    //更新订单状态
    @Update("update shopcar set status = 1 where game_name = #{game_name}")
    boolean modifyShopCar(ShopCar shopCar)throws Exception;
}
