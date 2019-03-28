package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.Game;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

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

    //查询所有游戏（利用分页）
    @Select("select * from Game")
     List<Game> getAllGame(Game game) throws Exception;

}
