package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.Game;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Repository("gameMapper")
@Mapper
public interface GameMapper {

    //查询游戏总数
    @Select("select count(*) from Game")
    int getCount() throws Exception;

    //    分页操作
    @Select("select * from Game limit #{start},#{size}")
     List<Game> findByPage(HashMap<String, Object> map) throws Exception;

    //查询所有游戏
    @Select("select * from Game")
     List<Game> getAllGame(Game game) throws Exception;

//    查看指定游戏信息
    @Select("select * from Game where id=#{id}")
    List<Game> selectGameById(@Param("id") Integer id) throws Exception;

}
