package com.sprinboot.dazuoye.service;

import org.springframework.stereotype.Service;

public interface ChargeServices {

//    查询余额
    int checkCashLeft(String username) throws Exception;
}
