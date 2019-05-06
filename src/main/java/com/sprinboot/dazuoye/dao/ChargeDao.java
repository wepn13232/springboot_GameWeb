package com.sprinboot.dazuoye.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository("charge")
@Mapper
public interface ChargeDao {

//    查询余额
    @Select("select cashLeft from user where username=#{username}")
    int checkCashLeft(@Param("username") String username) throws Exception;
}
