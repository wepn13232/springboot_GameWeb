package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.ChargeDao;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.ChargeServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ChargeServiceImpl implements ChargeServices {

    @Resource
    private ChargeDao chargeDao;


    //    查询余额
    @Override
    public int checkCashLeft(String username) throws Exception {
        return chargeDao.checkCashLeft(username);
    }
}
