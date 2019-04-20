package com.sprinboot.dazuoye.dao;


import com.sprinboot.dazuoye.pojo.Game;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

@Repository("admin")
@Mapper
public interface AdminDao {
    //修改游戏价格（打折）
    @Update("update game set save_price=#{save_price},status=1,game_price=#{game_price} where id=#{id}")
    Boolean modifyGamePrice( HashMap<String,Object> map) throws Exception;

    //恢复游戏价格（结束打折）
    @Update("update game set save_price=#{save_price},status=0,game_price=#{game_price} where id=#{id}")
    Boolean modifyGamePriceBack( HashMap<String,Object> map) throws Exception;

    //查询游戏是否打折
    @Select("select status from game where id = #{id}")
    int checkStatus(@Param("id")int id) throws Exception;

    //查询游戏信息进行后端处理
    @Select("select * from game where id = #{id}")
    Game selectGameInfo(@Param("id")int id) throws Exception;

    //根据帖子id删除帖子
    @Delete("delete from forum where id = #{id}")
    boolean deleteForumByForumId(@Param("id") int id) throws Exception;
}
