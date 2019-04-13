package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Game;

import java.util.List;

public interface UserinfoServices {

//    查询用户已拥有的游戏
    List<Game> getGameByUser(String username) throws Exception;

}
