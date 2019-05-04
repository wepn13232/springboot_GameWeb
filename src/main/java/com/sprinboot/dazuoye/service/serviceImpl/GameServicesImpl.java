package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.GameMapper;
import com.sprinboot.dazuoye.dao.ShopCarDao;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.PageBean;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.service.GameServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class GameServicesImpl implements GameServices {

    @Resource
    private GameMapper gameMapper;
    @Resource
    private ShopCarDao shopCarDao;

//    查询总游戏数
   /* @Override
    public int selectCount() throws Exception {
        return gameMapper.getCount();
    }*/


//    分页操作
    @Override
    public PageBean<Game> findByPage(int currentPage,String username) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object>();
        PageBean<Game> pageBean = new PageBean<Game>();

//        封装当前页数
        pageBean.setCurrPage(currentPage);
//        每页显示的数据
        int pageSize = 12;
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

        map.put("gamestatus",1);

//      查询该用户的购物车订单
        List<ShopCar> shoplist = shopCarDao.findShopCarByUserName(username);
//        封装每页显示的数据
        List<Game> lists = gameMapper.findByPage(map);
        for (int i=0;i<lists.size();i++){
            for (int j=0;j<shoplist.size();j++){
                //遍历到该购物车拥有的游戏时，查看该订单状态
                if(lists.get(i).getGame_name().equals(shoplist.get(j).getGame_name())){
                    if (shoplist.get(j).getStatus()==0){
                        //未付款
                        lists.get(i).setGame_status(0);
                    }
                    if (shoplist.get(j).getStatus()==1){
                        //已购买
                        lists.get(i).setGame_status(1);
                    }
                }
            }
        }
        pageBean.setLists(lists);
        return pageBean;
    }

//查询所有游戏
    @Override
    public List<Game> getAllGame(Game game) throws Exception {
        return gameMapper.getAllGame(game);
    }


//    获取所有游戏
 /*   @Override
    public List<Game> getAllGame(Game game) throws Exception {
        return gameMapper.getAllGame(game);
    }*/


    
//    查询指定id的游戏详细信息
    @Override
    public List<Game> selectGameById(int id) throws Exception {
        return gameMapper.selectGameById(id);
    }
//查询游戏
    @Override
    public List<Game> selectGameByFormContent(String form_content) throws Exception {
        return gameMapper.selectGameByFormContent(form_content);
    }
}
