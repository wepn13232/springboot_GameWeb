package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.PageBean;

import java.util.List;

public interface GameServices {
    //    获取总记录数
    int selectCount() throws Exception;

    //    分页操作
    PageBean<Game> findByPage(int currentPage) throws Exception;

//    查询所有游戏
    List<Game> getAllGame(Game game) throws Exception;


//    查看指定id的游戏
    List<Game> selectGameById(int id) throws Exception;
}
