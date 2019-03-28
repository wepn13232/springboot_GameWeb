package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.GameMapper;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.PageBean;
import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class GameServicesImpl implements GameServices {

    @Resource
    private GameMapper gameMapper;


//    查询总游戏数
    @Override
    public int selectCount() throws Exception {
        return gameMapper.getCount();
    }


//    分页操作
    @Override
    public PageBean<Game> findByPage(int currentPage) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object>();
        PageBean<Game> pageBean = new PageBean<Game>();

//        封装当前页数
        pageBean.setCurrPage(currentPage);
//        每页显示的数据
        int pageSize = 16;
        pageBean.setPageSize(pageSize);
//        封装总记录数
        int totalCount = gameMapper.getCount();
        pageBean.setTotalCount(totalCount);

//        封装总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());

//        封装每页显示的数据
        List<Game> lists = gameMapper.findByPage(map);
        pageBean.setLists(lists);

        return pageBean;
    }

//    获取所有游戏
    @Override
    public List<Game> getAllGame(Game game) throws Exception {
        return gameMapper.getAllGame(game);
    }
}
