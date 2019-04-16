package com.sprinboot.dazuoye.dao;


import com.sprinboot.dazuoye.pojo.Game;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userinfoDao")
@Mapper
public interface UserinfoDao {

    //    查询某个用户拥有的游戏
    @Select("select * from game where game_name=any(select game_name from shopcar where username=#{username} and status='1')")
    List<Game> getGame(@Param("username") String username) throws Exception;


//    查询游戏总价值
    @Select("select game_price from shopcar where username=#{username} and status='1'")
    List<Game> getAllPrice(@Param("username") String username) throws Exception;
}
