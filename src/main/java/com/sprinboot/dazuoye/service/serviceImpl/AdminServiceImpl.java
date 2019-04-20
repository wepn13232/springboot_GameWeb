package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.AdminDao;
import com.sprinboot.dazuoye.dao.GameMapper;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.service.AdminServices;
import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminServices {
    @Resource
    private AdminDao adminDao;
    @Resource
    private GameMapper gameMapper;


    //修改游戏价格(打折)
    @Override
    public Boolean modifyGamePrice(int game_price, int id) throws Exception {
        HashMap<String,Object> map =new HashMap<String, Object>();
        Game game = adminDao.selectGameInfo(id);
        int save_price =game.getGame_price()-game_price;
        map.put("save_price",save_price);
        map.put("game_price",game_price);
        map.put("id",id);
        return adminDao.modifyGamePrice(map);
    }


    //恢复游戏价格
    @Override
    public Boolean modifyGamePriceBack(int id) throws Exception {
        HashMap<String,Object> map =new HashMap<String, Object>();
        Game game = adminDao.selectGameInfo(id);
        int game_price = game.getGame_price();
        int save_price = game.getSave_price();

        map.put("save_price",0);
        map.put("game_price",game_price+save_price);
        map.put("id",id);
        return adminDao.modifyGamePriceBack(map);
    }

    //查询游戏打折状态
    @Override
    public Boolean checkStatu(int id) throws Exception {
        if (adminDao.checkStatus(id)==1){
            return true;
        } else {
            return false;
        }
    }

    //查询游戏信息
    @Override
    public Game selectGameInfo(int id) throws Exception {
        Game game =adminDao.selectGameInfo(id);
        return game;
    }
}
