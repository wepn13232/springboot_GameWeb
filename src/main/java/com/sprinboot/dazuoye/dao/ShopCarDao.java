package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.ShopCar;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.Date;
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
    @Select("select * from shopcar where username = #{username} order by date desc")
    List<ShopCar> findShopCarByUserName(@Param("username") String username) throws Exception;

    //添加订单到购物车
    @Insert("insert into shopcar (username,game_name,game_price,date,status) values(#{username},#{game_name},#{game_price},#{date},#{status})")
    boolean addShopCar(ShopCar shopCar)throws Exception;

    //更新订单状态
    @Update("update shopcar set status = 1 ,date = #{buyDate} where id = #{id}")
    boolean modifyShopCar(@Param("id") Integer id, Date buyDate)throws Exception;

    //删除一条订单
    @Delete("delete from shopcar where id = #{id}")
    boolean deleteShopCar(@Param("id") Integer id)throws Exception;

    //付款后更新余额
    @Update("update user set cashLeft = #{cashLeft} where username = #{username}")
    boolean modifyCashLeft(String username,Integer cashLeft) throws  Exception;

    //根据用户名字和游戏名查询订单状态
    @Select("select * from shopcar where username = #{username} and game_name = #{game_name}")
    Integer findStatusByUserNameAndGameName(String username,String game_name)throws Exception;
}
