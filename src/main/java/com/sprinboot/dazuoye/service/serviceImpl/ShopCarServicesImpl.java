package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.ShopCarDao;
import com.sprinboot.dazuoye.pojo.ShopCar;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Cedric on 2019/4/8 21:37
 * @filename ShopCarServicesImpl
 * @description
 */
@Service
public class ShopCarServicesImpl implements ShopCarServices {

    @Resource
    private ShopCarDao shopCarDao;

    //根据用户名字查询订单
    @Override
    public List<ShopCar> findShopCarByUserName(String username) throws Exception {
        return shopCarDao.findShopCarByUserName(username);
    }

    //添加订单到购物车
    @Override
    public boolean addShopCar(ShopCar shopCar)throws Exception {
        return shopCarDao.addShopCar(shopCar);
    }

    //更新订单状态
    @Override
    public boolean modifyShopCar(Integer id) throws Exception{
        return shopCarDao.modifyShopCar(id);
    }

    @Override
    public boolean deleteShopCar(Integer id) throws Exception {
        return shopCarDao.deleteShopCar(id);
    }

    @Override
    public boolean modifyCashLeft(String username, Integer cashLeft) throws Exception {
        return shopCarDao.modifyCashLeft(username,cashLeft);
    }
}