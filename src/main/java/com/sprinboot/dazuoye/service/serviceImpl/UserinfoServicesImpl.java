package com.sprinboot.dazuoye.service.serviceImpl;


import com.sprinboot.dazuoye.dao.UserinfoDao;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.service.UserinfoServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserinfoServicesImpl implements UserinfoServices {

    @Resource
    private UserinfoDao userinfoDao;

//    获取用户已经拥有的游戏
    @Override
    public List<Game> getGameByUser(String username) throws Exception {
        return userinfoDao.getGame(username);
    }
}
