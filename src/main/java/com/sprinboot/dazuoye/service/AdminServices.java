package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Game;

import java.util.Date;


public interface AdminServices {
    //修改游戏价格(打折)
    Boolean modifyGamePrice(int game_price, int id,Date closing_date) throws Exception;

    //恢复游戏价格
    Boolean modifyGamePriceBack(int id) throws Exception;

    //查询游戏是否打折
    Boolean checkStatu(int id) throws Exception;

    //查询游戏信息
    Game selectGameInfo(int id) throws Exception;

    //根据帖子id删除帖子
    boolean deleteForumByForumId(int id) throws Exception;
}
